extends CharacterBody2D

const SPEED = 300.0

var dir = Vector2.ZERO
func _physics_process(delta: float) -> void:
	mover()
	move_and_slide()
	rodar_corpo()
func mover():
	dir = Input.get_vector("left", "right", "up", "down")
	velocity = dir * SPEED
	
func rodar_corpo():
	look_at(get_global_mouse_position())
