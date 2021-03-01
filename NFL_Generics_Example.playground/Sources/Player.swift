import Foundation

public class Player: Person, Finable {
    public var teamId: UUID
    
    public init(name: String, teamId: UUID) {
        self.teamId = teamId
        super.init(name: name)
    }
}
