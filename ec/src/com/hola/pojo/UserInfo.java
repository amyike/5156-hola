package com.hola.pojo;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/** 用户信息表
 * 
 */
@Entity
@Table(name = "user_info")
public class UserInfo implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    /** @pdOid 7607be27-3a79-4f98-b64a-d2db53ce453d */
    private String name;
    /** @pdOid 2250d51a-b786-418d-afd2-97f6b2777368 */
    private String pwd;
    /** @pdOid e4b67762-b0dd-4e49-8584-8679a4d7be29 */
    private String code;
    /** @pdOid 62a07546-31af-4edf-86d0-306581036614 */
    private int position;
    /** @pdOid dac3d208-310e-4c80-a721-f5765daa81f7 */
    private String email;
    /** @pdOid 9534f3c6-fdb9-43d2-ac72-b0306403d270 */
    private String mobile;
    /** @pdOid bf44cea5-ca3f-41d3-934c-033818e445f6 */
    private String phone;
    /** @pdOid ceab16b9-37bd-420d-bbbc-572ea1c97335 */
    private int status;
    /** @pdOid 3e4792c5-3564-416c-a445-3ec594162e7f */
    private String pinhash;
    @ManyToOne(optional = true)
    @JoinColumn(name = "organ")
    private Organ organ;
    @Temporal(TemporalType.TIME)
    private Date lastLogin;
    @Temporal(TemporalType.DATE)
    private Date createDate;
    /** @pdOid 60c4fc95-0ec7-4494-8205-67922d38fe9d */
    private long creator;
    @Temporal(TemporalType.DATE)
    private Date updateDate;
    /** @pdOid 9f839f5b-31d5-4120-b6cb-e66243d3bdea */
    private long updater;
    /** @pdOid ee65e955-44bd-43b9-938c-e407760e8ddb */
    private String remark;

    /**
     * @return the id
     */
    public long getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(long id) {
        this.id = id;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the pwd
     */
    public String getPwd() {
        return pwd;
    }

    /**
     * @param pwd the pwd to set
     */
    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    /**
     * @return the code
     */
    public String getCode() {
        return code;
    }

    /**
     * @param code the code to set
     */
    public void setCode(String code) {
        this.code = code;
    }

    /**
     * @return the position
     */
    public int getPosition() {
        return position;
    }

    /**
     * @param position the position to set
     */
    public void setPosition(int position) {
        this.position = position;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the mobile
     */
    public String getMobile() {
        return mobile;
    }

    /**
     * @param mobile the mobile to set
     */
    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    /**
     * @return the phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * @param phone the phone to set
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * @return the status
     */
    public int getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(int status) {
        this.status = status;
    }

    /**
     * @return the pinhash
     */
    public String getPinhash() {
        return pinhash;
    }

    /**
     * @param pinhash the pinhash to set
     */
    public void setPinhash(String pinhash) {
        this.pinhash = pinhash;
    }

    /**
     * @return the organ
     */
    public Organ getOrgan() {
        return organ;
    }

    /**
     * @param organ the organ to set
     */
    public void setOrgan(Organ organ) {
        this.organ = organ;
    }

    /**
     * @return the lastLogin
     */
    public Date getLastLogin() {
        return lastLogin;
    }

    /**
     * @param lastLogin the lastLogin to set
     */
    public void setLastLogin(Date lastLogin) {
        this.lastLogin = lastLogin;
    }

    /**
     * @return the createDate
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * @param createDate the createDate to set
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * @return the creator
     */
    public long getCreator() {
        return creator;
    }

    /**
     * @param creator the creator to set
     */
    public void setCreator(long creator) {
        this.creator = creator;
    }

    /**
     * @return the updateDate
     */
    public Date getUpdateDate() {
        return updateDate;
    }

    /**
     * @param updateDate the updateDate to set
     */
    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    /**
     * @return the updater
     */
    public long getUpdater() {
        return updater;
    }

    /**
     * @param updater the updater to set
     */
    public void setUpdater(long updater) {
        this.updater = updater;
    }

    /**
     * @return the remark
     */
    public String getRemark() {
        return remark;
    }

    /**
     * @param remark the remark to set
     */
    public void setRemark(String remark) {
        this.remark = remark;
    }
}