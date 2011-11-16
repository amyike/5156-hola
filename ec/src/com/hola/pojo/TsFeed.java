package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_feed database table.
 * 
 */
@Entity
@Table(name="ts_feed")
public class TsFeed extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="feed_id")
	private int feedId;

	private int ctime;

    @Lob()
	private String data;

	private String type;

	private int uid;

    public TsFeed() {
    }

	public int getFeedId() {
		return this.feedId;
	}

	public void setFeedId(int feedId) {
		this.feedId = feedId;
	}

	public int getCtime() {
		return this.ctime;
	}

	public void setCtime(int ctime) {
		this.ctime = ctime;
	}

	public String getData() {
		return this.data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}