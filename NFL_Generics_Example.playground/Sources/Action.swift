public struct Action<PerformerType: Finable> {
    public enum ActionType {
        case hitOpposingPlayerInHead
        case breakCovidProtocol
    }
    
    public let type: ActionType
    public let performer: PerformerType
    
    public init(type: ActionType, performer: PerformerType) {
        self.type = type
        self.performer = performer
    }
}
