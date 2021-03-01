import UIKit

/*
 initial types
 */

var nfl = NFL()

let saints = Team(teamId: UUID(), name: "Saints", location: "New Orleans")
let ravens = Team(teamId: UUID(), name: "Ravens", location: "Baltimore")

nfl.favoriteTeamIds.insert(ravens.teamId)

let lockerroomCelebration = Action(type: .breakCovidProtocol, performer: saints)
let causeOutbreak = Action(type: .breakCovidProtocol, performer: ravens)

nfl.handle(action: lockerroomCelebration)
nfl.handle(action: causeOutbreak)
