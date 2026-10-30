extends Node2D

const PLAYER = preload("res://GameObjects/Player/player.tscn")
var player_count := 4

@onready var dealer: Dealer = $Dealer

func _ready() -> void:
	add_players_to_dealer(player_count)
	print(dealer.players)
	dealer.deal_cards_to_players()


func add_player_to_dealer(plr_id: int) -> void:
	var player: Player = PLAYER.instantiate() as Player
	player.player_id = plr_id
	add_child(player)
	dealer.add_player(player)

func add_players_to_dealer(nb_of_players: int) -> void:
	for i: int in range(nb_of_players):
		add_player_to_dealer(i)
