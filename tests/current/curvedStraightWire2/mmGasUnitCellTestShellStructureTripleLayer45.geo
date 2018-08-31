//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 
// mmGasUnitCellTestShellStructureTripleLayer45.geo
//
// Description:
// Geometry file for a MM cell
// This cell can be repeated any number of times within Garfield 
// to construct an arbitrarily large MM
//
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// SHELL STRUCTURE MODULE
//

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// GENERAL INFORMATION
//
// Description
//
// References
//
// See also
//

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// CONSTANTS

meshLevel = 0.100;                                         // mesh level, in mm
meshWindow = 0.020;                                        // mesh window, in mm
a = 0.045;                                                 // distance between unitCellTestWire wires, in mm


//----------------------------------------------------------
// vertical parameters

tlgC = ( 0.0000 ) / 2;                                     // lower electrode ground copper thickness, in mm
tltC = ( 0.0035 ) / 2;                                     // lower electrode top copper thickness, in mm
tM = ( 0.0035 ) / 2;                                       // dielectric thickness, in mm
tubC = ( tltC + tM );                                      // higher electrode bottom copper thickness, in mm
tutC = tubC + ( 0.0035 ) / 2;                              // higher electrode top copper thickness, in mm
lE = 0.5;                                                  // distance from MM cell to upper exterior electrode, in mm
lP = 0.1;                                                  // distance from lower MM cell to pad (readout) plane, in mm

tC = 0.0035;                                               // copper thickness, in mm
tD = 0.0035;                                               // dielectric thickness, in mm
lE = 0.40;                                                 // distance from unitCellCurWire plates to upper exterior electrode, in mm
lP = 0.02;                                                 // distance from lower unitCellCurWire plate to pad (readout) plane, in mm

n1 = 0;
m1 = 0;
n2 = 1;
m2 = 1;


//----------------------------------------------------------
// shell parameters

geofx = 1;                                                 // geometric_factor
geofy = 1;                                                 // geometric_factor


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// GEOMETRY PARAMETERS

//----------------------------------------------------------
// Extrusion Precision

// Geometry.ExtrudeSplinePoints = 3;
// Geometry.Points = 0;
// Geometry.Tolerance = 1e-03;
// Coherent Mesh;

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// MESHING PARAMETERS

//----------------------------------------------------------
// Characteristic lengths - characterization of mesh

// current best dimensions for mesh characteristic lengths

  lcCopperPlateBdry = 0.0025;                                                                           // characterization of metal surfaces / anode
  lcExtElectrodeBdry = 0.0050;                                                                          // characterization of external electrode / cathode


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// GEOMETRY MODULE

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// EXTERIOR SHELL STRUCTURE

//----------------------------------------------------------
// Corner 1

ptl1c1 = newp; Point(ptl1c1) = {geofx*0+geofx*m1*a, geofy*0+geofy*n1*a, tlgC, lcCopperPlateBdry};       // level 1 - bottom lower layer - bottom lower copper electrode
ptl2c1 = newp; Point(ptl2c1) = {geofx*0+geofx*m1*a, geofy*0+geofy*n1*a, tltC, lcCopperPlateBdry};       // level 2 - bottom upper layer
ptl3c1 = newp; Point(ptl3c1) = {geofx*0+geofx*m1*a, geofy*0+geofy*n1*a, tubC, lcCopperPlateBdry};       // level 3 - top lower layer
ptl4c1 = newp; Point(ptl4c1) = {geofx*0+geofx*m1*a, geofy*0+geofy*n1*a, tutC, lcCopperPlateBdry};       // level 4 - top upper layer - top upper copper electrode

//----------------------------------------------------------
// Corner 2

ptl1c2 = newp; Point(ptl1c2) = {geofx*a+geofx*m1*a, geofy*0+geofy*n1*a, tlgC, lcCopperPlateBdry};       // level 1 - bottom lower layer - bottom lower copper electrode
ptl2c2 = newp; Point(ptl2c2) = {geofx*a+geofx*m1*a, geofy*0+geofy*n1*a, tltC, lcCopperPlateBdry};       // level 2 - bottom upper layer
ptl3c2 = newp; Point(ptl3c2) = {geofx*a+geofx*m1*a, geofy*0+geofy*n1*a, tubC, lcCopperPlateBdry};       // level 3 - top lower layer
ptl4c2 = newp; Point(ptl4c2) = {geofx*a+geofx*m1*a, geofy*0+geofy*n1*a, tutC, lcCopperPlateBdry};       // level 4 - top upper layer - top upper copper electrode

