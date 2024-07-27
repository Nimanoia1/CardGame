extends MarginContainer

# Preload the CardsDatabase script
var CardsDatabase = preload("res://Assets/Cards/CardsDatabase.gd")

# Define the card name
var cardname = 'BalancedWorker'

# Fetch the card information from the database using the card name
var CardInfo 

func _ready():
	CardInfo = CardsDatabase.DATA[cardname]
	print(CardInfo)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
