package com.nianmi.member.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_user_visited database table.
 * 
 */
@Entity
@Table(name="ts_user_visited")
public class TsUserVisited implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="visited_id")
	private int visitedId;

	private int ctime;

	private int fid;

	private int uid;

    public TsUserVisited() {
    }

	public int getVisitedId() {
		return this.visitedId;
	}

	public void setVisitedId(int visitedId) {
		this.visitedId = visitedId;
	}

	public int getCtime() {
		return this.ctime;
	}

	public void setCtime(int ctime) {
		this.ctime = ctime;
	}

	public int getFid() {
		return this.fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}