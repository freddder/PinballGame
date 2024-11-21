extends StaticBody2D

@onready var polygon_2d = $Polygon2D
@onready var collision_polygon_2d = $CollisionPolygon2D

# Called when the node enters the scene tree for the first time.
func _ready():
	set_editable_instance(polygon_2d, true)
	collision_polygon_2d.polygon = polygon_2d.polygon
	
	for i in collision_polygon_2d.polygon.size():
		collision_polygon_2d.polygon.set(i, collision_polygon_2d.polygon[i] + global_position)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
