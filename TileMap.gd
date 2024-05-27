extends TileMap


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func update_grid_state(grid_state_dict):
	for cell in grid_state_dict:
		self.set_cell(0, cell, grid_state_dict[cell])
	
