/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package WebManager;

import Factory.HibernateFactory;
import POJO.Article;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Administrator
 */

public class ArticleInput {
    Article article;

    public Article getArticle() {
        return article;
    }

    public void setArticle(Article article) {
        this.article = article;
    }
    
    public String execute(){
        String id=new Long(System.nanoTime()).toString();
        article.setUuid(id);
        article.setUsed("no");
        
        SessionFactory sf=HibernateFactory.getSessionFactory();
        Session session=sf.openSession();
        session.beginTransaction();
        session.save(article);
        session.getTransaction().commit();
        session.close();
        article=null;//如果不设为null，录入成功返回原页面时，数据依然存在
        
        return "ArticleInput";
    }
}
