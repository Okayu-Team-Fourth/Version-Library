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
import com.opensymphony.xwork2.ActionSupport;
import javax.swing.JOptionPane;

public class DeleteMessageAction extends ActionSupport{
    private int id;
    private String message;
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
//    public void validate(){
//        if(this.getId().equals("null")){
//            message("暂无信息！");
//            addFieldError("id","暂无信息！");
//        }
//    }
    public String execute() throws Exception{
        PersoninfoDao dao=new  PersoninfoDao();
        boolean del=dao.deleteInfo(this.getId());
        if(del){
            message="success";
        }
        return message;
    }
    public void message(String mess){
        int type=JOptionPane.YES_NO_OPTION;
        String title="提示信息";
        JOptionPane.showMessageDialog(null, mess, title, type);
    }
}
