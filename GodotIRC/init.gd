tool
extends EditorPlugin

func _ready() -> void:
	pass

func _enter_tree():
	add_custom_type("GodotIRC", "Node", preload("res://addons/GodotIRC/GodotIRC.gd"), preload("./icon.png"))

func _exit_tree() -> void:
	remove_custom_type("GodotIRC")
