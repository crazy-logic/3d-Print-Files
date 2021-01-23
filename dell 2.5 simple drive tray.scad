/*
    created 23 Jan 2021    
    
    by Matt Jones (Crazy-Logic)  
    This example code is in the public domain.
    
    This is a simple drive holder for dell 2.5" SAS/SATA bays 
    drive details used from https://www.intel.com/content/dam/www/public/us/en/documents/product-specifications/ssd-530-sata-specification.pdf 
    
    print upside down to save on material ebing wasted. 
*/

//sizes 
length = 132;
width = 75;
height=15;
dwidth = 70;
dlength = 100;
siderailsize = (width-dwidth)/2;

difference(){
    cube([length,width,height]);
    //cutout for drive
    translate([length-dlength,siderailsize,-1])
    cube([dlength,dwidth,height+2]);
    //remove more of the area - like the original 
    translate([length-117,siderailsize,0])
    cube([117,dwidth,height-1.5]);
    
    //hole 1 
    translate([length-14,-1,3])rotate([0,90,90])cylinder(h=10, r=1.5, center=false,$fn=100);
    translate([length-14,-1,3])rotate([0,90,90])cylinder(h=2.5, r=2.5, center=false,$fn=100);
    //hole 2 
    translate([length-90.6,-1,3])rotate([0,90,90])cylinder(h=10, r=1.5, center=false,$fn=100);
    translate([length-90.6,-1,3])rotate([0,90,90])cylinder(h=2.5, r=2.5, center=false,$fn=100);
    //hole 3
    translate([length-14,width-9,3])rotate([0,90,90])cylinder(h=10, r=1.5, center=false,$fn=100);
    translate([length-14,width-1.5,3])rotate([0,90,90])cylinder(h=2.5, r=2.5, center=false,$fn=100);
    //hole 4
    translate([length-90.6,width-9,3])rotate([0,90,90])cylinder(h=10, r=1.5, center=false,$fn=100);
    translate([length-90.6,width-1.5,3])rotate([0,90,90])cylinder(h=2.5, r=2.5, center=false,$fn=100);
    
    //slots for the bay - indents for ID 
    translate([length-22,0,3])cube([22,1.5,3]);
    translate([length-22,0,9])cube([22,1.5,3]);
    
    //holes for airflow 
    translate([-1,10,7.5])rotate([0,90,0])cylinder(h=20, r=6, center=false,$fn=100);
    translate([-1,width-10,7.5])rotate([0,90,0])cylinder(h=20, r=6, center=false,$fn=100);
    translate([-10,width/2,7.5])rotate([0,90,0])cylinder(h=30, r=6, center=false,$fn=100);
    
}

//add the handel 
translate([-10,width/2-15,4])cube([10,8,7]);
translate([-10,width/2+7,4])cube([10,8,7]);
translate([-15,width/2-17,2])cube([5,34,11]);


