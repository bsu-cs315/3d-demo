extends Node3D

@export var power := 10.0

func _physics_process(_delta: float) -> void:
	if Input.is_action_just_pressed("launch"):
		$Bird.apply_impulse(Vector3.FORWARD * power)
