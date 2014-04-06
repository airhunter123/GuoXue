/*
 *用来从数据库获取文章
 */
package WebRun;

import Factory.HibernateFactory;
import POJO.Article;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class ArticleGetter {
    private Article article;
   
    
    public String execute(){
        SessionFactory sf=HibernateFactory.getSessionFactory();
        Session session=sf.openSession();
        session.beginTransaction();
        article=(Article) session.get(Article.class, "24454928396806");
        Hibernate.initialize(article);
        session.getTransaction().commit();
        session.close();
        
        HttpSession hs=ServletActionContext.getRequest().getSession();
        hs.setAttribute("article",article);
        
        
        return "Transfer";
    }
}
