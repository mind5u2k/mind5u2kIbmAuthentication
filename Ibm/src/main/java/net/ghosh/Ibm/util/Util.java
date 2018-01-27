package net.ghosh.Ibm.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class Util {

	public static final String ROLE_SUPERADMIN = "Super Admin";
	public static final String ROLE_ADMIN = "Admin";
	public static final String ROLE_PASS_OWNER = "Password Owner";
	public static final String ROLE_AUTH_READERS = "Authorized Readers";
	public static final String ROLE_PLATFORM_HEAD = "Platform Head";
	public static final String ROLE_COMPLIANCE = "Compliance";
	public static final String ROLE_CUSTOMER_DELEGATE = "Customer DPE/Delegate";
	public static final String ROLE_W3_MANAGER = "W3 Manager";

	public static List<String> getSuperAdminRole() {
		List<String> roles = new ArrayList<String>();
		roles.add(ROLE_ADMIN);
		return roles;
	}

	public static List<String> getAllRoles() {
		List<String> roles = new ArrayList<String>();
		roles.add(ROLE_ADMIN);
		roles.add(ROLE_PASS_OWNER);
		return roles;
	}

	public static final String STATUS_CHECKEDIN = "Checked In";
	public static final String STATUS_CHECKEDOUT = "Checked Out";
	public static final String STATUS_PENDING = "Pending";
	public static final String STATUS_APPROVED = "Approved";
	public static final String STATUS_VALIDATED = "Validated";

	public static final String HISTORY_TYPE_PASSWORD = "Password";
	public static final String HISTORY_TYPE_DOCUMENT = "Document";

	public static final String HISTORY_STATUS_NEWPASS = "New Password set by";
	public static final String HISTORY_STATUS_CHANGEPASS = "Password changed by";
	public static final String HISTORY_STATUS_CHECKEDOUT = "Password Viewed and Checked Out by";
	public static final String HISTORY_STATUS_CHICKEDIN = "Password Changed and Checked In by";

	public static final String INTERACTIVE = "Interactive";
	public static final String NON_INTERACTIVE = "Non Interactive";

	public static final String ROLE_ASSIGNED = "Yes";
	public static final String ROLE_NOT_ASSIGNED = "No";

	public static int getDifferenceInDate(Date date1, Date date2) {
		int diffInDays = (int) ((date2.getTime() - date1.getTime()) / (1000 * 60 * 60 * 24));
		return diffInDays;
	}

	public static <T> List<T> castList(Class<? extends T> clazz, Collection<?> c) {
		List<T> r = new ArrayList<T>(c.size());
		for (Object o : c)
			r.add(clazz.cast(o));
		return r;
	}

	/*-public static String encryptPassword(String password) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPassword = passwordEncoder.encode(password);
		return hashedPassword;
	}

	public static Boolean checkPassword(String password, String encodedPassword) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		boolean checkPassword = passwordEncoder.matches(password,
				encodedPassword);
		return checkPassword;
	}*/

	public static String writeToFile(InputStream uploadedInputStream,
			String uploadedFileLocation, String fileName) {
		File file;
		FileOutputStream fop;
		String path;
		try {
			file = new File(uploadedFileLocation);

			int read = 0;
			byte[] bytes = new byte[1024];
			if (!file.exists()) {
				file.mkdirs();
				path = uploadedFileLocation + "/" + fileName;
				fop = new FileOutputStream(path);
				while ((read = uploadedInputStream.read(bytes)) != -1) {

					fop.write(bytes, 0, read);
				}
				fop.flush();
				fop.close();
			} else {
				path = uploadedFileLocation + "/" + fileName;
				fop = new FileOutputStream(path);
				while ((read = uploadedInputStream.read(bytes)) != -1) {

					fop.write(bytes, 0, read);
				}

				fop.flush();
				fop.close();
			}

		} catch (IOException e) {

			e.printStackTrace();
		}
		return "success";
	}

	private static byte[] key = { 0x2d, 0x2a, 0x2d, 0x42, 0x55, 0x49, 0x4c,
			0x44, 0x41, 0x43, 0x4f, 0x44, 0x45, 0x2d, 0x2a, 0x2d };

	public static String encrypt(String plainText) {
		try {
			Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
			SecretKeySpec secretKey = new SecretKeySpec(key, "AES");
			cipher.init(Cipher.ENCRYPT_MODE, secretKey);
			byte[] cipherText = cipher.doFinal(plainText.getBytes("UTF8"));
			String encryptedString = new String(Base64.getEncoder().encode(
					cipherText), "UTF-8");
			return encryptedString;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public static String decrypt(String encryptedText) {
		try {
			Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5PADDING");
			SecretKeySpec secretKey = new SecretKeySpec(key, "AES");
			cipher.init(Cipher.DECRYPT_MODE, secretKey);
			byte[] cipherText = Base64.getDecoder().decode(
					encryptedText.getBytes("UTF8"));
			String decryptedString = new String(cipher.doFinal(cipherText),
					"UTF-8");
			return decryptedString;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public static void main(String arg[]) {

		int num[] = { 1, 2, 40, 30, 50, 20, 34, 100 };
		int search = 2;

		for (int i = 1; i < num.length; i++) {
			if (num[i] != search) {
				continue;

			}
			if (num[i] == search) {
				System.out.println("data found");
				break;
			}
		}

	}
	/*-String pass = "rfrfrf";
	String encodedPassword = encrypt(pass);
	System.out.println("encrypted password is [" + encodedPassword + "]");

	System.out.println("[" + pass.hashCode() + "]");
	String decryptPass = decrypt(encodedPassword);
	System.out.println("decrypted password [" + decryptPass + "]");*/

	/*
	 * SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy"); Calendar c =
	 * Calendar.getInstance(); c.setTime(new Date()); // Now use today date.
	 * c.add(Calendar.DATE, 30); // Adding 5 days String output =
	 * sdf.format(c.getTime()); System.out.println(output);
	 */

}