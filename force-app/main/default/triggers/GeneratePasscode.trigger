trigger GeneratePasscode on Engaged_Couple__c (before insert) {
    for (Engaged_Couple__c e : Trigger.New) {
        
        final String chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz';
        String pass = '';
        while (pass.length() < 7) {
           Integer idx = Math.mod(Math.abs(Crypto.getRandomInteger()), chars.length());
           pass += chars.substring(idx, idx+1);
        }
        e.Passcode__c = pass;
        system.debug('##########' + pass);
 
    }
}