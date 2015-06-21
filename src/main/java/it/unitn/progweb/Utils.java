package it.unitn.progweb;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Logger;

/**
 * classe per fare l'hash di una password
 */
public class Utils {
    final private static Logger logger = Logger.getLogger(Utils.class.getName());
    final private static char[] hexArray = "0123456789ABCDEF".toCharArray();

    private static final String bytesToHex(byte[] bytes) {
        char[] hexChars = new char[bytes.length * 2];
        for (int j = 0; j < bytes.length; j++) {
            int v = bytes[j] & 0xFF;
            hexChars[j * 2] = hexArray[v >>> 4];
            hexChars[j * 2 + 1] = hexArray[v & 0x0F];
        }
        return new String(hexChars);
    }

    public static final String sha512(final String cleartext) {
        final MessageDigest hasher;
        try {
            hasher = MessageDigest.getInstance("SHA-512");
        } catch (NoSuchAlgorithmException exc) {
            logger.severe("no sha512, password will be saved in cleartext");
            return cleartext;
        }
        final byte[] digest = hasher.digest(cleartext.getBytes());
        return Utils.bytesToHex(digest);
    }
}
