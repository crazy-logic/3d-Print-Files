/*
    created 1 Feb 2021
    modified 7th feb, updated sizes. 
    modified 7th feb, updated sizes. 
    
    by Matt Jones (Crazy-Logic)  
    This example code is in the public domain.
    
    a test peice for dell caddy as a holder. 
    
    print upside down to save on material being wasted. 
*/

//sizes 
cwidth = 75+1.5+1; //think need to be 77.5
cheight= 15+1+1; //

width = 83;
depth = 22; 
height = 5;

woff = (width-cwidth)/2;
hoff = (depth-cheight)/2;





difference(){
    cube([width,depth,height]);
    //cutout for drive
    translate([woff,hoff,-1])
    cube([cwidth,cheight,height+2]);
    
    
}
