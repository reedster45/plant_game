extends TextureProgress


signal Food_empty

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	_check_empty()

func _check_empty():
	if value <= 0:
		emit_signal("Food_empty")
	

func _on_FoodTimer_timeout():
	value -= 50
	$FoodTimer.startTimer()
