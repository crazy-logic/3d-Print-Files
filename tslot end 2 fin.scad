/*
    created 15 Jan 2021
    Modified 16 Jan 2021 - adding bolt holes
    Modified 17 Jan 2021 - correction of tslot hole depth/length, correction of bolt hole size in fins for an M8 
    -
    by Matt Jones (Crazy-Logic)  
    
    This example code is in the public domain.
    
    This is for slotting on the end of a 20mm t-slot extrusion.
*/

tslotsize = 20.5;
wallthickness = 5; //i'm using 5mm to account for the fact i only have 10mm m5 bolt. 
length = 20; //of insert - tslot nuts are 15mm by 10mm so really 20mm minimum 
screwholesize = 2.75; //dia 5.5




difference(){
    cube([tslotsize+wallthickness+wallthickness,tslotsize+wallthickness+wallthickness,length+wallthickness]);
    //the +/-1 here are to account for render issues. 
    translate([wallthickness,wallthickness,-1])
    cube([tslotsize,tslotsize,length+1]);
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
}

finwidth = 5;
holesize=4.5; //radius



//fins
for (i =[0:1]){
    difference(){
        union(){
        translate([wallthickness+tslotsize/2-finwidth/2-2*i*finwidth+finwidth,0,length+wallthickness])
            cube([finwidth,tslotsize+wallthickness+wallthickness,tslotsize/2]);

        translate([wallthickness+tslotsize/2-finwidth/2-2*i*finwidth+finwidth,wallthickness+tslotsize/2,length+wallthickness+tslotsize/2])
            rotate([0,90,0])
            cylinder(h=finwidth, r=tslotsize/2+wallthickness, center=false,$fn=100);
        }
        //hole
        translate([wallthickness+tslotsize/2-finwidth/2-2*i*finwidth-1+finwidth,wallthickness+tslotsize/2,length+wallthickness+tslotsize/2])
            rotate([0,90,0])
            cylinder(h=finwidth+2, r=holesize, center=false,$fn=100);
    }
}
