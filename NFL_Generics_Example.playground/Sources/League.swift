public protocol League {
    func handle<T>(action: Action<T>)
    func shouldFine<T>(action: Action<T>) -> Bool
}
