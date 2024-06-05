extends TextureRect

var upgrade = null
@onready var item_texture = $ItemTexture

func _ready():
	if upgrade != null:
		item_texture.texture = load(UpgradeDb.UPGRADES[upgrade]["icon"])
