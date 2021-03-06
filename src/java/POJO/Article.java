package POJO;
// Generated 2014-3-7 14:48:10 by Hibernate Tools 3.2.1.GA



/**
 * Article generated by hbm2java
 */
public class Article  implements java.io.Serializable {


     private String uuid;
     private String title;
     private String author;
     private String introduction;
     private String context;
     private String img;
     private String gategory;
     private String format;
     private String releasetime;
     private String editor;
     private String origin;
     private String comment;
     private String used;

    public Article() {
    }

	
    public Article(String uuid, String title, String author, String context, String gategory, String format, String releasetime, String editor, String used) {
        this.uuid = uuid;
        this.title = title;
        this.author = author;
        this.context = context;
        this.gategory = gategory;
        this.format = format;
        this.releasetime = releasetime;
        this.editor = editor;
        this.used = used;
    }
    public Article(String uuid, String title, String author, String introduction, String context, String img, String gategory, String format, String releasetime, String editor, String origin, String comment, String used) {
       this.uuid = uuid;
       this.title = title;
       this.author = author;
       this.introduction = introduction;
       this.context = context;
       this.img = img;
       this.gategory = gategory;
       this.format = format;
       this.releasetime = releasetime;
       this.editor = editor;
       this.origin = origin;
       this.comment = comment;
       this.used = used;
    }
   
    public String getUuid() {
        return this.uuid;
    }
    
    public void setUuid(String uuid) {
        this.uuid = uuid;
    }
    public String getTitle() {
        return this.title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }
    public String getAuthor() {
        return this.author;
    }
    
    public void setAuthor(String author) {
        this.author = author;
    }
    public String getIntroduction() {
        return this.introduction;
    }
    
    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }
    public String getContext() {
        return this.context;
    }
    
    public void setContext(String context) {
        this.context = context;
    }
    public String getImg() {
        return this.img;
    }
    
    public void setImg(String img) {
        this.img = img;
    }
    public String getGategory() {
        return this.gategory;
    }
    
    public void setGategory(String gategory) {
        this.gategory = gategory;
    }
    public String getFormat() {
        return this.format;
    }
    
    public void setFormat(String format) {
        this.format = format;
    }
    public String getReleasetime() {
        return this.releasetime;
    }
    
    public void setReleasetime(String releasetime) {
        this.releasetime = releasetime;
    }
    public String getEditor() {
        return this.editor;
    }
    
    public void setEditor(String editor) {
        this.editor = editor;
    }
    public String getOrigin() {
        return this.origin;
    }
    
    public void setOrigin(String origin) {
        this.origin = origin;
    }
    public String getComment() {
        return this.comment;
    }
    
    public void setComment(String comment) {
        this.comment = comment;
    }
    public String getUsed() {
        return this.used;
    }
    
    public void setUsed(String used) {
        this.used = used;
    }




}


