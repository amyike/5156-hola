<?php
/** 
 * WordPress ���������ļ���
 *
 * ���ļ�������������ѡ�MySQL ���á����ݿ����ǰ׺���ܳס�
 * WordPress �����趨�Լ� ABSPATH�����������Ϣ�������
 * {@link http://codex.wordpress.org/zh-cn:%E7%BC%96%E8%BE%91_wp-config.php
 * �༭ wp-config.php} Codex ҳ�档MySQL ���þ�����Ϣ����ѯ���Ŀռ��ṩ�̡�
 *
 * ����ļ������ڰ�װ�����Զ����� wp-config.php �����ļ���
 * �������ֶ���������ļ�����������Ϊ��wp-config.php����Ȼ�����������Ϣ��
 *
 * @package WordPress
 */

// ** MySQL ���� - ������Ϣ����������ʹ�õ����� ** //
/** WordPress ���ݿ������ */
define('DB_NAME', 'sqljz2wp');

/** MySQL ���ݿ��û��� */
define('DB_USER', 'jz2wp');

/** MySQL ���ݿ����� */
define('DB_PASSWORD', 'h3ll0h3ll0');

/** MySQL ���� */
define('DB_HOST', 'localhost');

/** �������ݱ�ʱĬ�ϵ����ֱ��� */
define('DB_CHARSET', 'utf8');

/** ���ݿ��������͡��粻ȷ��������� */
define('DB_COLLATE', '');

/**#@+
 * �����֤�ܳ��趨��
 *
 * ����������дһЩ�ַ�
 * ����ֱ�ӷ��� {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org ˽Կ���ɷ���}��
 * �κ��޸Ķ��ᵼ�� cookie ʧЧ�������û��������µ�¼��
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '~$_,lbpqQzQ_V9MNr`if*<7#MA(R= FU]_S6P|cS29kf$<7FgBj?{rgKvQ<FUg R');
define('SECURE_AUTH_KEY',  '^*d(ik|na}#@SuHQ:5l&yeXc?A]X)}1L, Ec4X|Bgxx6~Pv5~vl/E;C<r-0F8H&N');
define('LOGGED_IN_KEY',    'AIl1%y[l1iqnU2pWqn*N~ig^4|>tR8=D|R`B4EWMdFJ+cI+zTf4*`cDqd]W#rs6D');
define('NONCE_KEY',        'P~*gr83)F[}-6xVGG6TkqP6l>n8O/2s@maXph^Xr9ux7j#4N4RrNB~$MN#+p#Y@|');
define('AUTH_SALT',        'jk3P.1<!#Qp~oO2haoOkgy(E7|VXHHp1~3u[&i%=H/|<Kl>YcS5y>n4}]d},8*7g');
define('SECURE_AUTH_SALT', '4:wh*L^g#WX$J3tmT-G }[GvBKwC;_PD@OsNaE<wc8<<;kInj/7s;$Les&r.W{1e');
define('LOGGED_IN_SALT',   '_e^v0d9pR.>`9xZP%YY`l.4RzEPICo?A!y&(/AfdaZ{%%3_!dNMQEypRh-4a_u,E');
define('NONCE_SALT',       '.p3Yp$LEg=p(z1{-I|U{,w_7IiV{/)i=gv_MkyxjL@&0#[V;94@qF`}_=NbJcUms');

/**#@-*/

/**
 * WordPress ���ݱ�ǰ׺��
 *
 * ���������ͬһ���ݿ��ڰ�װ��� WordPress ��������Ϊÿ�� WordPress ���ò�ͬ�����ݱ�ǰ׺��
 * ǰ׺��ֻ��Ϊ���֡���ĸ���»��ߡ�
 */
$table_prefix  = 'wp_';

/**
 * WordPress �������ã����İ汾Ĭ��Ϊ���ġ�
 *
 * �����趨�ܹ��� WordPress ��ʾ����Ҫ�����ԡ�
 * wp-content/languages ��Ӧ����ͬ���� .mo �����ļ���
 * Ҫʹ�� WordPress �������Ľ��棬ֻ������ zh_CN��
 */
define('WPLANG', 'zh_CN');

/**
 * ������ר�ã�WordPress ����ģʽ��
 *
 * �����ֵ��Ϊ��true����WordPress ����ʾ�������ڿ�������ʾ��
 * ǿ�ҽ������������ڿ������������ñ����ܡ�
 */
define('WP_DEBUG', false);

define('WP_MEMORY_LIMIT', '64M');

//define('WP_ALLOW_MULTISITE', true);
/* ���ˣ��벻Ҫ�ټ����༭���뱣�汾�ļ���ʹ����죡 */

/** WordPress Ŀ¼�ľ���·���� */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** ���� WordPress �����Ͱ����ļ��� */
require_once(ABSPATH . 'wp-settings.php');