//----------------------------------------------------------
// Corner 3

ptl1c3 = newp; Point(ptl1c3) = {geofx*a+geofx*m1*a, geofy*a+geofy*n1*a, tlgC, lcCopperPlateBdry};       // level 1 - bottom lower layer - bottom lower copper electrode
ptl2c3 = newp; Point(ptl2c3) = {geofx*a+geofx*m1*a, geofy*a+geofy*n1*a, tltC, lcCopperPlateBdry};       // level 2 - bottom upper layer
ptl3c3 = newp; Point(ptl3c3) = {geofx*a+geofx*m1*a, geofy*a+geofy*n1*a, tubC, lcCopperPlateBdry};       // level 3 - top lower layer
ptl4c3 = newp; Point(ptl4c3) = {geofx*a+geofx*m1*a, geofy*a+geofy*n1*a, tutC, lcCopperPlateBdry};       // level 4 - top upper layer - top upper copper electrode

//----------------------------------------------------------
// Corner 4

ptl1c4 = newp; Point(ptl1c4) = {geofx*0+geofx*m1*a, geofy*a+geofy*n1*a, tlgC, lcCopperPlateBdry};       // level 1 - bottom lower layer - bottom lower copper electrode
ptl2c4 = newp; Point(ptl2c4) = {geofx*0+geofx*m1*a, geofy*a+geofy*n1*a, tltC, lcCopperPlateBdry};       // level 2 - bottom upper layer
ptl3c4 = newp; Point(ptl3c4) = {geofx*0+geofx*m1*a, geofy*a+geofy*n1*a, tubC, lcCopperPlateBdry};       // level 3 - top lower layer
ptl4c4 = newp; Point(ptl4c4) = {geofx*0+geofx*m1*a, geofy*a+geofy*n1*a, tutC, lcCopperPlateBdry};       // level 4 - top upper layer - top upper copper electrode

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// COPPER ELECTRODES

//----------------------------------------------------------
// Points between two half cells on upper unitCellCurWire

// ptmc1 = newp; Point(ptmc1) = {geofx*a/2+geofx*m1*a, geofy*0+geofy*n1*a, tubC, lcCopperPlateBdry};
// ptmd1 = newp; Point(ptmd1) = {geofx*a/2+geofx*m1*a, geofy*0+geofy*n1*a, tlgC, lcCopperPlateBdry};

// ptmc2 = newp; Point(ptmc2) = {geofx*a+geofx*m1*a, geofy*a/2+geofy*n1*a, tubC, lcCopperPlateBdry};
// ptmd2 = newp; Point(ptmd2) = {geofx*a+geofx*m1*a, geofy*a/2+geofy*n1*a, tlgC, lcCopperPlateBdry};

// ptmc3 = newp; Point(ptmc3) = {geofx*a/2+geofx*m1*a, geofy*a+geofy*n1*a, tubC, lcCopperPlateBdry};
// ptmd3 = newp; Point(ptmd3) = {geofx*a/2+geofx*m1*a, geofy*a+geofy*n1*a, tlgC, lcCopperPlateBdry};

// ptmc4 = newp; Point(ptmc4) = {geofx*0+geofx*m1*a, geofy*a/2+geofy*n1*a, tubC, lcCopperPlateBdry};
// ptmd4 = newp; Point(ptmd4) = {geofx*0+geofx*m1*a, geofy*a/2+geofy*n1*a, tlgC, lcCopperPlateBdry};

//----------------------------------------------------------
// Top lower boundary

// pcptl1 = newp; Point(pcptl1) = {geofx*0+geofx*m1*a, geofy*0+geofy*n1*a, tltC,lcCopperPlateBdry};
// pcptl2 = newp; Point(pcptl2) = {geofx*a+geofx*m1*a, geofy*0+geofy*n1*a, tltC,lcCopperPlateBdry};
// pcptl3 = newp; Point(pcptl3) = {geofx*a+geofx*m1*a, geofy*a+geofy*n1*a, tltC,lcCopperPlateBdry};
// pcptl4 = newp; Point(pcptl4) = {geofx*0+geofx*m1*a, geofy*a+geofy*n1*a, tltC,lcCopperPlateBdry};

//----------------------------------------------------------
// Top upper boundary

