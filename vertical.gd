extends Node2D

@onready var player: CharacterBody2D = %player

var stream: AudioStreamSynchronized

func _ready() -> void:
	stream = $AudioStreamPlayer2D.stream
	stream.set_sync_stream_volume(0, 0.0)
	$AudioStreamPlayer2D.play()

func _process(delta: float) -> void:
	var intensity = clamp((player.position.x-64)/1000.0, 0, 1)
	var mystery = clamp((player.position.y-64)/500.0, 0, 1)
	
	stream.set_sync_stream_volume(1, -40 + intensity*40)
	stream.set_sync_stream_volume(2, -40 + mystery*40)
	
	intensity = int(intensity*100)
	mystery = int(mystery*100)
	%intensity.text = str(intensity, "%")
	%mystery.text = str(mystery, "%")
