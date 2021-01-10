import java.io.*;
import java.security.*;
import java.util.Formatter;


public class ComputeSHA{
    public static void main(String args[]) throws IOException{


      try {
        File f = new File(args[0]);
        FileInputStream fis = new FileInputStream(args[0]);
        MessageDigest md = MessageDigest.getInstance("SHA-1");

        byte[] bytebuffer = new byte[(int)f.length()];
        fis.read(bytebuffer);
        md.update(bytebuffer);
        byte[] byteData = md.digest();

  		  StringBuffer hexString = new StringBuffer();
        for(int i = 0; i < byteData.length; i++){
    			String hex = Integer.toHexString(0xFF & byteData[i]);
    			if(hex.length() == 1)
    				hexString.append('0');
    			hexString.append(hex);
  		  }
        String result = hexString.toString();
        System.out.println(result);
  		} catch(Exception e) {
  			System.out.println("Exception: " + e);
  		}


    }
}
