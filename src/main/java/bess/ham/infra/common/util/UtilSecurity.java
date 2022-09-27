package bess.ham.infra.common.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class UtilSecurity {
	
	/*
	 * 1.암호화(단방향) ex)pw 암호화전 -> 암호화후(o) 암호화후 -> 암호화전(x)
	 * 
	 * 2.복호화(양방향) ex)주민번호 암호화전 -> 암호화후(o) 암호화후 -> 암호화전(o)
	 */		
    public static String encryptSha256(String text) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        md.update(text.getBytes());

        return bytesToHex(md.digest());
    }

    private static  String bytesToHex(byte[] bytes) {
        StringBuilder builder = new StringBuilder();
        for (byte b : bytes) {
            builder.append(String.format("%02x", b));
        }
        return builder.toString();
    }


}
