class_name Dealer
extends Node2D


var players: Array[Player]
var player_count := 0

const DECK = preload("res://GameObjects/Deck/deck.tscn")
var deck: Deck




func _ready() -> void:
	deck = DECK.instantiate() as Deck
	add_child(deck)
	print(players)
	pass
	


func deal_cards_to_players() -> void:
	var c_count := 0
	for c: Card in deck.current_deck:
		var current_player: Player = players[c_count%player_count]
		give_card_to_player(c,current_player)
		c_count += 1
	for p: Player in players:
		print(p.cards)


func add_player(p: Player) -> void:
	players.append(p)
	player_count = players.size()


func give_card_to_player(c: Card, p: Player) -> void:
	p.cards.append(c)
