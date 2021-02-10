/*
    created 15 Jan 2021
    Modified 16 Jan 2021 - adding bolt holes
    Modified 17 Jan 2021 - correction of tslot hole depth/length, correction of bolt hole size in fins for an M8 
    Modified 22 Jan 2021 - make fins thinner (4.8mm), add 2mm to fins for clearance, round corners (2mm)
    Modified 23 Jan 2021 - make fins longer (width of total plus the gap) and paramatrised the tolerance for printing. 
    by Matt Jones (Crazy-Logic)  
    
    This example code is in the public domain.
    
    This is for slotting on the end of a 20mm t-slot extrusion.
*/

tslotsize = 20.5;
wallthickness = 5; //i'm using 5mm to account for the fact i only have 10mm m5 bolt. 
length = 20; //of insert - tslot nuts are 15mm by 10mm so really 20mm minimum 
screwholesize = 2.75; //dia 5.5
cornerround = 2;



difference(){
    hull(){
        //creat the four bottom corners
        translate([cornerround,cornerround,0]) cylinder(r=cornerround,h=length,$fn=30);
        translate([tslotsize+2*wallthickness-cornerround,cornerround,0]) cylinder(r=cornerround,h=length,$fn=30);
        translate([cornerround,tslotsize+2*wallthickness-cornerround,0]) cylinder(r=cornerround,h=length,$fn=30);
        translate([tslotsize+2*wallthickness-cornerround,tslotsize+2*wallthickness-cornerround,0]) cylinder(r=cornerround,h=length,$fn=30);
        
        //create the top 4 ball corners 
        translate([cornerround,cornerround,length+wallthickness-cornerround]) sphere(r = cornerround,$fn=30);
        translate([tslotsize+2*wallthickness-cornerround,cornerround,length+wallthickness-cornerround]) sphere(r = cornerround,$fn=30);
        translate([cornerround,tslotsize+2*wallthickness-cornerround,length+wallthickness-cornerround]) sphere(r = cornerround,$fn=30);
        translate([tslotsize+2*wallthickness-cornerround,tslotsize+2*wallthickness-cornerround,length+wallthickness-cornerround]) sphere(r = cornerround,$fn=30);
        
        }
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
gap = 1;
finheight = tslotsize+2*wallthickness+gap; //tslot+walls+gap
pivheight = tslotsize/2+wallthickness+gap; 
tolerance = 0.15; //use this to tune the deflection when tightened and friction where the fins meet. a greater positive number removes more material. 


//fins
for (i =[0:1]){
    difference(){
        union(){
        translate([wallthickness+tslotsize/2-finwidth/2-2*i*finwidth+finwidth+tolerance,0,length+wallthickness-cornerround])
            cube([finwidth-tolerance-tolerance,tslotsize+wallthickness+wallthickness,pivheight+cornerround]);

        translate([wallthickness+tslotsize/2-finwidth/2-2*i*finwidth+finwidth+tolerance,wallthickness+tslotsize/2,length+wallthickness+pivheight])
            rotate([0,90,0])
            cylinder(h=finwidth-tolerance-tolerance, r=tslotsize/2+wallthickness, center=false,$fn=100);
        }
        //hole
        translate([wallthickness+tslotsize/2-finwidth/2-2*i*finwidth-1+finwidth,wallthickness+tslotsize/2,length+wallthickness+pivheight])
            rotate([0,90,0])
            cylinder(h=finwidth+2-tolerance, r=holesize, center=false,$fn=100);
    }
}
