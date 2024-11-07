using System;
using System.IO;
using System.Security.Cryptography;
using System.Text;

namespace FileSecurity
{
    class Program
    {
        private static readonly string Key = "
        private static readonly string IV = "

        public static void Main()
        {
            string filePath = "path/to/your/script.ps1"; // Change to your file path
            string encryptedFilePath = filePath + ".enc";
            string decryptedFilePath = filePath + ".dec";

            EncryptFile(filePath, encryptedFilePath);
            Console.WriteLine("File encrypted successfully!");

            DecryptFile(encryptedFilePath, decryptedFilePath);
            Console.WriteLine("File decrypted successfully!");
        }

        public static void EncryptFile(string inputFilePath, string outputFilePath)
        {
            using (Aes aes = Aes.Create())
            {
                aes.Key = Encoding.UTF8.GetBytes(Key);
                aes.IV = Encoding.UTF8.GetBytes(IV);

                using (FileStream fsOutput = new FileStream(outputFilePath, FileMode.Create))
                using (CryptoStream cs = new CryptoStream(fsOutput, aes.CreateEncryptor(), CryptoStreamMode.Write))
                using (FileStream fsInput = new FileStream(inputFilePath, FileMode.Open))
                {
                    fsInput.CopyTo(cs);
                }
            }
        }

        public static void DecryptFile(string inputFilePath, string outputFilePath)
        {
            using (Aes aes = Aes.Create())
            {
                aes.Key = Encoding.UTF8.GetBytes(Key);
                aes.IV = Encoding.UTF8.GetBytes(IV);

                using (FileStream fsInput = new FileStream(inputFilePath, FileMode.Open))
                using (CryptoStream cs = new CryptoStream(fsInput, aes.CreateDecryptor(), CryptoStreamMode.Read))
                using (FileStream fsOutput = new FileStream(outputFilePath, FileMode.Create))
                {
                    cs.CopyTo(fsOutput);
                }
            }
        }
    }
}
