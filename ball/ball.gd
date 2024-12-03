extends RigidBody2D

class_name Ball

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	pass


func _on_body_entered(body):
	var bumper := body as Bumper
	if bumper:
		print("bumping")
		var dir := (global_position - bumper.global_position).normalized()
		var magnetude := linear_velocity.length()
		linear_velocity = Vector2.ZERO
		apply_central_impulse(dir * magnetude * 3)
