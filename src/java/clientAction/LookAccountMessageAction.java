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
import clientDao.AccountDao;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

public class LookAccountMessageAction extends ActionSupport{
    
    private HttpServletRequest request;
    private String message="input";
    
    public String execute() throws Exception{
        request=ServletActionContext.getRequest();
        AccountDao dao = new AccountDao();
        List list=dao.findAllInfo();
        request.getSession().setAttribute("allAInfo", list);
        message="success";
        return message;
    }
}