/*
    created 7 Feb 2021
    modified 7 Feb 2021 - correct the dimms and add bay dividors 
    
    by Matt Jones (Crazy-Logic)  
    This example code is in the public domain.
    
    dual 5 in bays  
    
    //drive bay size 41.3 mm by 146.1 mm and upto 203.2 mm deep  
*/

//sizes 
cwidth = 77.5; //think need to be 77.5
cheight= 17; //

width = 146.1;
depth = 82.6; 
height = 10;

bayw = 143; //was 140... 
bayh = 77.5;

woff = (width-bayw)/2;
hoff = (depth-bayh)/2;

//disks are 140 wide.... 



difference(){
    cube([width,depth,height]);
    //cutout for drive
    translate([woff,hoff,-1])
    cube([bayw,bayh,5+2]);
    
    translate([woff,hoff,-1])
    cube([cheight,cwidth,height+2]);
    
    translate([woff+cheight+1,hoff,-1])
    cube([cheight,cwidth,height+2]);
    
    translate([woff+2*cheight+2,hoff,-1])
    cube([cheight,cwidth,height+2]);
    
    translate([woff+3*cheight+3,hoff,-1])
    cube([cheight,cwidth,height+2]);
    
    translate([woff+4*cheight+4,hoff,-1])
    cube([cheight,cwidth,height+2]);
    
    translate([woff+5*cheight+5,hoff,-1])
    cube([cheight,cwidth,height+2]);
    
    translate([woff+6*cheight+6,hoff,-1])
    cube([cheight,cwidth,height+2]);
    
    translate([woff+7*cheight+7,hoff,-1])
    cube([cheight,cwidth,height+2]);
}