// pcptu1 = newp; Point(pcptu1) = {geofx*0+geofx*m1*a, geofy*0+geofy*n1*a, tutC,lcCopperPlateBdry};
// pcptu2 = newp; Point(pcptu2) = {geofx*a+geofx*m1*a, geofy*0+geofy*n1*a, tutC,lcCopperPlateBdry};
// pcptu3 = newp; Point(pcptu3) = {geofx*a+geofx*m1*a, geofy*a+geofy*n1*a, tutC,lcCopperPlateBdry};
// pcptu4 = newp; Point(pcptu4) = {geofx*0+geofx*m1*a, geofy*a+geofy*n1*a, tutC,lcCopperPlateBdry};

//----------------------------------------------------------
// Border lines

//----------------------------------------------------------
// Upper boundary - level 4

lcptub1a = newl; Line(lcptub1a) = {ptl4c1,ptl4c2};
// Transfinite Line { lcptub1a } = lcptub1a;
lcptub2a = newl; Line(lcptub2a) = {ptl4c2,ptl4c3};
// Transfinite Line { lcptub2a } = lcptub2a;
lcptub3a = newl; Line(lcptub3a) = {ptl4c3,ptl4c4};
// Transfinite Line { lcptub3a } = lcptub3a;
lcptub4a = newl; Line(lcptub4a) = {ptl4c4,ptl4c1};
// Transfinite Line { lcptub4a } = lcptub4a;

//----------------------------------------------------------
// Lower boundary - level 3

lcptlb5a = newl; Line(lcptlb5a) = {ptl3c1,ptl3c2};
// Transfinite Line { lcptlb5a } = lcptlb5a;
lcptlb6a = newl; Line(lcptlb6a) = {ptl3c2,ptl3c3};
// Transfinite Line { lcptlb6a } = lcptlb6a;
lcptlb7a = newl; Line(lcptlb7a) = {ptl3c3,ptl3c4};
// Transfinite Line { lcptlb7a } = lcptlb7a;
lcptlb8a = newl; Line(lcptlb8a) = {ptl3c4,ptl3c1};
// Transfinite Line { lcptlb8a } = lcptlb8a;

//----------------------------------------------------------
// Connect the upper and lower points with lines to form the plate

lcptib9 = newl; Line(lcptib9) = {ptl4c1, ptl3c1};
// Transfinite Line { lcptib9 } = lcptib9;
lcptib10 = newl; Line(lcptib10) = {ptl4c2, ptl3c2};
// Transfinite Line { lcptib10 } = lcptib10;
lcptib11 = newl; Line(lcptib11) = {ptl4c3, ptl3c3};
// Transfinite Line { lcptib11 } = lcptib11;
lcptib12 = newl; Line(lcptib12) = {ptl4c4, ptl3c4};
// Transfinite Line { lcptib12 } = lcptib12;

//----------------------------------------------------------
// Points between two half cells on lower MM cell

// pbmd1 = newp; Point(pbmd1) = {geofx*a/2+geofx*m1*a, geofy*0+geofy*n1*a, tltC, lcCopperPlateBdry};
// pbmc1 = newp; Point(pbmc1) = {geofx*a/2+geofx*m1*a, geofy*0+geofy*n1*a, tutC, lcCopperPlateBdry};

// pbmd2 = newp; Point(pbmd2) = {geofx*a+geofx*m1*a, geofy*a/2+geofy*n1*a, tltC, lcCopperPlateBdry};
// pbmc2 = newp; Point(pbmc2) = {geofx*a+geofx*m1*a, geofy*a/2+geofy*n1*a, tutC, lcCopperPlateBdry};

// pbmd3 = newp; Point(pbmd3) = {geofx*a/2+geofx*m1*a, geofy*a+geofy*n1*a, tltC, lcCopperPlateBdry};
// pbmc3 = newp; Point(pbmc3) = {geofx*a/2+geofx*m1*a, geofy*a+geofy*n1*a, tutC, lcCopperPlateBdry};

// pbmd4 = newp; Point(pbmd4) = {geofx*0+geofx*m1*a, geofy*a/2+geofy*n1*a, tltC, lcCopperPlateBdry};
// pbmc4 = newp; Point(pbmc4) = {geofx*0+geofx*m1*a, geofy*a/2+geofy*n1*a, tutC, lcCopperPlateBdry};

//----------------------------------------------------------
// Bottom lower boundary

