# Salesforce Code Snippets
## Blowfish Encryption/Decryption (ECB)
```
    String key ='1234';
    String message = 'Hello World!';        
    String encryptedMessage = Blowfish.encrypt(message,key);
    system.debug('encryptedMessage: ' + encryptedMessage);
    //output 'encryptedMessage: 22EBD5F7298FCF94C40F26694547C9F1'
    
    String decryptedMessage = Blowfish.decrypt(encryptedMessage,key,12);
    system.debug('decryptedMessage: ' + decryptedMessage);
    System.assert(decryptedMessage==message);
    //output 'decryptedMessage: Hello World!'
```
