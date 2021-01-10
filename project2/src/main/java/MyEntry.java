public class MyEntry {
    private String username = null, title = null, body = null;
    private int postid = 0;
    private String modified = null, created = null;

    MyEntry() {
    }

    MyEntry(String username, int postid, String title, String body, String modified, String created) {
        this.username = username;
        this.postid = postid;
        this.title = title;
        this.body = body;
        this.modified = modified;
        this.created = created;
    }

    public String getCreated() {
        return created;
    }

    public void setCreated(String created) {
        this.created = created;
    }

    public String getModified() {
        return modified;
    }

    public void setModified(String modified) {
        this.modified = modified;
    }

    public int getPostid() {
        return postid;
    }

    public void setPostid(int postid) {
        this.postid = postid;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
