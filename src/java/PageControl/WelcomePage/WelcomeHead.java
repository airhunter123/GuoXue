/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package PageControl.WelcomePage;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

/**
 *
 * @author airhunter
 */
public class WelcomeHead {
  String[] itemTop;
  String[] itemTopHref;
  String[] itemMenu;
  String[] itemMenuHref;

  public String[] getItemMenu() {
    return itemMenu;
  }

  public void setItemMenu(String[] itemMenu) {
    this.itemMenu = itemMenu;
  }

  public String[] getItemMenuHref() {
    return itemMenuHref;
  }

  public void setItemMenuHref(String[] itemMenuHref) {
    this.itemMenuHref = itemMenuHref;
  }

  public String[] getItemTop() {
    return itemTop;
  }

  public void setItemTop(String[] itemTop) {
    this.itemTop = itemTop;
  }

  public String[] getItemTopHref() {
    return itemTopHref;
  }

  public void setItemTopHref(String[] itemTopHref) {
    this.itemTopHref = itemTopHref;
  }
  
  //用于测试 开始
  public static void main(String[] args){ 
   ApplicationContext context=new FileSystemXmlApplicationContext("/web/WEB-INF/applicationContext.xml");
   WelcomeHead w=(WelcomeHead)context.getBean("WelcomeHead");
   System.out.print(w.itemMenu[1]);
 }  
  //用于测试 结束
  
}
