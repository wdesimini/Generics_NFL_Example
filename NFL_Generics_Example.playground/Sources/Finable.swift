import Foundation

public protocol Finable {
    associatedtype FinableActionType
    typealias FinableAction = Action<Self>
    var name: String { get }
    var teamId: UUID { get }
    func perform(action: FinableActionType) -> FinableAction
}
