public enum ActionType {
    case playerAction(_ action: Player.Action)
    case teamAction(_ action: Team.Action)
}

public struct Action<PerformerType: Finable> {
    public let type: ActionType
    public let performer: PerformerType
    
    public init(type: ActionType, performer: PerformerType) {
        self.type = type
        self.performer = performer
    }
}
