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
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.swing.JOptionPane;
import org.apache.struts2.ServletActionContext;


public class FindMessageAction extends ActionSupport{
    private String id;
    private String name;
    private HttpServletRequest request;
    private String message="input";
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    
    public void validate(){
        if(this.getId().equals("null")){
            message("暂无信息！");
            addFieldError("id","暂无信息！");
        }
    }
    public String execute() throws Exception{
        request=ServletActionContext.getRequest();
        PersoninfoDao dao=new PersoninfoDao();
        List list=dao.findInfo("id", this.getId());
        request.getSession().setAttribute("oneInfo", list);
        message="success";
        return message;
    }
    public void message(String mess){
        int type=JOptionPane.YES_NO_OPTION;
        String title="提示信息";
        JOptionPane.showMessageDialog(null, mess, title, type);
    }
}

