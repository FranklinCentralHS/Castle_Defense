extends Node2D
class_name Game

@onready var baddies = $Game/enemies
@export var basic_enemy = preload("res://Scenes/ufo.tscn")


func _onready():
    var new_baddie = basic_enemy.instantiate()
    baddies.add_child(new_baddie)
    baddies.visible = true
    