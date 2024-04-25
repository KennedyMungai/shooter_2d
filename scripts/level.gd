extends Node2D

var test_array: Array[String] = ['Something', 'in', 'the', 'way']
var arbitrary_speed: float = 20.5

func _ready() -> void:
	print('The level is ready')
	
	for i in test_array:
		print(i)


func _process(delta: float) -> void:
	print(arbitrary_speed * delta)

