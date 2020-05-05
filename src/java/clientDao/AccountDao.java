/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clientDao;

/**
 *
 * @author 22603
 */
import addHibernateFile.HibernateSessionFactory;
import PO.AccountInfoPO;
import java.util.List;
import javax.swing.JOptionPane;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class AccountDao {
    private Transaction transaction;
    private Session session;
    private Query query;
    public AccountDao(){
    }
    public boolean  saveInfo(AccountInfoPO info){
        try{
            session=HibernateSessionFactory.getSession();
            transaction=session.beginTransaction();
            session.save(info);
            transaction.commit();
            session.close();
            return true;
        }catch(Exception e){
            message("saveInfo.error:"+e);
            e.printStackTrace();
            return false;
        }
    }
    public List findInfo(String type,Object value){
        session=HibernateSessionFactory.getSession();
        try{
            transaction=session.beginTransaction();
            String queryString="from AccountInfoPO as model where model."+type+"=?";
            query=session.createQuery(queryString);
            query.setParameter(0, value);
            List list=query.list();
            transaction.commit();
            session.close();
            return list;
        }catch(Exception e){
            message("findInfo.error:"+e);
            e.printStackTrace();
            return null;
        }
    }
    public List findAllInfo(){
        session=HibernateSessionFactory.getSession();
        try{
            transaction=session.beginTransaction();
            String queryString="from AccountInfoPO";
            query=session.createQuery(queryString);
            List list=query.list();
            transaction.commit();
            session.close();
            return list;
        }catch(Exception e){
            message("findInfo.error:"+e);
            e.printStackTrace();
            return null;
        }
    }
    public boolean deleteInfo(String id){
        try{
            session=HibernateSessionFactory.getSession();
            transaction=session.beginTransaction();
            AccountInfoPO info=new AccountInfoPO();
            info=(AccountInfoPO)session.get(AccountInfoPO.class, id);
            session.delete(info);
            transaction.commit();
            session.close();
            return true;
        }catch(Exception e){
            message("deleteInfo.error:"+e);
            e.printStackTrace();
            return false;
        }
    }
    public boolean updateInfo(AccountInfoPO info){
        try{
            session=HibernateSessionFactory.getSession();
            transaction=session.beginTransaction();
            session.update(info);
            transaction.commit();
            session.close();
            return true;
        }catch(Exception e){
            message("updateInfo.error:"+e);
            e.printStackTrace();
            return false;
        }
    }
    public void message(String mess){
        int type=JOptionPane.YES_NO_OPTION;
        String title="提示信息";
        JOptionPane.showMessageDialog(null, mess, title, type);
    }
}
