timer ++
image_alpha += 0.01

if (timer >= interval) {
	if y < 270 and y > 0{
		if keyboard_check(vk_left) and direction != 0{
			x_speed = -movement_speed
			y_speed = 0
			direction = 0
			image_angle = 0
			image_xscale = 1
			timer = 0
			image_alpha = 0.7
	}
		else if keyboard_check(vk_right) and direction != 1{
			x_speed = movement_speed
			y_speed = 0
			direction = 1
			image_angle = 0
			image_xscale = -1
			timer = 0
			image_alpha = 0.7
	}}
	if x < 480 and x > 0{
		if keyboard_check(vk_up) and direction != 2{
			x_speed = 0
			y_speed = -movement_speed
			direction = 2
			image_angle = 270
			image_xscale = 1
			timer = 0
			image_alpha = 0.7
	}
		else if keyboard_check(vk_down) and direction != 3{
			x_speed = 0
			y_speed = movement_speed
			direction = 3
			image_angle = 90
			image_xscale = 1
			timer = 0
			image_alpha = 0.7
	}}}
x += x_speed
y += y_speed

if abs(x_speed) < 7 and abs(y_speed) < 7{
	if direction = 0{
		x_speed -= acceleration
}
	else if direction = 1{
		x_speed += acceleration
}
	else if direction = 2{
		y_speed -= acceleration
}
	else if direction = 3{
		y_speed += acceleration
}}

if x < -24{
	x = 504
}
if x > 504{
	x = -24
}
if y < -24{
	y = 294
}
if y > 294{
	y = -24
}

if lives <= 0{
	game_end()
}