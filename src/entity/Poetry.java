package entity;

/**
 * @author ljsy
 **/
public class Poetry {

    private int id;
    private String title;
    private String author;
    private String content;
    private String translate;
    private String getTranslateRes;
    private String notes;
    private String appreciation;
    private String appreciationRes;
    private String type;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTranslate() {
        return translate;
    }

    public void setTranslate(String translate) {
        this.translate = translate;
    }

    public String getGetTranslateRes() {
        return getTranslateRes;
    }

    public void setGetTranslateRes(String getTranslateRes) {
        this.getTranslateRes = getTranslateRes;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public String getAppreciation() {
        return appreciation;
    }

    public void setAppreciation(String appreciation) {
        this.appreciation = appreciation;
    }

    public String getAppreciationRes() {
        return appreciationRes;
    }

    public void setAppreciationRes(String appreciationRes) {
        this.appreciationRes = appreciationRes;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
