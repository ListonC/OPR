switch(type){
    case "A":
        sprite_index = spr_A;
		visible = true;
    break;
    case "B":
        sprite_index = spr_B;
		visible = true;
    break;
    case "C":
        sprite_index = spr_C;
		visible = true;
    break;
    case "D":
        sprite_index = spr_D;
		visible = true;
    break;
    case "E":
        sprite_index = spr_E;
		visible = true;
    break;
    case "0":
        sprite_index = spr_blank;
		visible = false;
		isDying = false;
    break;
}

if(matched){
deathcount += 1;
    if(deathcount == 14){
        type = "0";
        matched = false;
        obj_master.playerScore = obj_master.playerScore + obj_master.playerCombo;
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