/*
 * Document   : LoginAction
 * Created on : 2020-4-22, 8:40:26
 * Author     : 180409-20182946-刘志健
 */
package loginRegisterAction;
import loginRegisterDao.AdminLoginDao;
import com.opensymphony.xwork2.ActionSupport;
import loginRegisterDao.LoginRegisterInfo;
import PO.AdminPO;
import java.util.List;

public class AdminLoginAction extends ActionSupport{
    private String adminname;
    private String adminpwd;
    private String adminkey;
    private String message="error";
    private List list;

    public String getAdminname() {
        return adminname;
    }

    public void setAdminname(String adminname) {
        this.adminname = adminname;
    }

    public String getAdminpwd() {
        return adminpwd;
    }

    public void setAdminpwd(String adminpwd) {
        this.adminpwd = adminpwd;
    }

    public String getAdminkey() {
        return adminkey;
    }

    public void setAdminkey(String adminkey) {
        this.adminkey = adminkey;
    }

    
    
    public void validate(){
        if(this.getAdminname()==null||this.getAdminname().length()==0){
            addFieldError("adminname","用户名不能为空！");
        }else{
            AdminLoginDao info = new AdminLoginDao();
            list=info.queryInfo("adminname", this.getAdminname());
            if(list.size()==0){
                addFieldError("userName","该用户尚未注册！");
            }else{
                AdminPO ui=new AdminPO();
                int count=0;
                for(int i=0;i<list.size();i++){
                    count++;
                    ui=(AdminPO)list.get(i);
                    if(this.getAdminname().equals(ui.getAdminname())){
                        if(ui.getAdminpwd().equals(this.getAdminpwd())){
                            message="success";
                        }else{
                            addFieldError("password","登录密码不正确！");
                        }
                        
                        if(ui.getAdminkey().equals(this.getAdminkey())){
                            message="success";
                        }else{
                            addFieldError("adminkey","密钥不正确！");
                        }
                    }
                }
            }
        }
    }
    public String execute() throws Exception{
        return message;
    }
}

