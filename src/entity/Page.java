package entity;

/**
 * @author ljsy
 **/
public class Page {
    private int pageNo;
    private int totalPages;
    /**
     * 一页中的对象的数量
     */
    private int size = 10;
    /**
     * 数据库查询开始点
     */
    private int start = 0;

    /**
     * @param pageNo    当前页数
     * @param size      每页对象数量
     * @param itemCount 数据库中对象总数
     */
    public Page(int pageNo, int size, int itemCount) {
        itemCount = itemCount % size == 0 ? itemCount / size : (itemCount / size) + 1;
        setTotalPages(itemCount);

        setSize(size);
        setStart((size - 1) * size);
        setPageNo(pageNo);
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        if (start < 0) {
            start = 0;
        }
        this.start = start;
    }

    public int getPageNo() {
        return pageNo;
    }

    public void setPageNo(int pageNo) {
        if (pageNo > totalPages) {
            pageNo = totalPages;
        }
        if (pageNo < 1) {
            pageNo = 1;
        }
        this.pageNo = pageNo;
    }

    public int getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(int totalPages) {
        if (totalPages < 1) {
            totalPages = 1;
        }
        this.totalPages = totalPages;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }
}
