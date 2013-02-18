package czblogr

class Comment {

    Post post
    String comment
    String name
    String url
    String email
    Date dateCreated

    public int compareTo(Object o) {
        return dateCreated.compareTo(o.dateCreated)
    }

    static belongsTo = Post
    static constraints = {
        name(nullable:false, blank:false)
        url(nullable:true, blank:true, url:true)
        email(nullable:true, blank:true, email:true)
    }
}
