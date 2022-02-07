using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.Security.Cryptography;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.IO;
using System.Web.Script.Serialization;

namespace _203768E_AS_Assignment
{
    public partial class Register : System.Web.UI.Page
    {
        string MYDBConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MYDBConnection"].ConnectionString;
        static string finalHash;
        static string salt;
        byte[] Key;
        byte[] IV;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            ValidateCaptcha();
            string pwd = Password.Text.Trim();
            //Generate random "salt"
            RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
            byte[] saltByte = new byte[8];

            rng.GetBytes(saltByte);
            salt = Convert.ToBase64String(saltByte);
            
            SHA512Managed hashing = new SHA512Managed();
            string pwdWithSalt = pwd + salt;
            byte[] hashWithSalt = hashing.ComputeHash(Encoding.UTF8.GetBytes(pwdWithSalt));
            finalHash = Convert.ToBase64String(hashWithSalt);
            RijndaelManaged cipher = new RijndaelManaged();
            cipher.GenerateKey();
            Key = cipher.Key;
            IV = cipher.IV;
            createAccount();
            Response.Redirect("Login.aspx", false);
        }

        protected void createAccount()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(MYDBConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO [User] VALUES(@fname, @lname, @credit, @email, @password, @DOB, @picture, @passwordHash, @passwordSalt)"))
                {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.CommandType = CommandType.Text;
                            cmd.Parameters.AddWithValue("@fname", Fname.Text.Trim());
                            cmd.Parameters.AddWithValue("@lname", Lname.Text.Trim());
                            cmd.Parameters.AddWithValue("@credit", encryptCreditCard(credit.Text.Trim()));
                            cmd.Parameters.AddWithValue("@email", Email.Text.Trim());
                            cmd.Parameters.AddWithValue("@password", Password.Text.Trim());
                            cmd.Parameters.AddWithValue("@DOB", DOB.Text.Trim());
                            //skip pic
                            cmd.Parameters.AddWithValue("@picture", credit.Text.Trim());
                            cmd.Parameters.AddWithValue("@passwordHash", finalHash);
                            cmd.Parameters.AddWithValue("@passwordSalt", salt);

                            cmd.Connection = con;
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
        }

        protected string encryptCreditCard(string credit)
        {
            byte[] cipherText = null;
            string finalText = null; 
            try
            {
                RijndaelManaged cipher = new RijndaelManaged();
                cipher.IV = IV;
                cipher.Key = Key;
                ICryptoTransform encryptTransform = cipher.CreateEncryptor();

                byte[] plainText = Encoding.UTF8.GetBytes(credit);
                cipherText = encryptTransform.TransformFinalBlock(plainText, 0, plainText.Length);
                finalText = Convert.ToBase64String(cipherText);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }

            return finalText;
        }

        public class MyObject
        {
            public string success { get; set; }
        }

        public bool ValidateCaptcha()
        {
            bool result = true;
            string captchaResponse = Request.Form["g-recaptcha-response"];
            HttpWebRequest req = (HttpWebRequest)WebRequest.Create(
                "https://www.google.com/recaptcha/api/siteverify?secret=6Lcc3mEeAAAAAGVpOkNhYvuA_-G5U2i21gP-VFFj &response=" + captchaResponse);

            using (WebResponse wResponse = req.GetResponse())
            {
                using (StreamReader readStream = new StreamReader(wResponse.GetResponseStream()))
                {
                    string jsonResponse = readStream.ReadToEnd();                 
                    JavaScriptSerializer js = new JavaScriptSerializer();
                    MyObject jsonObject = js.Deserialize<MyObject>(jsonResponse);
                    result = Convert.ToBoolean(jsonObject.success);
                }
            }
            return result;
        }
    }

}
