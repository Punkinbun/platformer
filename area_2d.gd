extends Area2D
@onready var label: Label = $Label

func _ready():
	self.body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node) -> void:
	if body.name == "Player":
		print("You win!")
		label.visible = true
	
