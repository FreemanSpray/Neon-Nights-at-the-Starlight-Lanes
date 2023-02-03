extends KinematicBody2D


#Variables
var velocity = Vector2(1,0)
var speed = 40
var hp = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var collision = move_and_collide(speed*velocity*delta)
	if collision:
		if collision.collider.name == "EnemyBarrier":
			# Inflict damage on player's life total
			GlobalVars._wasHit(1000)
			# Despawn
			queue_free()
		else:
			hp-=1
			# Despawn ball that hit
			collision.collider.queue_free()
			if hp == 0:
				# add points
				GlobalVars._score+=3000
				# Despawn if out of HP
				queue_free()
