extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

@export var object_templates: Array[PackedScene]

#CAPTANDO O CLICK DO MOUSE
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == 1:
			if event.pressed:
				spaw_object(event.position)
				
#CRIANDO OBJETO/ o Vector2 é um tipo de variavel
func spaw_object(position: Vector2) -> void:
	var index: int = randi_range(0, object_templates.size() - 1)
	var object_templates = object_templates[index]
	var object: RigidBody2D = object_templates.instantiate()
	object.position = position
	add_child(object)
