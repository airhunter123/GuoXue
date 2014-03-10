/*
 * 将文章发至模板页面
 */
package WebRun;

import POJO.Article;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;


public class ArticleShow {
    private Article article;
    
    public String execute(){
        HttpSession hs=ServletActionContext.getRequest().getSession();
        article=(Article)hs.getAttribute("article");
        System.out.println(article.getAuthor());
        return "NewsPage1";
    }
}
