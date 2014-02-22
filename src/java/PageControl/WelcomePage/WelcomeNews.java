/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package PageControl.WelcomePage;

/**
 *
 * @author Administrator
 */
public class WelcomeNews {
    String[] topic;
    String[] content ;
    String[] contentHref ;
    String[] contentAbstract;
    String[] picTitle ;
    String[] picHref ;
    String[] moreHref ;

    public String[] getContent() {
        return content;
    }

    public void setContent(String[] content) {
        this.content = content;
    }

    public String[] getContentAbstract() {
        return contentAbstract;
    }

    public void setContentAbstract(String[] contentAbstract) {
        this.contentAbstract = contentAbstract;
    }

    public String[] getContentHref() {
        return contentHref;
    }

    public void setContentHref(String[] contentHref) {
        this.contentHref = contentHref;
    }

    public String[] getPicHref() {
        return picHref;
    }

    public void setPicHref(String[] picHref) {
        this.picHref = picHref;
    }

    public String[] getPicTitle() {
        return picTitle;
    }

    public void setPicTitle(String[] picTitle) {
        this.picTitle = picTitle;
    }

    public String[] getTopic() {
        return topic;
    }

    public void setTopic(String[] topic) {
        this.topic = topic;
    }

    public String[] getMoreHref() {
        return moreHref;
    }

    public void setMoreHref(String[] moreHref) {
        this.moreHref = moreHref;
    }
    
}
