/*
    created 7 Feb 2021
    
    by Matt Jones (Crazy-Logic)  
    This example code is in the public domain.
    
    size guide for holes   
*/

width = 59;
depth = 18; 
height = 3;


difference(){
    cube([width,depth,height]);
    
   //3mm
    translate([3,3+1.5,-1])
        cylinder(h=10,r=1.5,center=false, $fn=100);
    translate([2,3+3+2,3])
        linear_extrude(4)
        text("3",size=3);
   //4mm
    translate([3+4,3+2,-1])
        cylinder(h=10,r=2,center=false, $fn=100);
    //5mm
    translate([3+4+5,3+2.5,-1])
        cylinder(h=10,r=2.5,center=false, $fn=100);
    //6mm
    translate([3+4+5+6,3+3,-1])
        cylinder(h=10,r=3,center=false, $fn=100);
    //7mm
    translate([3+4+5+6+7,3+3.5,-1])
        cylinder(h=10,r=3.5,center=false, $fn=100);
    //8mm
    translate([3+4+5+6+7+8,3+4,-1])
        cylinder(h=10,r=4,center=false, $fn=100);
    //9mm
    translate([3+4+5+6+7+8+9,3+4.5,-1])
        cylinder(h=10,r=4.5,center=false, $fn=100);
    //10mm
    translate([3+4+5+6+7+8+9+10,3+5,-1])
        cylinder(h=10,r=5,center=false, $fn=100);
    translate([4+5+6+7+8+9+10,3+5+6,3])
        linear_extrude(4)
        text("10",size=3);
      
}
