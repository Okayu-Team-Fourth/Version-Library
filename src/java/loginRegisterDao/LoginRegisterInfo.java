/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package loginRegisterDao;
import PO.PersonInfoPO;
import addHibernateFile.HibernateSessionFactory;
import java.util.List;
import javax.swing.JOptionPane;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class LoginRegisterInfo {
    private Session session;
    private Transaction transaction;
    private Query query;
    private HibernateSessionFactory getSession;
    
    public String saveInfo(PersonInfoPO info){
        String mess="error";
        getSession = new HibernateSessionFactory();
        session=HibernateSessionFactory.getSession();
        try{
            transaction= session.beginTransaction();
            session.save(info);
            transaction.commit();
            mess="success";
            return mess;
        }catch(Exception e){
            message("RegisterInfo.Error："+e);
            e.printStackTrace();
            return null;
        }
    }
    public List queryInfo(String type,Object value){
        getSession =new HibernateSessionFactory();
        session = getSession.getSession();
        try{
            String hqlsql = "from PersonInfoPO as u where u.name=?";
            query=session.createQuery(hqlsql);
            query.setParameter(0,value);
            List list = query.list();
            transaction = session.beginTransaction();
            transaction.commit();
            return list;
        }catch(Exception e){
            message("LoginRegisterInfo类中有异常"+e);
            e.printStackTrace();
            return null;
        }
    }
    public void message(String mess){
        int type=JOptionPane.YES_NO_OPTION;
        String title="提示信息";
        JOptionPane.showMessageDialog(null,mess,title,type);
    }
}
