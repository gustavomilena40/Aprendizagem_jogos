///@param life_steal_
var life_steal_ = argument0;
///@param life_steal_key_
var life_steal_key_ = argument1;

if life_steal_>0 && life_steal_key_==true{
global.health_=global.health_+global.health_*life_steal_;
}