// pcpbl1 = newp; Point(pcpbl1) = {geofx*0+geofx*m1*a, geofy*0+geofy*n1*a, tutC,lcCopperPlateBdry};
// pcpbl2 = newp; Point(pcpbl2) = {geofx*a+geofx*m1*a, geofy*0+geofy*n1*a, tutC,lcCopperPlateBdry};
// pcpbl3 = newp; Point(pcpbl3) = {geofx*a+geofx*m1*a, geofy*a+geofy*n1*a, tutC,lcCopperPlateBdry};
// pcpbl4 = newp; Point(pcpbl4) = {geofx*0+geofx*m1*a, geofy*a+geofy*n1*a, tutC,lcCopperPlateBdry};

//----------------------------------------------------------
// Bottom upper boundary

// pcpbu1 = newp; Point(pcpbu1) = {geofx*0+geofx*m1*a, geofy*0+geofy*n1*a, tltC,lcCopperPlateBdry};
// pcpbu2 = newp; Point(pcpbu2) = {geofx*a+geofx*m1*a, geofy*0+geofy*n1*a, tltC,lcCopperPlateBdry};
// pcpbu3 = newp; Point(pcpbu3) = {geofx*a+geofx*m1*a, geofy*a+geofy*n1*a, tltC,lcCopperPlateBdry};
// pcpbu4 = newp; Point(pcpbu4) = {geofx*0+geofx*m1*a, geofy*a+geofy*n1*a, tltC,lcCopperPlateBdry};

//----------------------------------------------------------
// Border lines

//----------------------------------------------------------
// Upper boundary - level 2

lcpbub1a = newl; Line(lcpbub1a) = {ptl2c1,ptl2c2};
// Transfinite Line { lcpbub1a } = lcpbub1a;
lcpbub2a = newl; Line(lcpbub2a) = {ptl2c2,ptl2c3};
// Transfinite Line { lcpbub2a } = lcpbub2a;
lcpbub3a = newl; Line(lcpbub3a) = {ptl2c3,ptl2c4};
// Transfinite Line { lcpbub3a } = lcpbub3a;
lcpbub4a = newl; Line(lcpbub4a) = {ptl2c4,ptl2c1};
// Transfinite Line { lcpbub4a } = lcpbub4a;

//----------------------------------------------------------
// Lower boundary - level 1

lcpblb5a = newl; Line(lcpblb5a) = {ptl1c1,ptl1c2};
// Transfinite Line { lcpblb5a } = lcpblb5a;
lcpblb6a = newl; Line(lcpblb6a) = {ptl1c2,ptl1c3};
// Transfinite Line { lcpblb6a } = lcpblb6a;
lcpblb7a = newl; Line(lcpblb7a) = {ptl1c3,ptl1c4};
// Transfinite Line { lcpblb7a } = lcpblb7a;
lcpblb8a = newl; Line(lcpblb8a) = {ptl1c4,ptl1c1};
// Transfinite Line { lcpblb8a } = lcpblb8a;

//----------------------------------------------------------
// Connect the upper and lower points with lines to form the plate

lcpbib9 = newl; Line(lcpbib9) = {ptl2c1, ptl1c1};
// Transfinite Line { lcpbib9 } = lcpbib9;
lcpbib10 = newl; Line(lcpbib10) = {ptl2c2, ptl1c2};
// Transfinite Line { lcpbib10 } = lcpbib10;
lcpbib11 = newl; Line(lcpbib11) = {ptl2c3, ptl1c3};
// Transfinite Line { lcpbib11 } = lcpbib11;
lcpbib12 = newl; Line(lcpbib12) = {ptl2c4, ptl1c4};
// Transfinite Line { lcpbib12 } = lcpbib12;

//----------------------------------------------------------
// Lines connecting the upper and lower level corners

lcorner1 = newl; Line(lcorner1) = {ptl2c1, ptl3c1};
// Transfinite Line { lcorner1 } = lcorner1;
lcorner2 = newl; Line(lcorner2) = {ptl2c2, ptl3c2};
// Transfinite Line { lcorner2 } = lcorner2;
lcorner3 = newl; Line(lcorner3) = {ptl2c3, ptl3c3};
// Transfinite Line { lcorner3 } = lcorner3;
lcorner4 = newl; Line(lcorner4) = {ptl2c4, ptl3c4};
// Transfinite Line { lcorner4 } = lcorner4;

//----------------------------------------------------------
// Lines splitting the MM cell in half

// lmid11 = newl; Line(lmid11) = {ptmc1, ptmd1};
// lmid12 = newl; Line(lmid12) = {ptmd1, pbmd1};
// lmid13 = newl; Line(lmid13) = {pbmd1, pbmc1};

// lmid21 = newl; Line(lmid21) = {ptmc2, ptmd2};
// lmid22 = newl; Line(lmid22) = {ptmd2, pbmd2};
// lmid23 = newl; Line(lmid23) = {pbmd2, pbmc2};

