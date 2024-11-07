
const passphrase = 'your-secure-passphrase';


function encryptText(text) {
    const encrypted = CryptoJS.AES.encrypt(text, passphrase).toString();
    console.log('Encrypted text:', encrypted);
    return encrypted;
}


function decryptText(encryptedText) {
    const bytes = CryptoJS.AES.decrypt(encryptedText, passphrase);
    const decrypted = bytes.toString(CryptoJS.enc.Utf8);
    console.log('Decrypted text:', decrypted);
    return decrypted;
}


const originalText = "Sensitive data you want to protect";
const encryptedText = encryptText(originalText);  
const decryptedText = decryptText(encryptedText); 
