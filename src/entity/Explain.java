package entity;

/**
 * 处理数据的工具类
 */
public class Explain {
    private int id;
    private String content;
    private String translate;
    private String translateRes;
    private String notes;
    private String appreciation;
    private String appreciationRes;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        content = content.replace("[\"", "");
        content = content.replace("\"]", "");
        content = content.replace("\",\"", "/");
        this.content = content;
    }

    public String getTranslate() {
        return translate;
    }

    public void setTranslate(String translate) {
        translate = translate.replace("[\"", "");
        translate = translate.replace("\"]", "");
        translate = translate.replace("\",\"", "/");
        this.translate = translate;
    }

    public String getTranslateRes() {
        return translateRes;
    }

    public void setTranslateRes(String translateRes) {
        translateRes = translateRes.replace("[\"", "");
        translateRes = translateRes.replace("\"]", "");
        translateRes = translateRes.replace("\",\"", "/");
        this.translateRes = translateRes;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        notes = notes.replaceAll("[\\[\\]]","");
        notes = notes.replaceAll("\".*?。", "");
        notes = notes.replace("\",", "");
        notes = notes.replace("。", "。/");
        this.notes = notes;
    }

    public String getAppreciation() {
        return appreciation;
    }

    public void setAppreciation(String appreciation) {
        appreciation = appreciation.replace("　","");
        appreciation = appreciation.replace("[\"", "");
        appreciation = appreciation.replace("\"]", "");
        appreciation = appreciation.replace("\",\"", "/");
        this.appreciation = appreciation;
    }

    public String getAppreciationRes() {
        return appreciationRes;
    }

    public void setAppreciationRes(String appreciationRes) {
        appreciationRes = appreciationRes.replace("[\"", "");
        appreciationRes = appreciationRes.replace("\"]", "");
        appreciationRes = appreciationRes.replace("\",\"", "/");
        this.appreciationRes = appreciationRes;
    }
}
