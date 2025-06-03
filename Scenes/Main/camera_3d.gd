# Attach this script to your Camera3D node.
extends Camera3D

@export var target: Node3D          # The object you want the camera to track.
@export var offset: Vector3 = Vector3(0, 5, -10)  # Offset relative to the target.
@export var smooth_speed: float = 5.0  # Smoothing factor; adjust as needed.

func _process(delta):
	if target:
		# Calculate the desired position relative to the target.
		var desired_position = target.global_transform.origin + offset
		
		# Smoothly interpolate the current camera position to the desired position.
		global_transform.origin = global_transform.origin.linear_interpolate(desired_position, smooth_speed * delta)
		
		# Make sure the camera always faces the target.
		look_at(target.global_transform.origin, Vector3.UP)