// lmid31 = newl; Line(lmid31) = {ptmc3, ptmd3};
// lmid32 = newl; Line(lmid32) = {ptmd3, pbmd3};
// lmid33 = newl; Line(lmid33) = {pbmd3, pbmc3};

// lmid41 = newl; Line(lmid41) = {ptmc4, ptmd4};
// lmid42 = newl; Line(lmid42) = {ptmd4, pbmd4};
// lmid43 = newl; Line(lmid43) = {pbmd4, pbmc4};

//----------------------------------------------------------
// Bottom lower copper boundary - level 1

// lcpblb1 = newl; Line(lcpblb1) = {ptl1c1,ptl1c2};
// Transfinite Line { lcpblb1 } = lcpblb1;
// lcpblb2 = newl; Line(lcpblb2) = {ptl1c2,ptl1c3};
// Transfinite Line { lcpblb2 } = lcpblb2;
// lcpblb3 = newl; Line(lcpblb3) = {ptl1c3,ptl1c4};
// Transfinite Line { lcpblb3 } = lcpblb3;
// lcpblb4 = newl; Line(lcpblb4) = {ptl1c4,ptl1c1};
// Transfinite Line { lcpblb4 } = lcpblb4;

//----------------------------------------------------------
// Top lower copper boundary - level 2

// lcpblt1 = newl; Line(lcpblt1) = {ptl2c1,ptl2c2};
// Transfinite Line { lcpblt1 } = lcpblt1;
// lcpblt2 = newl; Line(lcpblt2) = {ptl2c2,ptl2c3};
// Transfinite Line { lcpblt2 } = lcpblt2;
// lcpblt3 = newl; Line(lcpblt3) = {ptl2c3,ptl2c4};
// Transfinite Line { lcpblt3 } = lcpblt3;
// lcpblt4 = newl; Line(lcpblt4) = {ptl2c4,ptl2c1};
// Transfinite Line { lcpblt4 } = lcpblt4;

//----------------------------------------------------------
// Bottom upper copper boundary - level 3

// lcpulb1 = newl; Line(lcpulb1) = {ptl3c1,ptl3c2};
// Transfinite Line { lcpulb1 } = lcpulb1;
// lcpulb2 = newl; Line(lcpulb2) = {ptl3c2,ptl3c3};
// Transfinite Line { lcpulb2 } = lcpulb2;
// lcpulb3 = newl; Line(lcpulb3) = {ptl3c3,ptl3c4};
// Transfinite Line { lcpulb3 } = lcpulb3;
// lcpulb4 = newl; Line(lcpulb4) = {ptl3c4,ptl3c1};
// Transfinite Line { lcpulb4 } = lcpulb4;

//----------------------------------------------------------
// Top upper copper boundary - level 4

// lcpult1 = newl; Line(lcpult1) = {ptl4c1,ptl4c2};
// Transfinite Line { lcpult1 } = lcpult1;
// lcpult2 = newl; Line(lcpult2) = {ptl4c2,ptl4c3};
// Transfinite Line { lcpult2 } = lcpult2;
// lcpult3 = newl; Line(lcpult3) = {ptl4c3,ptl4c4};
// Transfinite Line { lcpult3 } = lcpult3;
// lcpult4 = newl; Line(lcpult4) = {ptl4c4,ptl4c1};
// Transfinite Line { lcpult4 } = lcpult4;


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// EXTERNAL ELECTRODES

//----------------------------------------------------------
// Top electrode

pexet1 = newp; Point(pexet1) = {geofx*0+geofx*m1*a, geofy*0+geofy*n1*a, tutC+lE,lcExtElectrodeBdry};
// pexet12 = newp; Point(pexet12) = {geofx*a/2+geofx*m1*a, geofy*0+geofy*n1*a, tutC+lE,lcExtElectrodeBdry};
pexet2 = newp; Point(pexet2) = {geofx*a+geofx*m1*a, geofy*0+geofy*n1*a, tutC+lE,lcExtElectrodeBdry};
pexet3 = newp; Point(pexet3) = {geofx*a+geofx*m1*a, geofy*a+geofy*n1*a, tutC+lE,lcExtElectrodeBdry};
// pexet34 = newp; Point(pexet34) = {geofx*a/2+geofx*m1*a, geofy*a+geofy*n1*a, tutC+lE,lcExtElectrodeBdry};
pexet4 = newp; Point(pexet4) = {geofx*0+geofx*m1*a, geofy*a+geofy*n1*a, tutC+lE,lcExtElectrodeBdry};

