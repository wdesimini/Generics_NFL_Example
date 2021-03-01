public protocol League {
    func handle<T>(action: Action<T>)
}
