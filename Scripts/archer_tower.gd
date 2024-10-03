extends Tower
class_name Archer_Tower

@onready var arrow = preload("res://Scenes/arrow.tscn")

func _on_area_2D_body_entered(body):
    if body.is_class(baddie):
        arrow.instantiate()


        