 image_alpha += 0.2
 
 if direction = 0{
	 x -= 1
	 image_angle = 0
	 image_xscale = 1
 }
 else if direction = 1{
	 x += 1
	 image_angle = 0
	 image_xscale = -1
 }
 else if direction = 2{
	 y -= 1
	 image_angle = 270
	 image_xscale = 1
 }
 else if direction = 3{
	 y += 1
	 image_angle = 90
	 image_xscale = 1
 }
 
 if x < -24{
	instance_destroy(self)
}
if x > 504{
	instance_destroy(self)
}
if y < -24{
	instance_destroy(self)
}
if y > 294{
	instance_destroy(self)
}
