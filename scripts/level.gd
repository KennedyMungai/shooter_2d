extends Node2D

var test_array: Array[String] = ['Something', 'in', 'the', 'way']

func _ready() -> void:
	print('The level is ready')
	
	for i in test_array:
		print(i)


func _process(delta: float) -> void:
	print('I have a big grown male chicken')
