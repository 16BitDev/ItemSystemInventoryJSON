extends Sprite2D

@export var ID = "0"
@export_dir var f

func _ready():
	texture = load(f + "/" + ItemData.get_texture(ID))


func _on_body_entered(body):
	get_parent().find_child("Inventory").add_item(ID)
	queue_free()
