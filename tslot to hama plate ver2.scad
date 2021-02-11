/*
    created 31 Jan 2021
    Modified to ver 2 
    by Matt Jones (Crazy-Logic)  
    This example code is in the public domain.
    
    This is for mounting tslot to a Hama tripod stand. 
*/

$d = 21;
UNCboltholeradius = 3.175;
UNCboltheadheight = 7;


difference() 
{
    union()
    {
        hull(){
        translate([-22,-22,-0.1])
            cube([44,44,0.1],false);
        translate([-17.5,-17.5,-9])
            cube([35,35,1],false);
        }
        //shelf bit 
        translate([-$d/2-7,-$d/2-7,-9-3])
            cube([35,35,3],false);
    }
    
}







