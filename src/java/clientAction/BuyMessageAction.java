/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clientAction;

/**
 *
 * @author 85173
 */
import clientDao.PersoninfoDao;
import PO.PersonInfoPO;
import com.opensymphony.xwork2.ActionSupport;
import javax.swing.JOptionPane;

public class BuyMessageAction extends ActionSupport{
   private int id;
    private String name;
    private String password;
    private String sex;
    private String idnum;
    private String telephone;
    private  String balance;
    private String timedeposit;
    private String buynum;
    
    private String message="input";

    public String getBuynum() {
        return buynum;
    }
    public void setBuynum(String buynum) {
        this.buynum = buynum;
    }
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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }
   
    
    
    
//    public void validate(){
//        int intbuynum = Integer.parseInt(this.getBuynum()); 
//        int intbalance = Integer.parseInt(this.getBalance()); 
//        int inttimedeposit = Integer.parseInt(this.getTimedeposit()); 
//        if(intbuynum <= intbalance ){
//            addFieldError("buynum","钱不够!");
//        }
//    }
    public String execute() throws Exception{
        PersoninfoDao dao=new PersoninfoDao();
        boolean update=dao.updateInfo(info());
        if(update){
            message="success";
        }
        return message;
    }
    public PersonInfoPO info(){
        PersonInfoPO info=new PersonInfoPO();

        int intbuynum = Integer.parseInt(this.getBuynum()); 
        int intbalance = Integer.parseInt(this.getBalance()); 
        int inttimedeposit = Integer.parseInt(this.getTimedeposit());
        int cbalance = intbalance - intbuynum; 
        int ctimedeposit = inttimedeposit + intbuynum;
        
//        Double Dbuynum = Double.parseDouble(this.getBuynum());
//        Double Dbalance = Double.parseDouble(this.getBalance()); 
//        Double Dtimedeposit = Double.parseDouble(this.getTimedeposit());
//        Double  cbalance = Dbalance - Dbuynum; 
//        Double ctimedeposit = Dtimedeposit + Dbuynum;
        
        String sbalance = Integer.toString(cbalance);
        String stimedeposit = Integer.toString(ctimedeposit);
        
        
        
//        String sbalance = Double.toString(cbalance);
//        String stimedeposit = Double.toString(ctimedeposit);
       
        
        info.setId(this.getId());
        info.setName(this.getName());
        info.setPassword(this.getPassword());
        info.setSex(this.getSex());
        info.setIdnum(this.getIdnum());
        info.setTelephone(this.getTelephone()); 
        info.setBalance(sbalance);
        info.setTimedeposit(stimedeposit);
        return info;
    }
    public void message(String mess){
        int type=JOptionPane.YES_NO_OPTION;
        String title="提示信息";
        JOptionPane.showMessageDialog(null, mess, title, type);
    }
}