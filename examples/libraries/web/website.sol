import App from "web/website"

App
    .init("0.0.0.0:8080")
    .get("/", fn (request) {
        return "This is the home page. Try visiting /hello to get a message."
    })
    .get("/hello", fn (request) {
        return "Hello, world!"
    })
    .get("/hello/:name", fn (request) {
        return "Hello, " + request.get("name")
    })
    .run()