import Chaqmoq

let app = Chaqmoq()
app.get { _ in
    "Hello World"
}
try app.run()
