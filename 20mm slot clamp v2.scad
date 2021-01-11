$d = 21;



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

