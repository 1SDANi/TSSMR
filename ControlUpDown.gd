extends TextureRect

export (float) var fMovePercent : float
export (float) var fMoveTarget : float
export (bool) var bMoveDownAtStart : bool

var fProgress : float
var bMoveDown : bool
var fOriginalBegin : float

func _ready() -> void:
	bMoveDown = bMoveDownAtStart
	fProgress = 0
	fOriginalBegin = get_begin().y

func _process(delta) -> void:
	var iDirection : int = 1 if bMoveDown else -1
	set_begin(Vector2(get_begin().x, (get_begin().y + iDirection * fMovePercent * get_rect().size.y * delta)))
	
	if bMoveDown:
		if get_begin().y >= fOriginalBegin + get_rect().size.y * fMoveTarget:
			bMoveDown = false
			set_begin(Vector2(get_begin().x, fOriginalBegin + get_rect().size.y * fMoveTarget))
	else:
		if get_begin().y <= fOriginalBegin:
			bMoveDown = true
			set_begin(Vector2(get_begin().x, fOriginalBegin))