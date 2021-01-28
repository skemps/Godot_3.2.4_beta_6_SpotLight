extends Spatial

var meshInstance

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_R:
			meshInstance = MeshInstance.new()
			meshInstance.mesh = CubeMesh.new()
			self.add_child(meshInstance)

