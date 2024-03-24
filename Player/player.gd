extends CharacterBody2D

@export var speed: int = 35

func handleInput():
	# the order "ui_left" ... is madatory!
	var moveDirection = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = moveDirection * speed
	
func _physics_process(delta):
	handleInput()
	move_and_slide()
