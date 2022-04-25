/// @description Insert description here
image_index =0;
if item_spawn_ >=1{
item_rand=random(3);
instance_create_layer(x-10,y, "Instances", items_[item_rand]);
item_spawn_ = 0;
}	