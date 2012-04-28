package com.zbkj.servlet;
public class Base16 {    
    
    public static String hex2Str(String theHex) {    
        byte[] theByte = new byte[theHex.length() / 2];    
    
        for (int i = 0; i < theHex.length(); i += 2) {    
            theByte[i / 2 ] = Integer.decode("0X" + theHex.substring(i, i + 2)).byteValue();    
        }    
          
        return new String(theByte);   
    }    
    
    public static String str2Hex(String theStr) {    
        byte[] bytes;    
        int tmp;    
        String tmpStr;    
        bytes = theStr.getBytes();    
        StringBuffer result = new StringBuffer(bytes.length * 2);    
          
        for (int i = 0; i < bytes.length; i++) {    
            tmp = bytes[i];    
            if (tmp < 0) {    
                tmp += 256;    
            }    
              
            tmpStr = Integer.toHexString(tmp);    
            if (tmpStr.length() == 1) {  
                result.append("0");  
            }  
              
            result.append(tmpStr);  
        }    
          
        return result.toString();    
    }   
} 