/**
*@author		: Rey Angelo Magdaong 
*@description	: Implementation of Blowfish Algorithm (ECB) for Encryption and Decryption.
*			      Code is derived from a javascript implmentation http://sladex.org/blowfish.js/
*				  Feel free to update.
*@date			: Mar.27,2018 
*/
@isTest
public class Blowfish_Test {
    @isTest
    public static void testEncryption(){
        String key ='1234';
        String message = 'Hello World!';        
        String encryptedMessage = Blowfish.encrypt(message,key);
        system.debug('encryptedMessage: ' + encryptedMessage);   
        
        String decryptedMessage = Blowfish.decrypt(encryptedMessage,key,message.length());
        system.debug('decryptedMessage: ' + decryptedMessage);
        System.assert(decryptedMessage==message);
    }
}