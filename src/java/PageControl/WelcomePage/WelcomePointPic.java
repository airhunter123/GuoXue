/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package PageControl.WelcomePage;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;


public class WelcomePointPic {
  String[] pointText;
  String[] pointTextHref ;

  public String[] getPointText() {
    return pointText;
  }

  public void setPointText(String[] pointText) {
    this.pointText = pointText;
  }

  public String[] getPointTextHref() {
    return pointTextHref;
  }

  public void setPointTextHref(String[] pointTextHref) {
    this.pointTextHref = pointTextHref;
  }
}
