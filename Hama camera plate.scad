/*
    created 11 Jan 2021
    by Matt Jones (Crazy-Logic)  

    This example code is in the public domain.
    
    This is for mounting cameras and other stuff with a standard camera thread to a Hama tripod stand. 
*/
//do a difference to remove bold hole 
difference(){
    //do a union of the top and bottom bits. 
    union(){ 
            difference(){
                //do a hull of two cuboids to form the angely bit
                hull(){
                    translate([-22,-22,-0.1])
                        cube([44,44,0.1],false);
                    translate([-17.5,-17.5,-9])
                        cube([35,35,1],false);
                }
                //lets remove the angley circle bit so you can get to the bolt
                translate([0,0,-8.9])
                    cylinder(9, 8, 16, false,$fn=100);
                
            }
            //do a hull of 4 cyclinders to make a rounded cub
            hull(){
                    rad = 4.8;
                    h = 4.8;
                    translate([-33+rad,-25.5+rad,-9-h])
                        cylinder(h, rad, rad, false,$fn=100);
                    translate([+33-rad,-25.5+rad,-9-h])
                        cylinder(h, rad, rad, false,$fn=100);
                    translate([-33+rad,25.5-rad,-9-h])
                        cylinder(h, rad, rad, false,$fn=100);
                    translate([+33-rad,25.5-rad,-9-h])
                        cylinder(h, rad, rad, false,$fn=100);
                    
                }
    }


    //lets make a hole for the threaded bit of the bolt
            translate([0,0,-13.9])
                cylinder(14, 3, 3, false,$fn=100);
}
