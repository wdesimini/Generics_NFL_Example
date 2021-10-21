import UIKit

/*
 initial types
 */

var nfl = NFL()

let saints = nfl.addTeam(name: "Saints", location: "New Orleans")
let ravens = nfl.addTeam(name: "Ravens", location: "Baltimore")

let lockerroomCelebration = saints.perform(action: .breakCovidProtocol)
let causeOutbreak = ravens.perform(action: .breakCovidProtocol)

nfl.handle(action: lockerroomCelebration)
nfl.handle(action: causeOutbreak)
