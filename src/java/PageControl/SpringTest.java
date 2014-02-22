/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package PageControl;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;


/**
 *
 * @author airhunter
 */
public class SpringTest {
  String title ;

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }
 public static void main(String[] args){
   ApplicationContext context=new FileSystemXmlApplicationContext("/web/WEB-INF/applicationContext.xml");
   SpringTest w=(SpringTest)context.getBean("test");
   System.out.print(w.getTitle());
 }  
}
