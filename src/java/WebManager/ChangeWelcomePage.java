/*
 *用于修改首页内容
 */
package WebManager;

import java.io.*;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;


public class ChangeWelcomePage {
    Map<String, String> map;
    private static final String propertyFile="C:\\Documents and Settings\\Administrator\\桌面\\GuoXue\\src\\java\\PageControl\\WelcomePage\\welcomePage.properties";

    public Map<String, String> getMap() {
        return map;
    }

    public void setMap(Map<String, String> map) {
        this.map = map;
    }
    
    public String execute(){
        /*File file=new File(propertyFile);
        if(file.exists()){
            System.out.println("ok!!!!!!!!!!");
        }else{
            System.out.println("null!!!!!!!!");
        }*/
        Set set=map.entrySet();
        Iterator iterator=set.iterator();
        while(iterator.hasNext()){
            Map.Entry<String,String> entry=(Map.Entry<String,String>)iterator.next();
            this.writeDate(entry.getKey(), entry.getValue());
        }
       
        return "WelcomePage";
    }
    public void writeDate(String key ,String value){
        Properties prop=new Properties();
        try {
            File file=new File(propertyFile);
            InputStream in = new FileInputStream(file);
            prop.load(in);
            in.close();//一定要在修改值之前关闭in
            OutputStream out=new FileOutputStream(file);
            prop.setProperty(key, value);
            prop.store(out, "Update '" + key + "' value");
            in.close();
            
        } catch (Exception e) {
        }
    }
}
