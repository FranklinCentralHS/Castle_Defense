extends CharacterBody2D


func _process(_delta):
    self.move_and_slide()

    var x = self.position[0]
    var y = self.position[1]

    if x < -1232 or x > 2304 or y > 64 or y < -1952 :
        self.get_parent().remove_child(self)

func remove():
    self.get_parent().remove_child(self)