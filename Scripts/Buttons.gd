extends Node

@onready var player = %player
const SAVE_PATH := "user://save.tres"

func _on_save_pressed(): #These signals should be in their own scripts, not the player script
	var save_file = serializer.new()
	save_file.player.player_position = %player.global_position
	save_file._save_game(SAVE_PATH)
	

func _on_load_pressed():
	var save_file = serializer.new()
	save_file._load_game()
	
	%player.global_position = save_file.player.player_position
