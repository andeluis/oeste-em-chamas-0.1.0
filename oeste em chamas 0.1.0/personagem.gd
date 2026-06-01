extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

func _physics_process(delta: float) -> void:
	# 1. Gravidade
	if not is_on_floor():
		velocity += get_gravity() * delta

	# 2. Pulo (Simples, sem pulo duplo)
	if Input.is_action_just_pressed("pular") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# 3. Direção e Movimento
	var direction = Input.get_axis("esquerda", "direita")
	
	if direction != 0:
		velocity.x = direction * SPEED
		$AnimatedSprite2D.flip_h = direction < 0
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	# 4. Máquina de Animação
	if not is_on_floor():
		if velocity.y > 0:
			pass
	elif direction != 0:
		$AnimatedSprite2D.play("run")       # Correndo no chão
	else:
		$AnimatedSprite2D.play("idle")      # Parado no chão

	move_and_slide()
