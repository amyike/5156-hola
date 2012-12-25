package com.hola.common;

/**
 * <p>
 * Title: quwdms
 * </p>
 * <p>
 * Description: quwdms
 * </p>
 * <p>
 * Copyright: Copyright (c) 2003
 * </p>
 * <p>
 * Company: QuGroup
 * </p>
 * 
 * @author qujianyong@vip.sina.com
 * @version 1.0
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Writer;

public class Base64 {

	private static final char S_BASE64CHAR[] = { 'A', 'B', 'C', 'D', 'E', 'F',
			'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S',
			'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f',
			'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's',
			't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5',
			'6', '7', '8', '9', '+', '/' };

	private static final byte BASE_BTYE[] = { 'A', 'B', 'C', 'D', 'E', 'F',
			'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S',
			'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f',
			'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's',
			't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5',
			'6', '7', '8', '9', '+', '/' };

	private static final char S_BASE64PAD = 61;

	private static final byte S_DECODETABLE[];

	public Base64() {
	}

	public static void main(String[] args) {
		try {
			/*
			 * //byte[] buff = new byte[200 * 1024 * 1024]; FileInputStream fis
			 * = new FileInputStream("G:\\CD-ROMImgs\\umss.iso");
			 * 
			 * FileOutputStream fos = new FileOutputStream("d:\\tmp.data");
			 * 
			 * Thread.sleep(10000);
			 * 
			 * System.out.println("begin encode at:" +
			 * System.currentTimeMillis()); encode(fis, fos);
			 * System.out.println("end encode at:" +
			 * System.currentTimeMillis()); fis.close(); fos.close();
			 * 
			 * fis = new FileInputStream("d:\\tmp.data"); int len =
			 * fis.read(buff); fis.close(); String data = new String(buff, 0,
			 * len); fos = new FileOutputStream("d:\\2.rar"); decode(data, fos);
			 * fos.close();
			 */

			System.out.println(Base64.decode("04mvvdpsqp6pbbj742dbbjepa7"));

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void EncodeIs2Os_old(InputStream is, OutputStream os)
			throws Exception {
		byte[] buff = new byte[4];
		byte[] crlf = { '\r', '\n' };

		int flushbyte = 0;
		int crlfbyte = 0;

		int j = 0;
		int i = 0;
		int k = 0;
		while (true) {
			j = 0;
			while (j < 3) {
				i = is.read(buff, j, 3 - j);
				if (i < 0)
					break;
				j += i;
			}
			if (j == 3) {
				k = ((buff[0] & 0xff) << 16) + ((buff[1] & 0xff) << 8)
						+ (buff[2] & 0xff);
				buff[0] = BASE_BTYE[k >> 18];
				buff[1] = BASE_BTYE[k >> 12 & 0x3f];
				buff[2] = BASE_BTYE[k >> 6 & 0x3f];
				buff[3] = BASE_BTYE[k & 0x3f];
			} else if (j == 2) {
				k = buff[0] & 0xff;
				buff[0] = BASE_BTYE[k >> 2];
				buff[1] = BASE_BTYE[k << 4 & 0x3f];
				buff[2] = 61;
				buff[3] = 61;
			} else if (j == 1) {
				k = ((buff[0] & 0xff) << 8) + (buff[1] & 0xff);
				buff[0] = BASE_BTYE[k >> 10];
				buff[1] = BASE_BTYE[k >> 4 & 0x3f];
				buff[2] = BASE_BTYE[k << 2 & 0x3f];
				buff[3] = 61;
			}
			os.write(buff, 0, 4);
			crlfbyte += 4;
			flushbyte += 4;
			if (crlfbyte == 76) {
				os.write(crlf, 0, 2);
				crlfbyte = 0;
			}
			if (flushbyte == 16384) {
				os.flush();
				flushbyte = 0;
			}
			if (j != 3)
				break;
		}
		os.write(crlf, 0, 2);
		os.flush();
	}

	public static void EncodeIs2Os_3(InputStream is, OutputStream os)
			throws Exception {
		int bufflen = 9216;
		int readlen = 0;
		byte[] buff = new byte[bufflen];
		byte[] crlf = { '\r', '\n' };
		byte[] dest = new byte[4];
		int flushbyte = 0;
		int crlfbyte = 0;

		int j = 0;
		int i = 0;
		int k = 0;
		int l = 0;
		int p = 0;
		while (true) {
			readlen = 0;
			while (readlen < bufflen) {
				i = is.read(buff, readlen, bufflen - readlen);
				if (i < 0)
					break;
				readlen += i;
			}

			l = readlen % 3;
			p = readlen - l;
			int m = 0;
			for (i = 0; i < p; i += 3) {
				k = ((buff[i] & 0xff) << 16) + ((buff[i + 1] & 0xff) << 8)
						+ (buff[i + 2] & 0xff);
				dest[0] = BASE_BTYE[k >> 18];
				dest[1] = BASE_BTYE[k >> 12 & 0x3f];
				dest[2] = BASE_BTYE[k >> 6 & 0x3f];
				dest[3] = BASE_BTYE[k & 0x3f];
				os.write(dest, 0, 4);
				crlfbyte += 4;
				flushbyte += 4;
				if (crlfbyte == 76) {
					os.write(crlf, 0, 2);
					crlfbyte = 0;
				}
				if (flushbyte == 16384) {
					os.flush();
					flushbyte = 0;
				}
			}
			if (l == 1) {
				k = buff[p] & 0xff;
				dest[0] = BASE_BTYE[k >> 2];
				dest[1] = BASE_BTYE[k << 4 & 0x3f];
				dest[2] = 61;
				dest[3] = 61;
				os.write(buff, 0, 4);
				crlfbyte += 4;
				flushbyte += 4;
				if (crlfbyte == 76) {
					os.write(crlf, 0, 2);
					crlfbyte = 0;
				}
				if (flushbyte == 16384) {
					os.flush();
					flushbyte = 0;
				}

			} else if (l == 2) {
				k = ((buff[p] & 0xff) << 8) + (buff[p + 1] & 0xff);
				buff[0] = BASE_BTYE[k >> 10];
				buff[1] = BASE_BTYE[k >> 4 & 0x3f];
				buff[2] = BASE_BTYE[k << 2 & 0x3f];
				buff[3] = 61;
				os.write(buff, 0, 4);
				crlfbyte += 4;
				flushbyte += 4;
				if (crlfbyte == 76) {
					os.write(crlf, 0, 2);
					crlfbyte = 0;
				}
				if (flushbyte == 16384) {
					os.flush();
					flushbyte = 0;
				}
			}
			if (readlen < bufflen)
				break;
		}
		os.write(crlf, 0, 2);
		os.flush();
	}

	public static void encode(InputStream is, OutputStream os) throws Exception {
		int bufflen = 9216;
		int destLen = bufflen * 4 / 3;
		;
		int readlen = 0;
		byte[] buff = new byte[bufflen];
		byte[] crlf = { '\r', '\n' };
		int line = destLen / 74 + 2;
		int maxbuff = destLen + line * 2;
		byte[] dest = new byte[destLen + line * 2 + 4];

		int writeTime = 0;
		int crlfbyte = 0;

		int j = 0;
		int i = 0;
		int k = 0;
		int l = 0;
		int p = 0;
		int d = 0;
		destLen = 0;
		while (true) {
			readlen = 0;
			while (readlen < bufflen) {
				i = is.read(buff, readlen, bufflen - readlen);
				if (i < 0)
					break;
				readlen += i;
			}

			l = readlen % 3;
			p = readlen - l;
			int m = 0;

			for (i = 0; i < p; i += 3) {
				k = ((buff[i] & 0xff) << 16) + ((buff[i + 1] & 0xff) << 8)
						+ (buff[i + 2] & 0xff);
				dest[destLen++] = BASE_BTYE[k >> 18];
				dest[destLen++] = BASE_BTYE[k >> 12 & 0x3f];
				dest[destLen++] = BASE_BTYE[k >> 6 & 0x3f];
				dest[destLen++] = BASE_BTYE[k & 0x3f];
				crlfbyte += 4;

				if (crlfbyte >= 76) {
					dest[destLen++] = '\r';
					dest[destLen++] = '\n';
					crlfbyte = 0;
				}

				if (destLen >= maxbuff) {
					os.write(dest, 0, destLen);
					destLen = 0;
					writeTime++;
				}

				if (writeTime > 10) {
					os.flush();
					writeTime = 0;
				}
			}

			if (l == 1) {
				k = buff[p] & 0xff;
				dest[destLen++] = BASE_BTYE[k >> 2];
				dest[destLen++] = BASE_BTYE[k << 4 & 0x3f];
				dest[destLen++] = 61;
				dest[destLen++] = 61;
				crlfbyte += 4;
				if (crlfbyte >= 76) {
					dest[destLen++] = '\r';
					dest[destLen++] = '\n';
					crlfbyte = 0;
				}

				if (destLen >= maxbuff) {
					os.write(dest, 0, destLen);
					destLen = 0;
					writeTime++;
				}

				if (writeTime > 10) {
					os.flush();
					writeTime = 0;
				}

			} else if (l == 2) {
				k = ((buff[p] & 0xff) << 8) + (buff[p + 1] & 0xff);
				dest[destLen++] = BASE_BTYE[k >> 10];
				dest[destLen++] = BASE_BTYE[k >> 4 & 0x3f];
				dest[destLen++] = BASE_BTYE[k << 2 & 0x3f];
				dest[destLen++] = 61;
				crlfbyte += 4;
				if (crlfbyte >= 76) {
					dest[destLen++] = '\r';
					dest[destLen++] = '\n';
					crlfbyte = 0;
				}

				if (destLen >= maxbuff) {
					os.write(dest, 0, destLen);
					destLen = 0;
					writeTime++;
				}

				if (writeTime > 10) {
					os.flush();
					writeTime = 0;
				}
			}
			if (readlen < bufflen)
				break;
		}
		if (destLen > 0) {
			os.write(dest, 0, destLen);
		}
		os.write(crlf, 0, 2);
		os.flush();
	}

	private static int decode0(char ac[], byte abyte0[], int i) {
		byte byte0 = 3;
		if (ac[3] == '=') {
			byte0 = 2;
		}
		if (ac[2] == '=') {
			byte0 = 1;
		}
		byte byte1 = S_DECODETABLE[ac[0]];
		byte byte2 = S_DECODETABLE[ac[1]];
		byte byte3 = S_DECODETABLE[ac[2]];
		byte byte4 = S_DECODETABLE[ac[3]];
		switch (byte0) {
		case 1: // '\001'
			abyte0[i] = (byte) (byte1 << 2 & 0xfc | byte2 >> 4 & 3);
			return 1;

		case 2: // '\002'
			abyte0[i++] = (byte) (byte1 << 2 & 0xfc | byte2 >> 4 & 3);
			abyte0[i] = (byte) (byte2 << 4 & 0xf0 | byte3 >> 2 & 0xf);
			return 2;

		case 3: // '\003'
			abyte0[i++] = (byte) (byte1 << 2 & 0xfc | byte2 >> 4 & 3);
			abyte0[i++] = (byte) (byte2 << 4 & 0xf0 | byte3 >> 2 & 0xf);
			abyte0[i] = (byte) (byte3 << 6 & 0xc0 | byte4 & 0x3f);
			return 3;
		}
		throw new RuntimeException("Internal Errror");
	}

	public static byte[] decode(char ac[], int i, int j) {
		char ac1[] = new char[4];
		int k = 0;
		byte abyte0[] = new byte[(j / 4) * 3 + 3];
		int l = 0;
		for (int i1 = i; i1 < i + j; i1++) {
			char c = ac[i1];
			if (c == '=' || c < S_DECODETABLE.length && S_DECODETABLE[c] != 127) {
				ac1[k++] = c;
				if (k == ac1.length) {
					k = 0;
					l += decode0(ac1, abyte0, l);
				}
			}
		}

		if (l == abyte0.length) {
			return abyte0;
		} else {
			byte abyte1[] = new byte[l];
			System.arraycopy(abyte0, 0, abyte1, 0, l);
			return abyte1;
		}
	}

	public static byte[] decode(String s) {
		char ac[] = new char[4];
		int i = 0;
		byte abyte0[] = new byte[(s.length() / 4) * 3 + 3];
		int j = 0;
		for (int k = 0; k < s.length(); k++) {
			char c = s.charAt(k);
			if (c == '=' || c < S_DECODETABLE.length && S_DECODETABLE[c] != 127) {
				ac[i++] = c;
				if (i == ac.length) {
					i = 0;
					j += decode0(ac, abyte0, j);
				}
			}
		}

		if (j == abyte0.length) {
			return abyte0;
		} else {
			byte abyte1[] = new byte[j];
			System.arraycopy(abyte0, 0, abyte1, 0, j);
			return abyte1;
		}
	}

	public static void decode(char ac[], int i, int j, OutputStream outputstream)
			throws IOException {
		char ac1[] = new char[4];
		int k = 0;
		byte abyte0[] = new byte[3];
		for (int l = i; l < i + j; l++) {
			char c = ac[l];
			if (c == '=' || c < S_DECODETABLE.length && S_DECODETABLE[c] != 127) {
				ac1[k++] = c;
				if (k == ac1.length) {
					k = 0;
					int i1 = decode0(ac1, abyte0, 0);
					outputstream.write(abyte0, 0, i1);
				}
			}
		}

	}

	public static void decode(String s, OutputStream outputstream)
			throws IOException {
		char ac[] = new char[4];
		int i = 0;
		byte abyte0[] = new byte[3];
		for (int j = 0; j < s.length(); j++) {
			char c = s.charAt(j);
			if (c == '=' || c < S_DECODETABLE.length && S_DECODETABLE[c] != 127) {
				ac[i++] = c;
				if (i == ac.length) {
					i = 0;
					int k = decode0(ac, abyte0, 0);
					outputstream.write(abyte0, 0, k);
				}
			}
		}

	}

	public static String encode(byte abyte0[]) {
		return encode(abyte0, 0, abyte0.length);
	}

	public static String encode(byte abyte0[], int i, int j) {
		if (j <= 0) {
			return "";
		}
		char ac[] = new char[(j / 3) * 4 + 4];
		int k = i;
		int l = 0;
		int i1;
		for (i1 = j - i; i1 >= 3; i1 -= 3) {
			int j1 = ((abyte0[k] & 0xff) << 16) + ((abyte0[k + 1] & 0xff) << 8)
					+ (abyte0[k + 2] & 0xff);
			ac[l++] = S_BASE64CHAR[j1 >> 18];
			ac[l++] = S_BASE64CHAR[j1 >> 12 & 0x3f];
			ac[l++] = S_BASE64CHAR[j1 >> 6 & 0x3f];
			ac[l++] = S_BASE64CHAR[j1 & 0x3f];
			k += 3;
		}

		if (i1 == 1) {
			int k1 = abyte0[k] & 0xff;
			ac[l++] = S_BASE64CHAR[k1 >> 2];
			ac[l++] = S_BASE64CHAR[k1 << 4 & 0x3f];
			ac[l++] = '=';
			ac[l++] = '=';
		} else if (i1 == 2) {
			int l1 = ((abyte0[k] & 0xff) << 8) + (abyte0[k + 1] & 0xff);
			ac[l++] = S_BASE64CHAR[l1 >> 10];
			ac[l++] = S_BASE64CHAR[l1 >> 4 & 0x3f];
			ac[l++] = S_BASE64CHAR[l1 << 2 & 0x3f];
			ac[l++] = '=';
		}
		return new String(ac, 0, l);
	}

	public static void encode(byte abyte0[], int i, int j,
			OutputStream outputstream) throws IOException {
		if (j <= 0) {
			return;
		}
		byte abyte1[] = new byte[4];
		int k = i;
		int l;
		for (l = j - i; l >= 3; l -= 3) {
			int i1 = ((abyte0[k] & 0xff) << 16) + ((abyte0[k + 1] & 0xff) << 8)
					+ (abyte0[k + 2] & 0xff);
			abyte1[0] = (byte) S_BASE64CHAR[i1 >> 18];
			abyte1[1] = (byte) S_BASE64CHAR[i1 >> 12 & 0x3f];
			abyte1[2] = (byte) S_BASE64CHAR[i1 >> 6 & 0x3f];
			abyte1[3] = (byte) S_BASE64CHAR[i1 & 0x3f];
			outputstream.write(abyte1, 0, 4);
			k += 3;
		}

		if (l == 1) {
			int j1 = abyte0[k] & 0xff;
			abyte1[0] = (byte) S_BASE64CHAR[j1 >> 2];
			abyte1[1] = (byte) S_BASE64CHAR[j1 << 4 & 0x3f];
			abyte1[2] = 61;
			abyte1[3] = 61;
			outputstream.write(abyte1, 0, 4);
		} else if (l == 2) {
			int k1 = ((abyte0[k] & 0xff) << 8) + (abyte0[k + 1] & 0xff);
			abyte1[0] = (byte) S_BASE64CHAR[k1 >> 10];
			abyte1[1] = (byte) S_BASE64CHAR[k1 >> 4 & 0x3f];
			abyte1[2] = (byte) S_BASE64CHAR[k1 << 2 & 0x3f];
			abyte1[3] = 61;
			outputstream.write(abyte1, 0, 4);
		}
	}

	public static void encode(byte abyte0[], int i, int j, Writer writer)
			throws IOException {
		if (j <= 0) {
			return;
		}
		char ac[] = new char[4];
		int k = i;
		int l = j - i;
		int i1 = 0;
		while (l >= 3) {
			int j1 = ((abyte0[k] & 0xff) << 16) + ((abyte0[k + 1] & 0xff) << 8)
					+ (abyte0[k + 2] & 0xff);
			ac[0] = S_BASE64CHAR[j1 >> 18];
			ac[1] = S_BASE64CHAR[j1 >> 12 & 0x3f];
			ac[2] = S_BASE64CHAR[j1 >> 6 & 0x3f];
			ac[3] = S_BASE64CHAR[j1 & 0x3f];
			writer.write(ac, 0, 4);
			k += 3;
			l -= 3;
			if ((i1 += 4) % 76 == 0) {
				writer.write("\n");
			}
		}
		if (l == 1) {
			int k1 = abyte0[k] & 0xff;
			ac[0] = S_BASE64CHAR[k1 >> 2];
			ac[1] = S_BASE64CHAR[k1 << 4 & 0x3f];
			ac[2] = '=';
			ac[3] = '=';
			writer.write(ac, 0, 4);
		} else if (l == 2) {
			int l1 = ((abyte0[k] & 0xff) << 8) + (abyte0[k + 1] & 0xff);
			ac[0] = S_BASE64CHAR[l1 >> 10];
			ac[1] = S_BASE64CHAR[l1 >> 4 & 0x3f];
			ac[2] = S_BASE64CHAR[l1 << 2 & 0x3f];
			ac[3] = '=';
			writer.write(ac, 0, 4);
		}
	}

	static {
		S_DECODETABLE = new byte[128];
		for (int i = 0; i < S_DECODETABLE.length; i++) {
			S_DECODETABLE[i] = 127;
		}

		for (int j = 0; j < S_BASE64CHAR.length; j++) {
			S_DECODETABLE[S_BASE64CHAR[j]] = (byte) j;
		}

	}
}