import Foundation

public final class Player: Person, Finable {
    public enum Action {
        case hitOpposingPlayerInHead
    }
    
    public var teamId: UUID
    
    public init(name: String, teamId: UUID) {
        self.teamId = teamId
        super.init(name: name)
    }
    
    public func perform(action: Action) -> FinableAction {
        .init(type: .playerAction(action), performer: self)
    }
}
