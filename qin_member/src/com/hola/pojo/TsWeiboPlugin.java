package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_weibo_plugin database table.
 * 
 */
@Entity
@Table(name="ts_weibo_plugin")
public class TsWeiboPlugin extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="plugin_id")
	private int pluginId;

	@Column(name="icon_pic")
	private String iconPic;

	@Column(name="plugin_name")
	private String pluginName;

	@Column(name="plugin_path")
	private String pluginPath;

    public TsWeiboPlugin() {
    }

	public int getPluginId() {
		return this.pluginId;
	}

	public void setPluginId(int pluginId) {
		this.pluginId = pluginId;
	}

	public String getIconPic() {
		return this.iconPic;
	}

	public void setIconPic(String iconPic) {
		this.iconPic = iconPic;
	}

	public String getPluginName() {
		return this.pluginName;
	}

	public void setPluginName(String pluginName) {
		this.pluginName = pluginName;
	}

	public String getPluginPath() {
		return this.pluginPath;
	}

	public void setPluginPath(String pluginPath) {
		this.pluginPath = pluginPath;
	}

}