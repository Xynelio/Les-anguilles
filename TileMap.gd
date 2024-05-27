extends TileMap


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func update_grid_state(grid_state_dict):
	for cell in grid_state_dict:
		if  grid_state_dict[cell] == 1:
			self.set_cell(0, cell, -1, Vector2i(0, 0))
		elif  grid_state_dict[cell] == 0:
			self.erase_cell(0, cell)
	
