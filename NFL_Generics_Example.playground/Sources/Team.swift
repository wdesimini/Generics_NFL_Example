import Foundation

public struct Team: Finable {
    public enum Action {
        case breakCovidProtocol
    }
    
    public let teamId: UUID
    public var name: String
    public var location: String
    
    public init(teamId: UUID, name: String, location: String) {
        self.teamId = teamId
        self.name = name
        self.location = location
    }
    
    public func perform(action: Action) -> FinableAction {
        .init(type: .teamAction(action), performer: self)
    }
}
