extends Node2D

@onready var player: CharacterBody2D = %player

func _ready() -> void:
	$AudioStreamPlayer.play()



func _on_base_body_entered(body: Node2D) -> void:
	if $AudioStreamPlayer["parameters/switch_to_clip"] == "Base":
		return
	
	if $AudioStreamPlayer["parameters/switch_to_clip"] == "Intro":
		return
	
	$AudioStreamPlayer["parameters/switch_to_clip"] = "-> Base"


func _on_end_body_entered(body: Node2D) -> void:
	if $AudioStreamPlayer["parameters/switch_to_clip"] == "End":
		return
	
	$AudioStreamPlayer["parameters/switch_to_clip"] = "-> End"


func _on_low_hp_body_entered(body: Node2D) -> void:
	if $AudioStreamPlayer["parameters/switch_to_clip"] == "Low_HP":
		return
	
	$AudioStreamPlayer["parameters/switch_to_clip"] = "-> Low_HP"
