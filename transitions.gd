extends Node2D

@onready var player: CharacterBody2D = %player

func _ready() -> void:
	$AudioStreamPlayer2D.play()



func _on_base_body_entered(body: Node2D) -> void:
	if $AudioStreamPlayer2D["parameters/switch_to_clip"] == "Base":
		return
	
	if $AudioStreamPlayer2D["parameters/switch_to_clip"] == "Intro":
		return
	
	$AudioStreamPlayer2D["parameters/switch_to_clip"] = "-> Base"


func _on_end_body_entered(body: Node2D) -> void:
	if $AudioStreamPlayer2D["parameters/switch_to_clip"] == "End":
		return
	
	$AudioStreamPlayer2D["parameters/switch_to_clip"] = "-> End"


func _on_low_hp_body_entered(body: Node2D) -> void:
	if $AudioStreamPlayer2D["parameters/switch_to_clip"] == "Low_HP":
		return
	
	$AudioStreamPlayer2D["parameters/switch_to_clip"] = "-> Low_HP"
