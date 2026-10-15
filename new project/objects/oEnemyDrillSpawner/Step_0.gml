spawn_timer++


if (spawn_timer >= spawn_interval) {
    spawn_timer = 0;
    random_enemy = irandom(2)
    // Spawn at a random X position, fixed Y (adjust to your needs)
    var _x = irandom_range(0, room_width);
    var _y = irandom_range(0, room_height);
    if random_enemy < 1{
		instance_create_layer(_x, _y, "Instances", oTopDownDrill);
	}
	else{
		instance_create_layer(_x, _y, "Instances", oEnemyDrill);
	}
	spawn_interval -= spawn_timer
}