extends Sprite


func _process(delta):
	self.scale = Vector2(0.2,0.2)
	global_position = get_global_mouse_position()
	
	if Input.is_action_just_released("left_click"):
		
		queue_free()
