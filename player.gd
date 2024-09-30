extends CharacterBody2D

@export var speed = 30

func _physics_process(delta: float) -> void:
	var x_input = Input.get_axis("ui_left", "ui_right")
	var y_input = Input.get_axis("ui_up", "ui_down")
	
	velocity += speed * Vector2(x_input, y_input).normalized()
	velocity *= 0.9
	move_and_slide()
