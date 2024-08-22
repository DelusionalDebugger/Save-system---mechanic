extends Resource
class_name serializer

const SAVE_PATH := "user://save.tres"

@export var player : player_data = player_data.new()

func _save_game(SAVE_PATH):
	ResourceSaver.save(self, SAVE_PATH)
	

func _load_game():
	if ResourceLoader.exists(SAVE_PATH):
		var save_data = ResourceLoader.load(SAVE_PATH, "")
		player = save_data.player
		 #null
		#no_data_display.visible = true
		#var time_in_seconds : int = 3
		#await get_tree().create_timer(time_in_seconds).timeout
		#no_data_display.visible = false
		
		#Needs signal maybe to display label
