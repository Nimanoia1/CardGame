extends MarginContainer

# Preload the CardsDatabase script
@onready var CardsDatabase = preload("res://Assets/Cards/CardsDatabase.gd").new()
# Define the card name
var cardname = 'BalancedWorker'

# Fetch the card information from the database using the card name
@onready var CardInfo = CardsDatabase.DATA[CardsDatabase.get(cardname)]

func _ready():
	print(CardInfo)
	
	# Get all items where the first item is named 'worker'
	var player_deck = get_worker_cards(CardsDatabase.DATA)
	var player_hand = starter_hand(player_deck)
	print(player_deck)
	print("======")
	print(player_hand)
	
func get_worker_cards(data):
	var worker_cards = []
	for key in data.keys():
		var card = data[key]
		if card[0] == 'Worker':
			for i in range(card[1]):
				worker_cards.append(card)
	worker_cards.shuffle()
	return worker_cards

func starter_hand(deck):
	var starter_hand_card_num = 3
	var top_card
	var player_hand = []
	for i in range(starter_hand_card_num):
		top_card = deck[deck.size() - 1]
		deck.resize(deck.size() - 1)
		player_hand.append(top_card)
	return player_hand
		
		
		
