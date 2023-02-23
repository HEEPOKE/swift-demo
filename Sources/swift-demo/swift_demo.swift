@main
public struct swift_demo {
    public private(set) var text = "Hello, World!"

    public static func main() {
        print(swift_demo().text)
    }
}
