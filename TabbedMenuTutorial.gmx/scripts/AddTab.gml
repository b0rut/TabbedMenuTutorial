var Tab_name = argument0;  //first argument is the name of the tab
var selected = argument1;  //second argument sets the start value whether selected or not 

var tab = ds_map_create();            //create a map for this tab
//add info
ds_map_add(tab, "name", Tab_name);
ds_map_add(tab, "selected", selected);
ds_map_add(tab, "index", ds_list_size(tab_list));
//add a map to our data structure list
ds_list_add(tab_list, tab);
