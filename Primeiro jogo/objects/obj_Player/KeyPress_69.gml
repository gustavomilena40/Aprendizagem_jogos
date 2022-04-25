/// @description Buff skill
// You can write your code in this editor
if stack_!=10 && alarm[2]<=0{
bullet_cooldown_-=0.2;
global.damage_+=0.1;
poison=true;
stack_++;

alarm[2]=skill2_cooldown_;
}