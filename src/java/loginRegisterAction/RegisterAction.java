package loginRegisterAction;

import PO.PersonInfoPO;
import com.opensymphony.xwork2.ActionSupport;
import loginRegisterDao.LoginRegisterInfo;
import java.util.List;

public class RegisterAction extends ActionSupport{
    private String userName;
    private String password1;
    private String password2;
    private String sex;
    private String idnum;
    private String telephone;
    //
    private String balance;
    private String timedeposit;

    public String getBalance() {
        return balance;
    }

    public void setBalance(String balance) {
        this.balance = balance;
    }

    public String getTimedeposit() {
        return timedeposit;
    }

    public void setTimedeposit(String timedeposit) {
        this.timedeposit = timedeposit;
    }
    //
    private String mess="error";
    private List list;
    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName= userName;
    }
    public String getPassword1() {
        return password1;
    }
    public String getTelephone() {
        return telephone;
    }
    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }
    public void setPassword1(String password1) {
        this.password1 = password1;
    }
    public String getPassword2() {
        return password2;
    }
    public void setPassword2(String password2) {
        this.password2 = password2;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getIdnum() {
        return idnum;
    }

    public void setIdnum(String idnum) {
        this.idnum = idnum;
    }
    
    
    
    public PersonInfoPO personInfo(){
        PersonInfoPO info=new PersonInfoPO();
        info.setName(this.getUserName());
        info.setPassword(this.getPassword1());
        info.setSex(this.getSex());
        info.setIdnum(this.getIdnum());
        info.setTelephone(this.getTelephone());
        info.setBalance(this.getBalance());
        info.setTimedeposit(this.getTimedeposit());
        return info;
    }
   public String execute() throws Exception{
        LoginRegisterInfo lr=new LoginRegisterInfo();
        String ri=lr.saveInfo(personInfo());
        if(ri.equals("success")){
            mess="success";
        }
        return mess;
    }
}
