extends Node

@onready var tile_map = $"../TileMap"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
			
func init_grid():
	var grid_state_dict = {}
	for x in range(int(get_viewport().size.x / tile_map.scale.x)):
		for y in range(int(get_viewport().size.y / tile_map.scale.y)):
			grid_state_dict[Vector2i(x, y)] = -1
	return grid_state_dict
