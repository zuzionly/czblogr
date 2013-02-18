package czblogr

class Post {

    Long id
    String title
    String slug
    String content
    boolean draft = true
    int views = 0
    Date dateCreated
    Date lastUpdated
    SortedSet comments

    static constraints = {
        slug unique: true
        title nullable:false, blank:false, length:1..50
        content nullable:false, blank:false, widget:'textarea'
        draft nullable:false
    }

    static mapping = {
        sort "lastUpdated":"desc"
        content type:'text'
        lastUpdated autoTimestamp:false
    }

    static hasMany = [comments:Comment]
}
