extends Node3D

@export var power := 10.0
var score := 0.0

var _displayed_score := 0.0:
	set(value):
		_displayed_score = value
		%ScoreLabel.text = "Score: %d" % ceilf(_displayed_score)

func _physics_process(_delta: float) -> void:
	_displayed_score = lerp(_displayed_score, score, 0.2)
	if Input.is_action_just_pressed("launch"):
		$Bird.apply_impulse(Vector3.FORWARD * power)


func _on_bird_body_entered(body: Node) -> void:
	if body.is_in_group("targets"):
		score += 10
