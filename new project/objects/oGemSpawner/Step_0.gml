spawn_timer++

if (spawn_timer >= spawn_interval) {
    spawn_timer = 0;
    random_gem = irandom(6)
    // Spawn at a random X position, fixed Y (adjust to your needs)
    var _x = irandom_range(0, room_width);
    var _y = irandom_range(0, room_height);
    if random_gem < 3{
		instance_create_layer(_x, _y, "Instances", oEmerald);
	}
	else if random_gem < 5{
		instance_create_layer(_x, _y, "Instances", oRuby);
	}
	else if random_gem = 6{
		instance_create_layer(_x, _y, "Instances", oDiamond);
	}
}
