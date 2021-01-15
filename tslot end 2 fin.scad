/*
    created 15 Jan 2021
    by Matt Jones (Crazy-Logic)  
    This example code is in the public domain.
    
    This is for slotting on the end of a 20mm t-slot extrusion.
*/

tslotsize = 21;
wallthickness = 3;
length = 20;




difference(){
    cube([tslotsize+wallthickness+wallthickness,tslotsize+wallthickness+wallthickness,length+wallthickness]);
    //the +/-1 here are to account for render issues. 
    translate([wallthickness,wallthickness,-1])
    cube([tslotsize,tslotsize,length+1-wallthickness]);
}

finwidth = 5;
holesize=4; //radius



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
