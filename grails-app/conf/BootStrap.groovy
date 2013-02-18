import czblogr.Post

class BootStrap {

    def init = { servletContext ->
        def post = new Post(title: "1123",slug: "12312",content: "12312")
        post.save()
        post = new Post(title: "11232",slug: "123122",content: "12312")
        post.save()
        post = new Post(title: "11233",slug: "123123",content: "12312")
        post.save()
        post = new Post(title: "11234",slug: "123124",content: "12312")
        post.save()
        post = new Post(title: "11235",slug: "123125",content: "12312")
        post.save()
        post = new Post(title: "11236",slug: "123126",content: "12312")
        post.save()
        post = new Post(title: "11237",slug: "123127",content: "12312")
        post.save()
        post = new Post(title: "11238",slug: "123128",content: "12312")
        post.save()
        post = new Post(title: "11239",slug: "123129",content: "12312")
        post.save()
        post = new Post(title: "112310",slug: "1231210",content: "12312")
        post.save()
    }
    def destroy = {
    }
}
