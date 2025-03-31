local KarmaClass = require(game.ReplicatedStorage.Karma)
local ka = KarmaClass.new()

ka:getKarma()
ka:plusKarma(15)
ka:getKarma()
ka:minusKarma(10)
ka:getKarma()