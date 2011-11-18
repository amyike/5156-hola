package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_login database table.
 * 
 */
@Entity
@Table(name="ts_login")
public class TsLogin extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="login_id")
	private int loginId;

	@Column(name="is_sync")
	private byte isSync;

	@Column(name="oauth_token")
	private String oauthToken;

	@Column(name="oauth_token_secret")
	private String oauthTokenSecret;

	private String type;

	@Column(name="type_uid")
	private String typeUid;

	private int uid;

    public TsLogin() {
    }

	public int getLoginId() {
		return this.loginId;
	}

	public void setLoginId(int loginId) {
		this.loginId = loginId;
	}

	public byte getIsSync() {
		return this.isSync;
	}

	public void setIsSync(byte isSync) {
		this.isSync = isSync;
	}

	public String getOauthToken() {
		return this.oauthToken;
	}

	public void setOauthToken(String oauthToken) {
		this.oauthToken = oauthToken;
	}

	public String getOauthTokenSecret() {
		return this.oauthTokenSecret;
	}

	public void setOauthTokenSecret(String oauthTokenSecret) {
		this.oauthTokenSecret = oauthTokenSecret;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTypeUid() {
		return this.typeUid;
	}

	public void setTypeUid(String typeUid) {
		this.typeUid = typeUid;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}