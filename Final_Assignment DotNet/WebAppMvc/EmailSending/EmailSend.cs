using MailKit.Net.Smtp;
using MimeKit;


namespace WebAppMvc.EmailSending
{
    public class EmailSend
    {
        public void SendMailMethod(string CustomerName, string recieverMail)
        {
            MimeMessage message = new MimeMessage();
            message.From.Add(new MailboxAddress("Registered", "Ashokveera444@gmail.com"));
            message.To.Add(MailboxAddress.Parse(recieverMail));

            message.Subject = "Welcome";
            message.Body = new TextPart("plain")
            {
                Text = $"Dear {CustomerName}, Thanks for registering with us.We wiil Approve you soon to use Shopping Mall Services.To Login Click this https://localhost:7018/Identity/Account/Login"
            };
            string data= "arhlimzuqmcjddpm";
            #region private data
            string email = "Ashokveera444@gmail.com";
            string password =data ;
            #endregion

            SmtpClient smtpClient = new SmtpClient();
            try
            {
                smtpClient.Connect("smtp.gmail.com", 465, true);
                smtpClient.Authenticate(email, password);
                smtpClient.Send(message);
                Console.WriteLine($"!!Thanks dear {CustomerName} for registration with us!!");
                Console.WriteLine($"A 'Welcome Message' is just sent to your registered mail id from '{email}'");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                smtpClient.Disconnect(true);
                smtpClient.Dispose();
            }
        }
    }
}
