/*
    created 31 Jan 2021
    by Matt Jones (Crazy-Logic)  
    This example code is in the public domain.
    
    This is for mounting tslot to a Hama tripod stand. 
*/

$d = 21;
UNCboltholeradius = 3.175;
UNCboltheadheight = 7;


difference()
{
        hull(){
        translate([-22,-22,-0.1])
            cube([44,44,0.1],false);
        translate([-17.5,-17.5,-9])
            cube([35,35,1],false);
    }
    translate([0,-18,-10])
        cylinder(h=12, r=10, $fn=100);
    translate([-10,-38,-10])
        cube([20,20,20]);
}



translate([-$d/2,-$d/2,-9])
rotate([0,90,0])
{
        difference(){
        cube([$d+6,$d+6,$d]);
        translate([3,3,0])
        cube([$d,$d,$d]);
        translate([10,0,0])
        cube([$d-20+6,3,$d]);
    }


    difference(){
        union(){
        translate([0,-15,0])
        cube([10,15,$d]);
        translate([$d-10+6,-15,0])
        cube([10,15,$d]);
            rotate([0,-90,0])
        translate([-7,-7,-3])
        cube([35,35,3],false);
        }
        
        translate([0,-6.5,$d/2])
        rotate([0,90,0])
        cylinder(h=$d+6, r=4.5);
        
        translate([0,-6.5,$d/2])
        rotate([0,90,0])
        cylinder(h=7, r=7.7, $fn=6);
    }
}


