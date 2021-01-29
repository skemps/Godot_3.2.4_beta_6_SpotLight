extends Spatial

const MESH_SCENE_MONKEY = preload("res://monkey.tscn")
var meshInstance

var reinstantiate = 0

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if reinstantiate > 0:
		reinstantiate -= 1
		if reinstantiate <= 0:
			for z in 5:
				for x in 5:
					var instance = MESH_SCENE_MONKEY.instance()
					instance.rotate_y(PI * randf())
					instance.transform.origin.x = x 
					instance.transform.origin.z = z 
					$meshes.add_child(instance)
	
func _input(event):
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_R:
			reinstantiate = 10
			for c in $meshes.get_children():
				c.queue_free()
			


