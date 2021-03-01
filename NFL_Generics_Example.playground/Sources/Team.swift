import Foundation

public class Team: Finable {
    public let teamId: UUID
    public var name: String
    public var location: String
    
    public init(teamId: UUID, name: String, location: String) {
        self.teamId = teamId
        self.name = name
        self.location = location
    }
}