//----------------------------------------------------------
// Top electrode lines

lexet1 = newl; Line(lexet1) = {pexet1, pexet2};
// Transfinite Line { lexet1 } = lexet1;
// lexet12 = newl; Line(lexet12) = {pexet12, pexet2};
// Transfinite Line { lexet12 } = lexet12;
lexet2 = newl; Line(lexet2) = {pexet2, pexet3};
// Transfinite Line { lexet2 } = lexet2;
lexet3 = newl; Line(lexet3) = {pexet3, pexet4};
// Transfinite Line { lexet3 } = lexet3;
// lexet34 = newl; Line(lexet34) = {pexet34, pexet4};
// Transfinite Line { lexet34 } = lexet34;
lexet4 = newl; Line(lexet4) = {pexet4, pexet1};
// Transfinite Line { lexet4 } = lexet4;

//----------------------------------------------------------
// Upper electrode boundary - transfinite

// lexett1 = newl; Line(lexett1) = {pexet1, pexet2};
// Transfinite Line { lexett1 } = lexett1; 
// lexett2 = newl; Line(lexett2) = {pexet2, pexet3};
// Transfinite Line { lexett2 } = lexett2;
// lexett3 = newl; Line(lexett3) = {pexet3, pexet4};
// Transfinite Line { lexett3 } = lexett3;
// lexett4 = newl; Line(lexett4) = {pexet4, pexet1};
// Transfinite Line { lexett4 } = lexett4;

//----------------------------------------------------------
// Connect the top electrode to the MM cell.

// lexetc1 = newl; Line(lexetc1) = {pexet1, ptl2c1}; // pc4_1
// Transfinite Line { lexetc1 } = lexetc1;
// lexetc12 = newl; Line(lexetc12) = {pexet12, ptmc1};
// Transfinite Line { lexetc12 } = lexetc12;
// lexetc2 = newl; Line(lexetc2) = {pexet2, ptl2c2}; // pc4_2
// Transfinite Line { lexetc2 } = lexetc2;
// lexetc3 = newl; Line(lexetc3) = {pexet3, ptl2c3}; // pc4_3
// Transfinite Line { lexetc3 } = lexetc3;
// lexetc34 = newl; Line(lexetc34) = {pexet34, ptmc3};
// Transfinite Line { lexetc34 } = lexetc34;
// lexetc4 = newl; Line(lexetc4) = {pexet4, ptl2c4}; // pc4_4
// Transfinite Line { lexetc4 } = lexetc4;

//----------------------------------------------------------
// Bottom electrode

// pexeb1 = newp; Point(pexeb1) = {geofx*0+geofx*m1*a, geofy*0+geofy*n1*a, meshLevel * mm,lcExtElectrodeBdry};
// pexeb12 = newp; Point(pexeb12) = {geofx*a/2+geofx*m1*a, geofy*0+geofy*n1*a, meshLevel * mm,lcExtElectrodeBdry};
// pexeb2 = newp; Point(pexeb2) = {geofx*a+geofx*m1*a, geofy*0+geofy*n1*a, meshLevel * mm,lcExtElectrodeBdry};
// pexeb3 = newp; Point(pexeb3) = {geofx*a+geofx*m1*a, geofy*a+geofy*n1*a, meshLevel * mm,lcExtElectrodeBdry};
// pexeb34 = newp; Point(pexeb34) = {geofx*a/2+geofx*m1*a, geofy*a+geofy*n1*a, meshLevel * mm,lcExtElectrodeBdry};
// pexeb4 = newp; Point(pexeb4) = {geofx*0+geofx*m1*a, geofy*a+geofy*n1*a, meshLevel * mm,lcExtElectrodeBdry};

//----------------------------------------------------------
// Bottom wire level boundary - transfinite

// lexebt1 = newl; Line(lexebt1) = {pexeb1, pexeb2};
// Transfinite Line { lexebt1 } = lexebt1;
// lexebt2 = newl; Line(lexebt2) = {pexeb2, pexeb3};
// Transfinite Line { lexebt2 } = lexebt2;
// lexebt3 = newl; Line(lexebt3) = {pexeb3, pexeb4};
// Transfinite Line { lexebt3 } = lexebt3;
// lexebt4 = newl; Line(lexebt4) = {pexeb4, pexeb1};
// Transfinite Line { lexebt4 } = lexebt4;

//----------------------------------------------------------
// Copper plate surfaces

