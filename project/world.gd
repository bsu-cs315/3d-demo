extends Node3D

@export var power := 10.0
var score := 0:
	set(value):
		score = value
		%ScoreLabel.text = "Score: %d" % score


func _physics_process(_delta: float) -> void:
	if Input.is_action_just_pressed("launch"):
		$Bird.apply_impulse(Vector3.FORWARD * power)


func _on_bird_body_entered(body: Node) -> void:
	if body.is_in_group("targets"):
		score += 10
