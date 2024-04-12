$fa = 1;
$fs = 0.4;
$fn = 100;

//module calls

frame();
gear();
seat();
handlebar();
suspension();

//front wheel
wheel();
translate([-10,0,0])
color("Black")
roundedTyre();

//rear wheel
translate([-30,0,0])
wheel();
translate([20,0,0])
color("Black")
roundedTyre();


//module definitions
    
// wheel
wheelThickness = 1.2;
wheelOuterradius = 8;
wheelInnerradius = 7;

module wheel()
{
  union()
  {
    difference()
    {
        translate([20,0,0])
            rotate([90,0,0])
              color("Silver")
              cylinder(h=wheelThickness-0.1,r=wheelOuterradius,center=true);

        translate([20,0,0])
            rotate([90,0,0])
              color("Silver")
              cylinder(h=wheelThickness,r=wheelInnerradius,center=true);
    }
  //hub
  translate([20,0,0])
    rotate([90,0,0])
      color("Silver")
      cylinder(h=wheelThickness*2, r = 1, center = true);
  
  //spokes
  translate ([20,0,0])
    for (i = [1:36])
    {
      rotate([10*i, 0, 90])
        color("Silver")
        cylinder (h = 14, r = 0.05, center = true);
    }
    
   translate ([20,0,0])
    for (i = [1/2:36/2])
    {
      translate([0,-0.5,0])
      rotate([10*i, 0, 90])
        color("Silver")
        cylinder (h = 14, r = 0.05, center = true);
    }
  }
}

module frame()
{ 
  color("GreenYellow")
  union()
  {
  //central middle section (where the seat sits)
  translate([10,0,4.3])
    rotate([0,2,0])
      cylinder(h=12, r = 0.7, center = true);
  
  //lower middle section
  translate([1.8,0,5])
    rotate([0,-50,0])
      cylinder(h=21, r = 0.7, center = true);
  
  //upper middle section
  translate([2,0,11])
    rotate([0,-82,0])
      cylinder(h=17, r = 0.7, center = true);

  //front center vertical
  translate([-7,0,11.9])
     rotate([0,10,0])
        cylinder(h=5, r = 0.7, center = true);

  //front center horizontal
  translate([-7.4,0,9.5])
     rotate([90,0,0])
        cylinder(h=4.5, r = 0.6, center = true);
  
  //right front
  translate([-8.7,1.8,5])
     rotate([0,15,0])
        cylinder(h=10, r = 0.7, center = true);
 
  //left front
  translate([-8.7,-1.8,5])
     rotate([0,15,0])
        cylinder(h=10, r = 0.7, center = true);
        
  //upper rear center horizontal
  translate([10.5,0,10])
     rotate([90,0,0])
        cylinder(h=2.5, r = 0.7, center = true);

  //lower rear center horizontal
  translate([9.8,0,-2])
     rotate([90,0,0])
        cylinder(h=2.5, r = 1.1, center = true);

  //lower rear section right
  translate([14.6,1,-1.3])
    rotate([0,78,0])
      cylinder(h=11, r = 0.3, center = true);

  //lower rear section left
  translate([14.6,-1,-1.3])
    rotate([0,78,0])
      cylinder(h=11, r = 0.3, center = true);

   //upper rear section right
  translate([15,1.2,5.3])
    rotate([0,-43,0])
      cylinder(h=14, r = 0.3, center = true);

   //upper rear section left
  translate([15,-1.2,5.3])
    rotate([0,-43,0])
      cylinder(h=14, r = 0.3, center = true);
  }
}

module seat()
{
 //upper central middle section (where the seat actually sits)
  translate([10.3,0,11])
    rotate([0,2,0])
      color ("Silver")
      cylinder(h=5, r = 0.4, center = true);

  difference()
  {
    translate([10.3,0,13])
    rotate([0,90,0])
      color("Black")
      cylinder(h=3, r = 1, center = true);

    translate([8.7,-1.5,13])
    rotate([0,90,0])
    scale([2.0,3.0,4.0])
      cube();
  }
 // translate([10.3,0,13])
   // rotate([0,90,0])
     // cylinder(h=3, r = 1, center = true);
}

module gear()
{
  //pedal anchor right
  translate([8,1.7,-3.5])
     rotate([0,45,0])
        color("Silver")
        cylinder(h=5, r = 0.4, center = true);

  //pedal anchor left
  translate([11.5,-1.7,0])
     rotate([0,225,0])
        color("Silver")
        cylinder(h=5, r = 0.4, center = true);

  //pedal right
  translate([5.5,1.8,-5])
    rotate([0,90,0])
    scale([0.5,2.0,2.0])
      color("Black")
      cube();

  //pedal left
  translate([12.3,-3.8,2])
    rotate([0,90,0])
    scale([0.5,2.0,2.0])
      color("Black")
      cube();
   
   //big gear
    translate([9.8,1.28,-2])
     rotate([90,0,0])
     color("Black")
        cylinder(h=0.2, r = 2.7, center = true);
        
    //small gear
    translate([20,0.8,0])
     rotate([90,0,0])
     color("Black")
        cylinder(h=0.2, r = 1.3, center = true);
        
    //lower Chain
    translate([14.9,1.2,-2.9])
      rotate([2,71,0])
      color("Black")
        cylinder(h=10.7, r = 0.1, center = true);
        
    //upper Chain
    translate([14.9,1,0.9])
      rotate([3,87,0])
      color("Black")
        cylinder(h=10.7, r = 0.1, center = true);
     
}

module handlebar()
{
  //handlebar
  translate([-6.5,0,14.7])
     rotate([90,0,0])
        color("Silver")
        cylinder(h=11, r = 0.4, center = true);
    
   translate([-6.5,0,14.7])
     rotate([90,0,0])
        color("YellowGreen")
        cylinder(h=1, r = 0.7, center = true);
   
   translate([-6.5,4,14.7])
     rotate([90,0,0])
        color("Black")
        cylinder(h=3, r = 0.5, center = true); 
    
    translate([-6.5,-4,14.7])
     rotate([90,0,0])
        color("Black")
        cylinder(h=3, r = 0.5, center = true);    
}

tyreRadius=8.7;
tyreWidth=4;
tyreDiameter=1.5;

module roundedTyre()
  {
     rotate([90,0,0])
     {
        rotate_extrude(angle=360) 
        {
            translate([tyreRadius-tyreDiameter/2,0])
            color("Black")
            circle(d=tyreDiameter);
        }
     //cylinder(h=tyreWidth, r=tyreRadius - tyreDiameter/2, center=true);
     }
  }
  
 
module suspension()
  {
   //right front suspension
  translate([-8.15,1.8,7])
     rotate([0,15,0])
        color("Black")
        cylinder(h=4, r = 0.8, center = true);
 
  //left front suspension
  translate([-8.15,-1.8,7])
     rotate([0,15,0])
        color("Black")
        cylinder(h=4, r = 0.8, center = true);
  }

