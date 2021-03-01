import Foundation

public struct NFL: League {
    public var favoriteTeamIds = Set<UUID>()
    
    public init() {}
    
    public func handle<T>(action: Action<T>) {
        guard !favoriteTeamIds.contains(action.performer.teamId) else {
            return
        }
        
        if shouldFine(action: action) {
            fine(action: action)
        }
    }
    
    private func shouldFine<T>(action: Action<T>) -> Bool {
        switch action.type {
        case .hitOpposingPlayerInHead:
            return true
        case .breakCovidProtocol:
            return true
        }
    }
    
    private func fine<T>(action: Action<T>) {
        print("\(action.performer.name) has been fined")
    }
}
