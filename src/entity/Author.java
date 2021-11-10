package entity;

import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;

/**
 * 作者
 *
 * @author ljsy
 **/
public class Author {
    private String name;
    private String dynasty;
    private String lifeTime;
    private String pinyin;

    @Override
    public String toString() {
        return "Author{" +
                "name='" + name + '\'' +
                ", dynasty='" + dynasty + '\'' +
                ", lifeTime='" + lifeTime + '\'' +
                '}';
    }

    public String getPinyin() {
        return pinyin;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        char familyName = name.charAt(0);
        try {
            String[] pinyins = PinyinHelper.toHanyuPinyinStringArray(familyName, new HanyuPinyinOutputFormat());
            pinyin = pinyins[0].substring(0, 1);
        } catch (BadHanyuPinyinOutputFormatCombination badHanyuPinyinOutputFormatCombination) {
            badHanyuPinyinOutputFormatCombination.printStackTrace();
        }
        this.name = name;
    }

    public String getDynasty() {
        return dynasty;
    }

    public void setDynasty(String dynasty) {
        this.dynasty = dynasty;
    }

    public String getLifeTime() {
        return lifeTime;
    }

    public void setLifeTime(String lifeTime) {
        this.lifeTime = lifeTime;
    }
}
