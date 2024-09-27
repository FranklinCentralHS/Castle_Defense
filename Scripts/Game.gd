extends Node2D
class_name Game

@onready var baddies = $"."
@onready var timer = $Timer
@export var basic_enemy = preload("res://Scenes/ufo.tscn")


func _on_ready():
	var new_baddie = basic_enemy.instantiate()
	baddies.add_child(new_baddie)
	timer.start()

func _on_timer_timeout():
	_on_ready()

func _place_tower():
	var current_mouse_position = get_global_mouse_position()
	if InputEventMouseButton() == true and 
