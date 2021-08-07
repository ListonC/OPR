switch(type){
    case "A":
        sprite_index = spr_A;
		Red = 128;
		Grn = 0;
		Blu = 42;
		Mod = 8;
		visible = true;
    break;
    case "B":
        sprite_index = spr_B;
		Red = 22;
		Grn = 89;
		Blu = 128;
		Mod = 8;
		visible = true;
    break;
    case "C":
        sprite_index = spr_C;
		Red = 0;
		Grn = 102;
		Blu = 24;
		Mod = 6;
		visible = true;
    break;
    case "D":
        sprite_index = spr_D;
		Red = 128;
		Grn = 117;
		Blu = 20;
		Mod = 6;
		visible = true;
    break;
    case "E":
        sprite_index = spr_E;
		Red = 128;
		Grn = 81;
		Blu = 0;
		Mod = 8;
		visible = true;
    break;
    case "0":
        sprite_index = spr_blank;
		visible = false;
		isDying = false;
		Mod = 0;
    break;
}

if(matched){
deathcount += 1;
    if(deathcount == 14){
        type = "0";
        matched = false;
        obj_master.playerScore = obj_master.playerScore + obj_master.playerCombo;
		ds_list_add(Audio.playlist, SFX.SOLVE);
    }
isDying = true;
}

if (isHot)
{
	counter += 1;
	counter = clamp(counter, 0, 4);
} else {
	counter = 0;	
}

if (ySlot < 4)
	isNervous = true;
else { isNervous = false; }
