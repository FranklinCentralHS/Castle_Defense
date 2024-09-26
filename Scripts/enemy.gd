extends CharacterBody2D
class_name baddie


@onready var nav: NavigationAgent2D = $NavigationAgent2D 
@export var health = 100
@export var speed = 10
@export var damage = 1
@export var visibility = false


var accel = 7


    


func _process(delta):
    var direction = Vector3()
    nav.target_position = Vector2(2496,1304)

    direction = nav.get_next_path_position()-global_position
    direction = direction.normalized()

    velocity = velocity.lerp(direction*speed*2,accel*delta)
    move_and_slide()



