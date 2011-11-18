package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_node database table.
 * 
 */
@Entity
@Table(name="ts_node")
public class TsNode extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="node_id")
	private int nodeId;

	@Column(name="act_alias")
	private String actAlias;

	@Column(name="act_name")
	private String actName;

	@Column(name="app_alias")
	private String appAlias;

	@Column(name="app_name")
	private String appName;

    @Lob()
	private String description;

	@Column(name="mod_alias")
	private String modAlias;

	@Column(name="mod_name")
	private String modName;

	@Column(name="parent_node_id")
	private int parentNodeId;

    public TsNode() {
    }

	public int getNodeId() {
		return this.nodeId;
	}

	public void setNodeId(int nodeId) {
		this.nodeId = nodeId;
	}

	public String getActAlias() {
		return this.actAlias;
	}

	public void setActAlias(String actAlias) {
		this.actAlias = actAlias;
	}

	public String getActName() {
		return this.actName;
	}

	public void setActName(String actName) {
		this.actName = actName;
	}

	public String getAppAlias() {
		return this.appAlias;
	}

	public void setAppAlias(String appAlias) {
		this.appAlias = appAlias;
	}

	public String getAppName() {
		return this.appName;
	}

	public void setAppName(String appName) {
		this.appName = appName;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getModAlias() {
		return this.modAlias;
	}

	public void setModAlias(String modAlias) {
		this.modAlias = modAlias;
	}

	public String getModName() {
		return this.modName;
	}

	public void setModName(String modName) {
		this.modName = modName;
	}

	public int getParentNodeId() {
		return this.parentNodeId;
	}

	public void setParentNodeId(int parentNodeId) {
		this.parentNodeId = parentNodeId;
	}

}