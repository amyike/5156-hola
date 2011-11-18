package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_app database table.
 * 
 */
@Entity
@Table(name="ts_app")
public class TsApp extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="app_id")
	private int appId;

	@Column(name="admin_entry")
	private String adminEntry;

	@Column(name="app_alias")
	private String appAlias;

	@Column(name="app_entry")
	private String appEntry;

	@Column(name="app_name")
	private String appName;

	@Column(name="author_email")
	private String authorEmail;

	@Column(name="author_homepage_url")
	private String authorHomepageUrl;

	@Column(name="author_name")
	private String authorName;

	private String category;

    @Lob()
	@Column(name="contributor_name")
	private String contributorName;

	private int ctime;

    @Lob()
	private String description;

	@Column(name="display_order")
	private short displayOrder;

	@Column(name="homepage_url")
	private String homepageUrl;

	@Column(name="host_type")
	private byte hostType;

	@Column(name="icon_url")
	private String iconUrl;

	@Column(name="large_icon_url")
	private String largeIconUrl;

	@Column(name="last_update_date")
	private String lastUpdateDate;

	@Column(name="release_date")
	private String releaseDate;

	@Column(name="sidebar_entry")
	private String sidebarEntry;

	@Column(name="sidebar_icon_url")
	private String sidebarIconUrl;

	@Column(name="sidebar_is_submenu_active")
	private byte sidebarIsSubmenuActive;

	@Column(name="sidebar_support_submenu")
	private byte sidebarSupportSubmenu;

	@Column(name="sidebar_title")
	private String sidebarTitle;

	@Column(name="statistics_entry")
	private String statisticsEntry;

	private byte status;

	private String version;

    public TsApp() {
    }

	public int getAppId() {
		return this.appId;
	}

	public void setAppId(int appId) {
		this.appId = appId;
	}

	public String getAdminEntry() {
		return this.adminEntry;
	}

	public void setAdminEntry(String adminEntry) {
		this.adminEntry = adminEntry;
	}

	public String getAppAlias() {
		return this.appAlias;
	}

	public void setAppAlias(String appAlias) {
		this.appAlias = appAlias;
	}

	public String getAppEntry() {
		return this.appEntry;
	}

	public void setAppEntry(String appEntry) {
		this.appEntry = appEntry;
	}

	public String getAppName() {
		return this.appName;
	}

	public void setAppName(String appName) {
		this.appName = appName;
	}

	public String getAuthorEmail() {
		return this.authorEmail;
	}

	public void setAuthorEmail(String authorEmail) {
		this.authorEmail = authorEmail;
	}

	public String getAuthorHomepageUrl() {
		return this.authorHomepageUrl;
	}

	public void setAuthorHomepageUrl(String authorHomepageUrl) {
		this.authorHomepageUrl = authorHomepageUrl;
	}

	public String getAuthorName() {
		return this.authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

	public String getCategory() {
		return this.category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getContributorName() {
		return this.contributorName;
	}

	public void setContributorName(String contributorName) {
		this.contributorName = contributorName;
	}

	public int getCtime() {
		return this.ctime;
	}

	public void setCtime(int ctime) {
		this.ctime = ctime;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public short getDisplayOrder() {
		return this.displayOrder;
	}

	public void setDisplayOrder(short displayOrder) {
		this.displayOrder = displayOrder;
	}

	public String getHomepageUrl() {
		return this.homepageUrl;
	}

	public void setHomepageUrl(String homepageUrl) {
		this.homepageUrl = homepageUrl;
	}

	public byte getHostType() {
		return this.hostType;
	}

	public void setHostType(byte hostType) {
		this.hostType = hostType;
	}

	public String getIconUrl() {
		return this.iconUrl;
	}

	public void setIconUrl(String iconUrl) {
		this.iconUrl = iconUrl;
	}

	public String getLargeIconUrl() {
		return this.largeIconUrl;
	}

	public void setLargeIconUrl(String largeIconUrl) {
		this.largeIconUrl = largeIconUrl;
	}

	public String getLastUpdateDate() {
		return this.lastUpdateDate;
	}

	public void setLastUpdateDate(String lastUpdateDate) {
		this.lastUpdateDate = lastUpdateDate;
	}

	public String getReleaseDate() {
		return this.releaseDate;
	}

	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}

	public String getSidebarEntry() {
		return this.sidebarEntry;
	}

	public void setSidebarEntry(String sidebarEntry) {
		this.sidebarEntry = sidebarEntry;
	}

	public String getSidebarIconUrl() {
		return this.sidebarIconUrl;
	}

	public void setSidebarIconUrl(String sidebarIconUrl) {
		this.sidebarIconUrl = sidebarIconUrl;
	}

	public byte getSidebarIsSubmenuActive() {
		return this.sidebarIsSubmenuActive;
	}

	public void setSidebarIsSubmenuActive(byte sidebarIsSubmenuActive) {
		this.sidebarIsSubmenuActive = sidebarIsSubmenuActive;
	}

	public byte getSidebarSupportSubmenu() {
		return this.sidebarSupportSubmenu;
	}

	public void setSidebarSupportSubmenu(byte sidebarSupportSubmenu) {
		this.sidebarSupportSubmenu = sidebarSupportSubmenu;
	}

	public String getSidebarTitle() {
		return this.sidebarTitle;
	}

	public void setSidebarTitle(String sidebarTitle) {
		this.sidebarTitle = sidebarTitle;
	}

	public String getStatisticsEntry() {
		return this.statisticsEntry;
	}

	public void setStatisticsEntry(String statisticsEntry) {
		this.statisticsEntry = statisticsEntry;
	}

	public byte getStatus() {
		return this.status;
	}

	public void setStatus(byte status) {
		this.status = status;
	}

	public String getVersion() {
		return this.version;
	}

	public void setVersion(String version) {
		this.version = version;
	}

}