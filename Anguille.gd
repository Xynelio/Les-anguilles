extends Node
var position:Array
var length:int
var orientation:int # 0=up, 1=left, 2=down, 3=right
var direction_dict = {"up":0,"right":1,"left":3}

# Called when the node enters the scene tree for the first time.
func _ready():
	position = [Vector2i(3,4),Vector2i(4,4),Vector2i(5,4),Vector2i(5,5)]
	orientation = 0
	print(position)
	move_in_direction("up")
	print(position)
	move_in_direction("right")
	print(position)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func move_in_direction(direction:String) -> void:
	var move
	orientation = orientation + direction_dict[direction] % 4
	match orientation:
		0: #up
			move = Vector2i(0,-1)
		1: #right
			move = Vector2i(1,0)
		2: #down
			move = Vector2i(0,1)
		3: #left
			move = Vector2i(-1,0)
	position.push_front(position.front()+move)
	position.pop_back()

func _move_to(coordinates:Vector2i) -> void:
	pass
