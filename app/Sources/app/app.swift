@main
public struct app {
    public private(set) var text = "Hello, World!"

    public static func main() {
        print(app().text)
    }
}
