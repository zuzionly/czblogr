class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/post", controller: "post",action:"list")
		"500"(view:'/error')
        "404"(view:'/404')
        "/about"(view:'/about')
        "/guestbook"(view:'/guestbook')
        "/settings"(view:'/settings')
        "/admin"(view:'/admin',controller: "post",action: "admin")
	}
}
