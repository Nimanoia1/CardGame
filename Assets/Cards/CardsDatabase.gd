extends Resource
# WorkerTiles = [TileType, Amount, EastWorkers, SouthWorkers, WestWorkers, NorthWorkers]
#Cardinal Directions Based on Original Layout of Tile
# FarmTiles = [TileType, Amount, Harvest]
#GoldmineTiles = [TileType, Amount, Profit]
#MarketTiles = [TileType, Amount, SalePrice]
#WaterTiles = [TileType, Amount]
#TempleTiles = [TileType, Amount, OwnerProfit, Co-OwnerProfit]
#WorshipTiles = [TileType, Amount]
enum {BalancedWorker, FocusedWorker, HeavyFocusWorkerNorth, HeaveyFocusWorkerSouth, SingleFarm, DoubleFarm, SmallGoldmine, MediumGoldmin, SmallMarket, MediumMarket, BigMarket, Water, Temple, Worship}

const DATA = {
	BalancedWorker : 
		["Worker", 4, 1, 1, 1, 1],
	FocusedWorker :
		["Worker", 5, 2, 1, 0, 1],
	HeavyFocusWorkerNorth :
		["Worker", 1, 3, 0, 0, 1],
	HeaveyFocusWorkerSouth :
		["Worker", 1, 3, 1, 0, 0],
	SingleFarm :
		["Farm", 6, 1], 
	DoubleFarm : 
		["Farm", 2, 2],
	SmallGoldmine :
		["Goldmine", 2, 1], 
	MediumGoldmin :
		["Goldmine", 1, 2],
	SmallMarket :
		["Market", 2, 2],
	MediumMarket : 
		["Market", 4, 3],
	BigMarket :
		["Market", 1, 4],
	Water :
		["Water", 3],
	Temple : 
		["Temple", 5, 6, 3],
	Worship :
		["Worship", 2],
	}
