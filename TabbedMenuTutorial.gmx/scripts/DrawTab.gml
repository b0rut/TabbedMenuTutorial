draw_set_color(c_white); //setting the default white color as primary
var offset_y = 35 - sprite_get_height(sprTab);  //we have to calculate the y offset where exactly we want tabs to appear

for(var i=0; i < ds_list_size(tab_list); i++) {    //A loop, while i isn't smaller than the amount of our tabs in data structure 

    var tab_map = ds_list_find_value(tab_list, i);  //let's get indetification of the map where we have stored information before
    var name = ds_map_find_value(tab_map, "name"); //let's fetch the name
    var selected = ds_map_find_value(tab_map, "selected");   //And aswell selected value
   
       //the following step will check whether the tab is selected or not and set its font color to black if selected and if not to white
      if(selected == true) {
    draw_set_color(c_black); 
    }
    else {
    
        draw_set_color(c_white); 
        }
    
                                 //everytime i increases, also does the xstart value of each next tab
    draw_sprite(sprTab, selected, x + ( i * sprite_get_width(sprTab)), y + offset_y );    //draws tabs 
    draw_set_halign(fa_center);             //sets text alligment to center 
    draw_text((x + ( i * sprite_get_width(sprTab))) + sprite_get_width(sprTab) / 2, y + offset_y + 2, name);     //draws the name of the tab
    

}
