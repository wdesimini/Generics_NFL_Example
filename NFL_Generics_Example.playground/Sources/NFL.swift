import Foundation

public struct NFL: League {
    private var favoriteTeamIds = Set<UUID>()
    
    public init() {}
    
    public mutating func addTeam(name: String, location: String) -> Team {
        let team = Team(teamId: UUID(),
                        name: name,
                        location: location)
        
        if markAsFavorite(team: team) {
            favoriteTeamIds.insert(team.teamId)
        }
        
        return team
    }
    
    private func markAsFavorite(team: Team) -> Bool {
        let favs = ["Bucs", "Chiefs", "Ravens"]
        return favs.contains(team.name)
    }
    
    public func handle<T>(action: Action<T>) {
        if willFine(action: action) {
            fine(action: action)
        }
    }
    
    private func fine<T>(action: Action<T>) {
        print("\(action.performer.name) has been fined")
    }
    
    public func shouldFine<T>(action: Action<T>) -> Bool {
        switch action.type {
        case .playerAction(let action):
            switch action {
            case .hitOpposingPlayerInHead:
                return true
            }
        case .teamAction(let action):
            switch action {
            case .breakCovidProtocol:
                return true
            }
        }
    }
    
    private func willFine<T>(action: Action<T>) -> Bool {
        guard shouldFine(action: action) else {
            return false
        }
        
        let teamId = action.performer.teamId
        return !favoriteTeamIds.contains(teamId)
    }
}
