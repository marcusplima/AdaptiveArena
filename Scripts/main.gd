extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func _input(event):
	if event.is_action_pressed("ui_right"):
		$Node3D_hand_foam.position.x += 0.01
	if event.is_action_pressed("ui_left"):
		$Node3D_hand_foam.position.x -= 0.01
	if event.is_action_pressed("ui_up"):
		$Node3D_hand_foam.position.z -= 0.01
	if event.is_action_pressed("ui_down"):
		$Node3D_hand_foam.position.z += 0.01

func _unhandled_input(event):
	if event is InputEventScreenTouch and event.pressed == true:
		print (event.position)  # the position of the touch
