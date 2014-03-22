/*
 *用于修改首页内容
 */
package WebManager;

import java.util.Map;


public class ChangeWelcomePage {
    Map<String, String> map;

    public Map<String, String> getMap() {
        return map;
    }

    public void setMap(Map<String, String> map) {
        this.map = map;
    }
    
    public String execute(){
        System.out.println(map.size());
        return "WelcomePage";
    }
}
