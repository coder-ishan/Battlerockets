extends KinematicBody2D
export var move_speed=250
export var stop_distance=20
func _process(delta):
	look_to_mouse()
	move_to_mouse()
	
func look_to_mouse():
	look_at(get_global_mouse_position())
	rotation_degrees=rotation_degrees+90
func move_to_mouse():
	if position.distance_to(get_global_mouse_position())>stop_distance:
		var direction =get_global_mouse_position()-position
		var normalised_direction=direction.normalized()
		move_and_slide(normalised_direction*move_speed)
