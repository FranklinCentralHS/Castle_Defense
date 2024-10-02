extends Tower
class_name Archer_Tower



func _on_area_2D_body_entered(body):
    if body == baddie:
        return