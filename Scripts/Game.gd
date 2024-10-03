extends Node2D
class_name Game

@onready var baddies = $Enemies
@onready var timer = $Timer
@export var basic_enemy = preload("res://Scenes/ufo.tscn")
@onready var tilemap = $TileMap
@export var archer_tower = preload("res://Scenes/archer_tower.tscn")
@onready var towers = $Towers

func _input(event):
	if event.is_action_pressed("mouse_click"):
		_place_tower(Vector2i(get_local_mouse_position()))

func _on_ready():
	var new_baddie = basic_enemy.instantiate()
	baddies.add_child(new_baddie)
	timer.start()

func _on_timer_timeout():
	_on_ready()

func _place_tower(pos):
	var selected_cell = tilemap.local_to_map(tilemap.get_local_mouse_position())
	var cell_type = tilemap.get_cell_source_id(0,selected_cell)
	if cell_type == 8:
		tilemap.set_cell(0, selected_cell, 7, Vector2(0,0), 0)
		var new_tower = archer_tower.instantiate()
		new_tower.position = pos
		towers.add_child(new_tower)
		