llcpUpBorder1 = newreg; Line Loop(llcpUpBorder1) = {lcptlb5a, -lcptib10, -lcptub1a, lcptib9}; // lcptlb5b, -lcptub1b
pscpUpBorder1 = newreg; Plane Surface(pscpUpBorder1) = {llcpUpBorder1};
// Transfinite Surface { pscpUpBorder1 };
// Recombine Surface { pscpUpBorder1 };

llcpUpBorder2 = newreg; Line Loop(llcpUpBorder2) = {lcptlb6a, -lcptib11, -lcptub2a, lcptib10}; // lcptlb6b, -lcptub2b
pscpUpBorder2 = newreg; Plane Surface(pscpUpBorder2) = {llcpUpBorder2};
// Transfinite Surface { pscpUpBorder2 };
// Recombine Surface { pscpUpBorder2 };

llcpUpBorder3 = newreg; Line Loop(llcpUpBorder3) = {lcptlb7a, -lcptib12, -lcptub3a, lcptib11}; // lcptlb7b, -lcptub3b
pscpUpBorder3 = newreg; Plane Surface(pscpUpBorder3) = {llcpUpBorder3};
// Transfinite Surface { pscpUpBorder3 };
// Recombine Surface { pscpUpBorder3 };

llcpUpBorder4 = newreg; Line Loop(llcpUpBorder4) = {lcptlb8a, -lcptib9, -lcptub4a, lcptib12}; // lcptlb8b, -lcptub4b
pscpUpBorder4 = newreg; Plane Surface(pscpUpBorder4) = {llcpUpBorder4};
// Transfinite Surface { pscpUpBorder4 };
// Recombine Surface { pscpUpBorder4 };

llcpLowBorder1 = newreg; Line Loop(llcpLowBorder1) = {lcpblb5a, -lcpbib10, -lcpbub1a, lcpbib9}; // lcpblb5b,  -lcpbub1b
pscpLowBorder1 = newreg; Plane Surface(pscpLowBorder1) = {llcpLowBorder1};
// Transfinite Surface { pscpLowBorder1 };
// Recombine Surface { pscpLowBorder1 };

llcpLowBorder2 = newreg; Line Loop(llcpLowBorder2) = {lcpblb6a, -lcpbib11, -lcpbub2a, lcpbib10}; // lcpblb6b, -lcpbub2b  
pscpLowBorder2 = newreg; Plane Surface(pscpLowBorder2) = {llcpLowBorder2};
// Transfinite Surface { pscpLowBorder2 };
// Recombine Surface { pscpLowBorder2 };

llcpLowBorder3 = newreg; Line Loop(llcpLowBorder3) = {lcpblb7a, -lcpbib12, -lcpbub3a, lcpbib11}; // lcpblb7b, -lcpbub3b
pscpLowBorder3 = newreg; Plane Surface(pscpLowBorder3) = {llcpLowBorder3};
// Transfinite Surface { pscpLowBorder3 };
// Recombine Surface { pscpLowBorder3 };

llcpLowBorder4 = newreg; Line Loop(llcpLowBorder4) = {lcpblb8a, -lcpbib9, -lcpbub4a, lcpbib12}; // lcpblb8b,  -lcpbub4b
pscpLowBorder4 = newreg; Plane Surface(pscpLowBorder4) = {llcpLowBorder4};
// Transfinite Surface { pscpLowBorder4 };
// Recombine Surface { pscpLowBorder4 };

// llcpFace1 = newreg; Line Loop(llcpFace1) = {lcptub1a, lcptub2a, lcptub3a, lcptub4a}; // lcptub1b, lcptub2b, lcptub3b, lcptub4b 
// llcpFace3 = newreg; Line Loop(llcpFace3) = {lcpbub1a, lcpbub2a, lcpbub3a, lcpbub4a}; // lcpbub1b, lcpbub2b, lcpbub3b, lcpbub4b

//----------------------------------------------------------
// Copper plate surfaces

llSideDielectric1a = newreg; Line Loop(llSideDielectric1a) = {lcptlb5a, -lcorner2, -lcpbub1a, lcorner1}; // lmid1_2,
psSideDielectric1a = newreg; Plane Surface(psSideDielectric1a) = {llSideDielectric1a};
// Transfinite Surface { psSideDielectric1a };
// Recombine Surface { psSideDielectric1a };

