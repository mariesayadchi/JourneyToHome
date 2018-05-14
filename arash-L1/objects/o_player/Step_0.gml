
//get input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv;


if (place_meeting(x + hsp,y,o_wall))
{ while(!place_meeting(x + sign(hsp), y, o_wall)){
x = x+ sign(hsp);
}

hsp = 0 ;

}
x = x + hsp;

if(place_meeting(x,y+1, o_wall)&& key_jump){

vsp = -15;
}



vsp = vsp + grv;
if (place_meeting(x,y + vsp,o_wall))
{ while(!place_meeting(x , y+ sign(vsp) , o_wall)){
y = y+ sign(vsp);
}

vsp = 0 ;

}
y = y+ vsp;


//if building
/*
9
 7
10
 8
 6
 2
 1
 3
 4
11
 5
 */
if(place_meeting(x , y, o_buiding)){

if(!(instance_exists(o_speech))){
	var speech=0;
	var speech2=0;
	var suc=0;
	if(place_meeting(x , y, inst_n1)){
	 speech2 = instance_create_layer(inst_n1.x+20,inst_n1.y-40,"Instances_2",o_speech);
	speech2.sprite_index = s_speechn1;
	}
	if(place_meeting(x , y, inst_l1)){
	 speech2 = instance_create_layer(inst_l1.x+20,inst_l1.y-40,"Instances_2",o_speech);
	speech2.sprite_index = s_speechl1;
	}
	
	if(place_meeting(x , y, inst_m1)){
	 speech2 = instance_create_layer(inst_m1.x+20,inst_m1.y-40,"Instances_2",o_speech);
	speech2.sprite_index = s_speechm1;
	}
	
	
	if(place_meeting(x , y, inst_b1)){
	 speech = instance_create_layer(inst_b1.x+20,inst_b1.y-40,"Instances_2",o_speech);
	if(visit==6){	
	visit = visit +1;	
	suc=1;
	}
	}
	

	if(place_meeting(x , y, inst_b2)){
	 speech = instance_create_layer(inst_b2.x+20,inst_b2.y-40,"Instances_2",o_speech);
	if(visit==5){	
	visit = visit +1;
	suc=1;
	}
	}	
	
	if(place_meeting(x , y, inst_b3)){
	 speech = instance_create_layer(inst_b3.x+20,inst_b3.y-40,"Instances_2",o_speech);
	if(visit==7){	
	visit = visit +1;	
	suc=1;
	}
	}
	
	if(place_meeting(x , y, inst_b4)){
	 speech = instance_create_layer(inst_b4.x+20,inst_b4.y-40,"Instances_2",o_speech);
	if(visit==8){	
	visit = visit +1;	
	suc=1;
	}
	}
	
	if(place_meeting(x , y, inst_b5)){
	 speech = instance_create_layer(inst_b5.x+20,inst_b5.y-40,"Instances_2",o_speech);
	if(visit==10){	
	visit = visit +1;
	suc=1;
	
	}
	}
	
	
	if(place_meeting(x , y, inst_b6)){
	 speech = instance_create_layer(inst_b6.x+20,inst_b6.y-40,"Instances_2",o_speech);
	if(visit==4){	
	visit = visit +1;
	suc=1;
	}
	}
	
	if(place_meeting(x , y, inst_b7)){
	 speech = instance_create_layer(inst_b7.x+20,inst_b7.y-40,"Instances_2",o_speech);
	if(visit==1){	
	visit = visit +1;	
	suc=1;
	}
	}
	
	if(place_meeting(x , y, inst_b8)){
	 speech = instance_create_layer(inst_b8.x+20,inst_b8.y-40,"Instances_2",o_speech);
	if(visit==3){	
	visit = visit +1;	
	suc=1;
	}
	}
	
	if(place_meeting(x , y, inst_b9)){
	 speech = instance_create_layer(inst_b9.x+20,inst_b9.y-40,"Instances_2",o_speech);
	if(visit==0){	
	visit = visit +1;
	suc=1;
	}
	}
	if(place_meeting(x , y, inst_b10)){
	 speech = instance_create_layer(inst_b10.x+20,inst_b10.y-40,"Instances_2",o_speech);
	if(visit==2){	
	visit = visit +1;	
	suc=1;
	}
	}
	if(place_meeting(x , y, inst_b11)){
	 speech = instance_create_layer(inst_b11.x+20,inst_b11.y-40,"Instances_2",o_speech);
	if(visit==9){	
	visit = visit +1;	
	suc=1;
	}
	}
	
	
if(suc==1){speech.sprite_index=s_suc; suc=0; audio_play_sound(stamp,1,0);
	//instance_create_layer(0,0,"Instances_4",o_gameover)
if (place_meeting(x,y,inst_b5))	{
	speech.sprite_index = s_speech0;
instance_create_layer(0,0,"Instances_4",o_win);
instance_destroy();}
	}
else{
if(speech!=0){	
if(visit==0){	
speech.sprite_index = s_speech9;	
}
if(visit==1 && !(place_meeting(x , y, inst_b9))){	
speech.sprite_index = s_speech7;
}
if(visit==2 && !place_meeting(x , y, inst_b7)){	
speech.sprite_index = s_speech10;	
}

if(visit==3 && !place_meeting(x , y, inst_b10)){	
speech.sprite_index = s_speech8;	
}
if(visit==4 && !place_meeting(x , y, inst_b8)){	
speech.sprite_index = s_speech6;	
}
if(visit==5 && !place_meeting(x , y, inst_b6)){	
speech.sprite_index = s_speech2;	
}
if(visit==6 && !place_meeting(x , y, inst_b2)){	
speech.sprite_index = s_speech1;	
}

if(visit==7 && !place_meeting(x , y, inst_b1)){	
speech.sprite_index = s_speech3;	
}
if(visit==8  && !place_meeting(x , y, inst_b3)){	
speech.sprite_index = s_speech4;	
}
if(visit==9 && !place_meeting(x , y, inst_b4)){	
speech.sprite_index = s_speech11;
if(visit==10 && !place_meeting(x , y, inst_b11)){	
speech.sprite_index = s_speech5;	
}
if(visit==11  && !place_meeting(x , y, inst_b5)){	
speech.sprite_index = s_speech0;
instance_create_layer(0,0,"Instances_4",o_win);
instance_destroy();

}
}}

}
}}


//animation

if(!place_meeting(x,y+1,o_wall) or hsp==0){image_speed = 0;image_index=0;}else{if(hsp<0){image_speed = 15; image_xscale=-1;}else{image_speed = 15; image_xscale=1;}}