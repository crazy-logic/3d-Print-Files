/*
    created 30 Jan 2021
    by Matt Jones (Crazy-Logic)  
    
    This example code is in the public domain.
    
    This is for slotting on the end of a 20mm t-slot extrusion.
*/

tslotsize = 20.5;
wallthickness = 5; //i'm using 5mm to account for the fact i only have 10mm m5 bolt. 
length = 20; //of insert - tslot nuts are 15mm by 10mm so really 20mm minimum 
screwholesize = 2.75; //dia 5.5
cornerround = 2;
UNCboltholeradius = 3.175;
UNCboltheadheight = 7;


difference(){
    hull(){
        //create the four bottom corners
        translate([cornerround,cornerround,0]) cylinder(r=cornerround,h=length,$fn=30);
        translate([tslotsize+2*wallthickness-cornerround,cornerround,0]) cylinder(r=cornerround,h=length,$fn=30);
        translate([cornerround,tslotsize+2*wallthickness-cornerround,0]) cylinder(r=cornerround,h=length,$fn=30);
        translate([tslotsize+2*wallthickness-cornerround,tslotsize+2*wallthickness-cornerround,0]) cylinder(r=cornerround,h=length,$fn=30);
        
        //create the top 4 ball corners 
        translate([cornerround,cornerround,length+wallthickness-cornerround+UNCboltheadheight]) sphere(r = cornerround,$fn=30);
        translate([tslotsize+2*wallthickness-cornerround,cornerround,length+wallthickness-cornerround+UNCboltheadheight]) sphere(r = cornerround,$fn=30);
        translate([cornerround,tslotsize+2*wallthickness-cornerround,length+wallthickness-cornerround+UNCboltheadheight]) sphere(r = cornerround,$fn=30);
        translate([tslotsize+2*wallthickness-cornerround,tslotsize+2*wallthickness-cornerround,length+wallthickness-cornerround+UNCboltheadheight]) sphere(r = cornerround,$fn=30);
        
        }
    //the +/-1 here are to account for render issues. 
    translate([wallthickness,wallthickness,-1])
    cube([tslotsize,tslotsize,length+1+UNCboltheadheight]);
    //bolt holes 
    translate([tslotsize/2+wallthickness,wallthickness+1,10])
    rotate([90,0,0])
            cylinder(h=wallthickness+2, r=screwholesize, center=false,$fn=100);
    translate([tslotsize/2+wallthickness,tslotsize+2*wallthickness+1,10])
    rotate([90,0,0])
            cylinder(h=wallthickness+2, r=screwholesize, center=false,$fn=100);
    
    translate([-1,tslotsize/2+wallthickness,10])
    rotate([0,90,0])
            cylinder(h=wallthickness+2, r=screwholesize, center=false,$fn=100);
    translate([(-1+tslotsize+wallthickness),tslotsize/2+wallthickness,10])
    rotate([0,90,0])
            cylinder(h=wallthickness+2, r=screwholesize, center=false,$fn=100);
        
    //hole for the unc thread 
    translate([wallthickness+tslotsize/2,wallthickness+tslotsize/2,length-1+UNCboltheadheight])
            cylinder(h=wallthickness+2, r=UNCboltholeradius, center=false,$fn=100);
}


