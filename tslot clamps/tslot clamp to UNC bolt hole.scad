/*
    created 31 Jan 2021
    Modified 10th Feb - UNC bolt size correction
    by Matt Jones (Crazy-Logic)  
    This example code is in the public domain.
    
    This is for clamping to a 20mm t-slot extrusion, using a 35mm M8 bolt and wing nut/leaver. 
*/

$d = 21;
UNCboltholeradius = 3.5; //up from 3.175
UNCboltheadheight = 7;



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
    }
    
    translate([0,-6.5,$d/2])
    rotate([0,90,0])
    cylinder(h=$d+6, r=4.5);
    
    translate([0,-6.5,$d/2])
    rotate([0,90,0])
    cylinder(h=7, r=7.7, $fn=6);
}

//adding a section for the UNC camera bolt. 
difference(){
translate([0,$d+6,0])
    cube([UNCboltheadheight,2*(UNCboltholeradius+3),$d]); 
translate([-1,$d+6+3+UNCboltholeradius,$d/2])
    rotate([0,90,0])
    cylinder(h=UNCboltheadheight+2, r=UNCboltholeradius, center=false,$fn=100);
}