llSideDielectric2a = newreg; Line Loop(llSideDielectric2a) = {lcptlb6a, -lcorner3, -lcpbub2a, lcorner2}; // lmid2_2,
psSideDielectric2a = newreg; Plane Surface(psSideDielectric2a) = {llSideDielectric2a};
// Transfinite Surface { psSideDielectric2a };
// Recombine Surface { psSideDielectric2a };

llSideDielectric3a = newreg; Line Loop(llSideDielectric3a) = {lcptlb7a, -lcorner4, -lcpbub3a, lcorner3}; // lmid3_2,
psSideDielectric3a = newreg; Plane Surface(psSideDielectric3a) = {llSideDielectric3a};
// Transfinite Surface { psSideDielectric3a };
// Recombine Surface { psSideDielectric3a };

llSideDielectric4a = newreg; Line Loop(llSideDielectric4a) = {lcptlb8a, -lcorner1, -lcpbub4a, lcorner4}; // lmid4_2,
psSideDielectric4a = newreg; Plane Surface(psSideDielectric4a) = {llSideDielectric4a};
// Transfinite Surface { psSideDielectric4a };
// Recombine Surface { psSideDielectric4a };

/*
llSideDielectric1b = newreg; Line Loop(llSideDielectric1b) = {lcptlb5b, lcorner2, -lcpblb5b, lcorner1}; // -lmid1_2
psSideDielectric1b = newreg; Plane Surface(psSideDielectric1b) = {llSideDielectric1b};
llSideDielectric2b = newreg; Line Loop(llSideDielectric2b) = {lcptlb6b, lcorner3, -lcpblb6b, lcorner2}; // -lmid2_2
psSideDielectric2b = newreg; Plane Surface(psSideDielectric2b) = {llSideDielectric2b};
llSideDielectric3b = newreg; Line Loop(llSideDielectric3b) = {lcptlb7b, lcorner4, -lcpblb7b, lcorner3}; // -lmid3_2
psSideDielectric3b = newreg; Plane Surface(psSideDielectric3b) = {llSideDielectric3b};
llSideDielectric4b = newreg; Line Loop(llSideDielectric4b) = {lcptlb8b, lcorner1, -lcpblb8b, lcorner4}; // -lmid4_2
psSideDielectric4b = newreg; Plane Surface(psSideDielectric4b) = {llSideDielectric4b};
*/

//----------------------------------------------------------
// Bounding surfaces

llBsurfT = newreg; Line Loop ( llBsurfT ) = { lexet1, lexet2, lexet3, lexet4 }; // lexet12, lexet34,
psBsurfT = newreg; Plane Surface ( psBsurfT ) = { llBsurfT };
// Transfinite Surface { psBsurfT };
// Recombine Surface { psBsurfT };

llTopCp1 = newreg; Line Loop ( llTopCp1 ) = { lcpbub1a, lcpbub2a, lcpbub3a, lcpbub4a }; // lcpbub1b, lcpbub2b, lcpbub3b, lcpbub4b
psTopCp1 = news; Plane Surface ( news ) = { llTopCp1 };
surfTopCp1[] += { psTopCp1 };
// Transfinite Surface { surfTopCp1[] };
// Recombine Surface { surfTopCp1[] };

llTopCp2 = newreg; Line Loop ( llTopCp2 ) = { lcptub1a, lcptub2a, lcptub3a, lcptub4a }; // lcptub1b, lcptub2b, lcptub3b, lcptub4b
psTopCp2 = news; Plane Surface ( news ) = { llTopCp2 };
surfTopCp2[] += { psTopCp2 };
// Transfinite Surface { surfTopCp2[] };
// Recombine Surface { surfTopCp2[] };

llBottomCp1 = newreg; Line Loop ( llBottomCp1 ) = { lcpblb5a, lcpblb6a, lcpblb7a, lcpblb8a }; // lcpblb5b, lcpblb6b, lcpblb7b, lcpblb8b
psBottomCp1 = news; Plane Surface ( news ) = { llBottomCp1 };
surfBottomCp1[] += { psBottomCp1 };
// Transfinite Surface { surfBottomCp1[] };
// Recombine Surface { surfBottomCp1[] };

llBottomCp2 = newreg; Line Loop ( llBottomCp2 ) = { lcptlb5a, lcptlb6a, lcptlb7a, lcptlb8a }; // lcptlb5b, lcptlb6b, lcptlb7b, lcptlb8b
psBottomCp2 = news; Plane Surface ( news ) = { llBottomCp2 };
surfBottomCp2[] += { psBottomCp2 };
// Transfinite Surface { surfBottomCp2[] };
// Recombine Surface { surfBottomCp2[] };
