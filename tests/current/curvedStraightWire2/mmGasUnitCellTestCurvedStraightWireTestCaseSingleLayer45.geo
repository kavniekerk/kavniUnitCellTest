//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 
// mmGasUnitCellTestCurvedStraightWireTestCaseSingleLayer45.geo
//
// Description:
// Geometry file for a MM cell
// This cell can be repeated any number of times within Garfield 
// to construct an arbitrarily large MM
//
//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// HEADER FILES
//

Include "mmGasComponentLabel.pro";
// Include "mmGasMeshingOptions.pro";

Include "mmGasUnitCellTestShellStructureSingleLayer45.geo";
// Include "mmGasUnitCellTestShellStructureTripleLayer45.geo";


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// MMGASSTRWIRE GEOMETRY MODULE
//

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// GENERAL INFORMATION
//
// mmGasUnitCellTestCurvedStraightWireTestCaseSingleLayer45.geo
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
lE = 0.5;                                                  // distance from GEM plates to upper exterior electrode, in mm
lP = 0.1;                                                  // distance from lower LEM plate to pad (readout) plane, in mm

tC = 0.0035;                                               // copper thickness, in mm
tD = 0.0035;                                               // dielectric thickness, in mm
lE = 0.40;                                                 // distance from unitCellCurWire plates to upper exterior electrode, in mm
lP = 0.02;                                                 // distance from lower unitCellCurWire plate to pad (readout) plane, in mm


//----------------------------------------------------------
// mesh window and wire parameters

mwf = 1;                                                   // meshWindow_factor

mm = 1;                                                    // geometrical scaling
rW = 0.010 * mm;                                           // R of Wiremesh, in microns
hp0 = 0.0204545;                                           // half pitch of the window, in mm
hp = 0.0204545 * mm - 0*rW/mwf * mm;                       // half pitch of the window, in microns

// CHECK 2*p + 2*0.10*p = a
// CHECK 2*0.0204545 + 2*0.10*0.0204545 = 0.045

p = hp0;                                                   // half pitch of the window, in mm

R = (p * p + rW * rW)/( (2 * rW) );                        // R
alpha = Asin((p/R));                                       // angle in radians

x1SPWindFac = p*0.10;
x2SPWindFac = p*0.10;
y1SPWindFac = p*0.10;
y2SPWindFac = p*0.10;

spFac = p*0.10;
spFac1 = p*0.20;

x1SPWindFac2 = p*0.00;
x2SPWindFac2 = p*0.00;
y1SPWindFac2 = p*0.00;
y2SPWindFac2 = p*0.00;

Rtp = R - R*0.00;
Rtn = R + R*0.00;

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
// Coherence;
// Geometry.AutoCoherence = 1;


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// MESHING PARAMETERS

//----------------------------------------------------------
// Characteristic lengths - characterization of mesh

// current best dimensions for mesh characteristic lengths

  lcCopperPlateBdry = 0.0025;                                                                                          // characterization of metal surfaces / anode
  lcExtElectrodeBdry = 0.0050;                                                                                         // characterization of external electrode / cathode
  lcWireMesh = 0.001;                                                                                                  // characterization of wire electrode


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/////// Face 1a - half wire (y - z) extrude in x direction - Corner 3 to Corner 4
//
// Wire 1a1

p1a1_0 = newp; Point(p1a1_0) = {p+p+2*spFac,p+p+2*spFac,rW+meshLevel*mm, lcWireMesh * mm};                             // centre circle
p1a1_1 = newp; Point(p1a1_1) = {p+p+2*spFac,p+p+2*spFac,0+meshLevel*mm, lcWireMesh * mm};                              // bottom circle
// p1a1_2 = newp; Point(p1a1_2) = {p+p+2*spFac,p+p+2*spFac+rW,rW+meshLevel*mm, lcWireMesh * mm};                       // right circle
p1a1_3 = newp; Point(p1a1_3) = {p+p+2*spFac,p+p+2*spFac,2*rW+meshLevel*mm, lcWireMesh * mm};                           // top circle
p1a1_4 = newp; Point(p1a1_4) = {p+p+2*spFac,p+p+2*spFac-rW,rW+meshLevel*mm, lcWireMesh * mm};                          // left circle

l1a1s_1 = newl; Line(l1a1s_1) = {p1a1_1, p1a1_3};
l1a1_2 = newl; Circle(l1a1_2) = {p1a1_3, p1a1_0, p1a1_4};
l1a1_3 = newl; Circle(l1a1_3) = {p1a1_4, p1a1_0, p1a1_1};

ll1a1_1 = newll; Line Loop(ll1a1_1) = {l1a1_2, l1a1_3, l1a1s_1};

s1a1_1 = news; Plane Surface(s1a1_1) = {ll1a1_1};

tmpaa_1_1[] = {s1a1_1};

saaf_1_1_1[] = {};
saaf_1_1_1[] = tmpaa_1_1[0];

tmpab_1_1[] = Extrude {-x2SPWindFac,0,0} {
  Surface{tmpaa_1_1[0]};
};

sab_1_1[] = tmpab_1_1[{2:4}];

tmpac_1_1[] = Extrude {{x2SPWindFac2,0,0},{0,-1,0},{p+p+1*spFac,p+p+1*spFac,-Rtn+rW+meshLevel*mm}, alpha} {
  Surface{tmpab_1_1[0]};
};

sac_1_1[] = tmpac_1_1[{2:4}];


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Wire 1a2

tmpaa_1_2[] = {tmpac_1_1[0]};

tmpab_1_2[] = Extrude {{x2SPWindFac2,0,0},{0,1,0},{-p+p+1*spFac,p+p+1*spFac,Rtp-rW+meshLevel*mm}, alpha} {
  Surface{tmpaa_1_2[0]};
};

sab_1_2[] = tmpab_1_2[{2:4}];

tmpac_1_2[] = Extrude {-x2SPWindFac,0,0} {
  Surface{tmpab_1_2[0]};
};

sac_1_2[] = tmpac_1_2[{2:4}];

sacf_1_1_2[] = {};
sacf_1_1_2[] = tmpac_1_2[0];

sl_wire_exterior_surface_1a[] = newreg; Surface Loop(sl_wire_exterior_surface_1a) = { -saaf_1_1_1[0], sab_1_1[], sac_1_1[], sab_1_2[], sac_1_2[], sacf_1_1_2[0] };
// vol_1a_wire = newv; Volume(vol_1a_wire) = { tmpab_1_1[1], tmpac_1_1[1], tmpab_1_2[1], tmpac_1_2[1] };
vol_1a_wire = newreg; Volume(vol_1a_wire) = sl_wire_exterior_surface_1a[];

Physical Volume(physvol_1a_wire) = vol_1a_wire;
Physical Surface(physsurf_1a_wire) = { -saaf_1_1_1[0], sab_1_1[], sac_1_1[], sab_1_2[], sac_1_2[], sacf_1_1_2[0] };


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/////// Face 1b - half wire (y - z) extrude in x direction - Corner 1 to Corner 2
//
// Wire 1b1

p1b1_0 = newp; Point(p1b1_0) = {-p+p,-p+p,rW+meshLevel*mm, lcWireMesh * mm};                                           // centre circle
p1b1_1 = newp; Point(p1b1_1) = {-p+p,-p+p,0+meshLevel*mm, lcWireMesh * mm};                                            // bottom circle
p1b1_2 = newp; Point(p1b1_2) = {-p+p,-p+p+rW,rW+meshLevel*mm, lcWireMesh * mm};                                        // right circle
p1b1_3 = newp; Point(p1b1_3) = {-p+p,-p+p,2*rW+meshLevel*mm, lcWireMesh * mm};                                         // top circle
// p1b1_4 = newp; Point(p1b1_4) = {-p+p,-p+p-rW,rW+meshLevel*mm, lcWireMesh * mm};                                     // left circle

l1b1_1 = newl; Circle(l1b1_1) = {p1b1_1, p1b1_0, p1b1_2};
l1b1_2 = newl; Circle(l1b1_2) = {p1b1_2, p1b1_0, p1b1_3};
l1b1s_3 = newl; Line(l1b1s_3) = {p1b1_1, p1b1_3};

ll1b1_1 = newll; Line Loop(ll1b1_1) = {l1b1_1, l1b1_2, -l1b1s_3};

s1b1_1 = news; Plane Surface(s1b1_1) = {ll1b1_1};

tmpba_1_1[] = {s1b1_1};

sbaf_1_1_1[] = {};
sbaf_1_1_1[] = tmpba_1_1[0];

tmpbb_1_1[] = Extrude {x1SPWindFac,0,0} {
  Surface{tmpba_1_1[0]};
};

sbb_1_1[] = tmpbb_1_1[{2:4}];


tmpbc_1_1[] = Extrude {{x1SPWindFac2,0,0},{0,1,0},{-p+p+1*spFac,-p+p,-Rtn+rW+meshLevel*mm}, alpha} {
  Surface{tmpbb_1_1[0]}; 
};

sbc_1_1[] = tmpbc_1_1[{2:4}];


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Wire 1b2

tmpba_1_2[] = {tmpbc_1_1[0]};

tmpbb_1_2[] = Extrude {{x1SPWindFac2,0,0},{0,-1,0},{p+p+1*spFac,-p+p,Rtp-rW+meshLevel*mm}, alpha} {
  Surface{tmpba_1_2[0]}; 
};

sbb_1_2[] = tmpbb_1_2[{2:4}];

tmpbc_1_2[] = Extrude {x1SPWindFac,0,0} {
  Surface{tmpbb_1_2[0]};
};

sbc_1_2[] = tmpbc_1_2[{2:4}];

sbcf_1_1_2[] = {};
sbcf_1_1_2[] = tmpbc_1_2[0];

sl_wire_exterior_surface_1b[] = newreg; Surface Loop(sl_wire_exterior_surface_1b) = { -sbaf_1_1_1[0], sbb_1_1[], sbc_1_1[], sbb_1_2[], sbc_1_2[], sbcf_1_1_2[0] };
// vol_1b_wire = newreg; Volume(vol_1b_wire) = { tmpbb_1_1[1], tmpbc_1_1[1], tmpbb_1_2[1], tmpbc_1_2[1] };
vol_1b_wire = newreg; Volume(vol_1b_wire) = sl_wire_exterior_surface_1b[];

Physical Volume(physvol_1b_wire) = vol_1b_wire;
Physical Surface(physsurf_1b_wire) = { -sbaf_1_1_1[0], sbb_1_1[], sbc_1_1[], sbb_1_2[], sbc_1_2[], sbcf_1_1_2[0] };


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/////// Face 2a - half wire (x - z) extrude in y direction - Corner 3 to Corner 2
//
// Wire 2a1

p2a1_0 = newp; Point(p2a1_0) = {p+p+2*spFac,p+p+2*spFac,-rW+meshLevel*mm, lcWireMesh * mm};                            // centre circle
p2a1_1 = newp; Point(p2a1_1) = {p+p+2*spFac,p+p+2*spFac,-2*rW+meshLevel*mm, lcWireMesh * mm};                          // bottom circle
// p2a1_2 = newp; Point(2a1_2) = {p+p+2*spFac+rW,p+p+2*spFac,-rW+meshLevel*mm, lcWireMesh * mm};                       // right circle
p2a1_3 = newp; Point(p2a1_3) = {p+p+2*spFac,p+p+2*spFac,0+meshLevel*mm, lcWireMesh * mm};                              // top circle
p2a1_4 = newp; Point(p2a1_4) = {p+p+2*spFac-rW,p+p+2*spFac,-rW+meshLevel*mm, lcWireMesh * mm};                         // left circle

l2a1s_1 = newl; Line(l2a1s_1) = {p2a1_1, p2a1_3};
l2a1_2 = newl; Circle(l2a1_2) = {p2a1_3, p2a1_0, p2a1_4};
l2a1_3 = newl; Circle(l2a1_3) = {p2a1_4, p2a1_0, p2a1_1};

ll2a1_1 = newll; Line Loop(ll2a1_1) = {l2a1_2, l2a1_3, l2a1s_1};

s2a1_1 = news; Plane Surface(s2a1_1) = {ll2a1_1};

tmpaa_2_1[] = {s2a1_1};

saaf_2_2_1[] = {};
saaf_2_2_1[] = tmpaa_2_1[0];

tmpab_2_1[] = Extrude {0,-y1SPWindFac,0} {
  Surface{tmpaa_2_1[0]};
};

sab_2_1[] = tmpab_2_1[{2:4}];

tmpac_2_1[] = Extrude {{0,y1SPWindFac2,0},{-1,0,0},{p+p+1*spFac,p+p+1*spFac,Rtp-rW+meshLevel*mm}, alpha} {
  Surface{tmpab_2_1[0]};
};

sac_2_1[] = tmpac_2_1[{2:4}];


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Wire 2a2

tmpaa_2_2[] = {tmpac_2_1[0]};

tmpab_2_2[] = Extrude {{0,y1SPWindFac2,0},{1,0,0},{p+p+1*spFac,-p+p+1*spFac,-Rtn+rW+meshLevel*mm}, alpha} {
  Surface{tmpaa_2_2[0]}; 
};

sab_2_2[] = tmpab_2_2[{2:4}];

tmpac_2_2[] = Extrude {0,-y1SPWindFac,0} {
  Surface{tmpab_2_2[0]};
};

sac_2_2[] = tmpac_2_2[{2:4}];

sacf_2_2_2[] = {};
sacf_2_2_2[] = tmpac_2_2[0];

sl_wire_exterior_surface_2a[] = newreg; Surface Loop(sl_wire_exterior_surface_2a) = { -saaf_2_2_1[0], sab_2_1[], sac_2_1[], sab_2_2[], sac_2_2[], sacf_2_2_2[0] };
// vol_2a_wire = newreg; Volume(vol_2a_wire) = { tmpab_2_1[1], tmpac_2_1[1], tmpab_2_2[1], tmpac_2_2[1] };
vol_2a_wire = newreg; Volume(vol_2a_wire) = sl_wire_exterior_surface_2a[];

Physical Volume(physvol_2a_wire) = vol_2a_wire;
Physical Surface(physsurf_2a_wire) = { -saaf_2_2_1[0], sab_2_1[], sac_2_1[], sab_2_2[], sac_2_2[], sacf_2_2_2[0] };


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/////// Face 2b - half wire (x - z) extrude in y direction - Corner 1 to Corner 4
//
// Wire 2b1

p2b1_0 = newp; Point(p2b1_0) = {-p+p,-p+p,-rW+meshLevel*mm, lcWireMesh * mm};                                          // centre circle
p2b1_1 = newp; Point(p2b1_1) = {-p+p,-p+p,-2*rW+meshLevel*mm, lcWireMesh * mm};                                        // bottom circle
p2b1_2 = newp; Point(p2b1_2) = {-p+p+rW,-p+p,-rW+meshLevel*mm, lcWireMesh * mm};                                       // right circle
p2b1_3 = newp; Point(p2b1_3) = {-p+p,-p+p,0+meshLevel*mm, lcWireMesh * mm};                                            // top circle
// p2b1_4 = newp; Point(p2b1_4) = {-p+p-rW,-p+p,-rW+meshLevel*mm, lcWireMesh * mm};                                    // left circle

l2b1_1 = newl; Circle(l2b1_1) = {p2b1_1, p2b1_0, p2b1_2};
l2b1_2 = newl; Circle(l2b1_2) = {p2b1_2, p2b1_0, p2b1_3};
l2b1s_3 = newl; Line(l2b1s_3) = {p2b1_1, p2b1_3};

ll2b1_1 = newll; Line Loop(ll2b1_1) = {l2b1_1, l2b1_2, -l2b1s_3};

s2b1_1 = news; Plane Surface(s2b1_1) = {ll2b1_1};

tmpba_2_1[] = {s2b1_1};

sbaf_2_2_1[] = {};
sbaf_2_2_1[] = tmpba_2_1[0];


tmpbb_2_1[] = Extrude {0,y2SPWindFac,0} {
  Surface{tmpba_2_1[0]};
};

sbb_2_1[] = tmpbb_2_1[{2:4}];

tmpbc_2_1[] = Extrude {{0,y2SPWindFac2,0},{1,0,0},{-p+p,-p+p+1*spFac,Rtp-rW+meshLevel*mm}, alpha} {
  Surface{tmpbb_2_1[0]};  
};

sbc_2_1[] = tmpbc_2_1[{2:4}];


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Wire 2b2

tmpba_2_2[] = {tmpbc_2_1[0]};

tmpbb_2_2[] = Extrude {{0,y2SPWindFac2,0},{-1,0,0},{-p+p,p+p+1*spFac,-Rtn+rW+meshLevel*mm}, alpha} {
  Surface{tmpba_2_2[0]}; 
};

sbb_2_2[] = tmpbb_2_2[{2:4}];

tmpbc_2_2[] = Extrude {0,y2SPWindFac,0} {
  Surface{tmpbb_2_2[0]};
};

sbc_2_2[] = tmpbc_2_2[{2:4}];

sbcf_2_2_2[] = {};
sbcf_2_2_2[] = tmpbc_2_2[0];

sl_wire_exterior_surface_2b[] = newreg; Surface Loop(sl_wire_exterior_surface_2b) = { -sbaf_2_2_1[0], sbb_2_1[], sbc_2_1[], sbb_2_2[], sbc_2_2[], sbcf_2_2_2[0] };
// vol_2b_wire = newreg; Volume(vol_2b_wire) = { tmpbb_2_1[1], tmpbc_2_1[1], tmpbb_2_2[1], tmpbc_2_2[1] };
vol_2b_wire = newreg; Volume(vol_2b_wire) = sl_wire_exterior_surface_2b[];

Physical Volume(physvol_2b_wire) = vol_2b_wire;
Physical Surface(physsurf_2b_wire) = { -sbaf_2_2_1[0], sbb_2_1[], sbc_2_1[], sbb_2_2[], sbc_2_2[], sbcf_2_2_2[0] };


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// INTER FILES
//

Include "mmGasUnitCellTestLineDefinition.geo";


//------------------------------------------------------------------------------------------
/// BOUNDING SURFACE EDGES


//----------------------------------------------------------
// Bounding and intersecting surfaces


//----------------------------------------------------------
// Bounding and intersecting surfaces


//----------------------------------------------------------
// Face physsurfBdh_1_1 (Corner 1 - Corner 2)

l1bdh_1_1_bsurft1 = newl; Line(l1bdh_1_1_bsurft1) = {pexet2, pbdhact_1_2_2[1]};                    // top line
l2bdh_1_1_bsurft1 = newl; Line(l2bdh_1_1_bsurft1) = {pexet1, p1b1_3};                              // top circle
l1bdh_1_1_bsurfb1 = newl; Line(l1bdh_1_1_bsurfb1) = {ptl2c2, pbdhbcb_1_1_2[1]};                    // bottom line
l2bdh_1_1_bsurfb1 = newl; Line(l2bdh_1_1_bsurfb1) = {ptl2c1, p2b1_1};                              // bottom circle

llbdh_1_1_bsurf1t = newreg; Line Loop(llbdh_1_1_bsurf1t) = { lexet1, l1bdh_1_1_bsurft1, ll_bdhacc0_1_2_2[0], ll_bdhacc1_1_2_2[0], -ll_bdhbct_1_1_2[0], -ll_bdhbbt_1_1_2[0], -ll_bdhbct_1_1_1[0], -ll_bdhbbt_1_1_1[0], -l2bdh_1_1_bsurft1 };
llbdh_1_1_bsurf1b = newreg; Line Loop(llbdh_1_1_bsurf1b) = { lcpbub1a, l1bdh_1_1_bsurfb1, -ll_bdhbcb_1_1_2[0], -ll_bdhbbb_1_1_2[0], -ll_bdhbcb_1_1_1[0], -ll_bdhbbb_1_1_1[0], -l2b1_1, -l2b1_2, -l2bdh_1_1_bsurfb1 };

psbdh_1_1_bsurf1t = newreg; Plane Surface(psbdh_1_1_bsurf1t) = { llbdh_1_1_bsurf1t };
psbdh_1_1_bsurf1b = newreg; Plane Surface(psbdh_1_1_bsurf1b) = { llbdh_1_1_bsurf1b };


//----------------------------------------------------------
// Face physsurfBdh_1_2 (Corner 2 - Corner 3)

l1bdh_1_2_bsurft1 = newl; Line(l1bdh_1_2_bsurft1) = {pexet3, p1a1_3};                              // top line
l1bdh_1_2_bsurfb1 = newl; Line(l1bdh_1_2_bsurfb1) = {ptl2c3, p2a1_1};                              // bottom line

llbdh_1_2_bsurf3t = newreg; Line Loop(llbdh_1_2_bsurf3t) = { lexet2, l1bdh_1_2_bsurft1, l1a1_2, l1a1_3, ll_bdhabt_1_2_1[0], ll_bdhact_1_2_1[0], ll_bdhabt_1_2_2[0], ll_bdhact_1_2_2[0], -l1bdh_1_1_bsurft1 };
llbdh_1_2_bsurf3b = newreg; Line Loop(llbdh_1_2_bsurf3b) = { lcpbub2a, l1bdh_1_2_bsurfb1, ll_bdhabb_1_2_1[0], ll_bdhacb_1_2_1[0], ll_bdhabb_1_2_2[0], ll_bdhacb_1_2_2[0], -ll_bdhbcc1_1_1_2[0], -ll_bdhbcc0_1_1_2[0], -l1bdh_1_1_bsurfb1 };

psbdh_1_2_bsurf3t = newreg; Plane Surface(psbdh_1_2_bsurf3t) = { llbdh_1_2_bsurf3t };
psbdh_1_2_bsurf3b = newreg; Plane Surface(psbdh_1_2_bsurf3b) = { llbdh_1_2_bsurf3b };


//----------------------------------------------------------
// Face physsurfBdh_2_1 (Corner 3 - Corner 4)

l1bdh_2_1_bsurft4 = newl; Line(l1bdh_2_1_bsurft4) = {pexet4, pbdhbcb_1_2_2[1]};                    // top line, top circle
l1bdh_2_1_bsurfb4 = newl; Line(l1bdh_2_1_bsurfb4) = {ptl2c4, pbdhact_1_1_2[1]};                    // bottom line, bottom circle


llbdh_2_1_bsurf4t = newreg; Line Loop(llbdh_2_1_bsurf4t) = { lexet3, l1bdh_2_1_bsurft4, -ll_bdhbcc1_1_2_2[0], -ll_bdhbcc0_1_2_2[0], -ll_bdhacb_1_1_2[0], -ll_bdhabb_1_1_2[0], -ll_bdhacb_1_1_1[0], -ll_bdhabb_1_1_1[0], -l1bdh_1_2_bsurft1 };
llbdh_2_1_bsurf4b = newreg; Line Loop(llbdh_2_1_bsurf4b) = { lcpbub3a, l1bdh_2_1_bsurfb4, -ll_bdhact_1_1_2[0], -ll_bdhabt_1_1_2[0], -ll_bdhact_1_1_1[0], -ll_bdhabt_1_1_1[0], l2a1_2, l2a1_3, -l1bdh_1_2_bsurfb1 };

psbdh_2_1_bsurf4t = newreg; Plane Surface(psbdh_2_1_bsurf4t) = { llbdh_2_1_bsurf4t };
psbdh_2_1_bsurf4b = newreg; Plane Surface(psbdh_2_1_bsurf4b) = { llbdh_2_1_bsurf4b };


//----------------------------------------------------------
// Face physsurfBdh_2_2 (Corner 4 - Corner 1)

llbdh_2_2_bsurf6t = newreg; Line Loop(llbdh_2_2_bsurf6t) = { lexet4, l2bdh_1_1_bsurft1, -l1b1_1, -l1b1_2, ll_bdhbbb_1_2_1[0], ll_bdhbcb_1_2_1[0], ll_bdhbbb_1_2_2[0], ll_bdhbcb_1_2_2[0], -l1bdh_2_1_bsurft4 };
llbdh_2_2_bsurf6b = newreg; Line Loop(llbdh_2_2_bsurf6b) = { lcpbub4a, l2bdh_1_1_bsurfb1, ll_bdhbbt_1_2_1[0], ll_bdhbct_1_2_1[0], ll_bdhbbt_1_2_2[0], ll_bdhbct_1_2_2[0], ll_bdhacc0_1_1_2[0], ll_bdhacc1_1_1_2[0], -l1bdh_2_1_bsurfb4 };

psbdh_2_2_bsurf6t = newreg; Plane Surface(psbdh_2_2_bsurf6t) = { llbdh_2_2_bsurf6t };
psbdh_2_2_bsurf6b = newreg; Plane Surface(psbdh_2_2_bsurf6b) = { llbdh_2_2_bsurf6b };


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// FINAL DEFINITIONS (SURFACES / VOLUMES)


//------------------------------------------------------------------------------------------
/// SURFACE LOOPS

//----------------------------------------------------------
// Wire Gas Exterior Surface Loop - exterior wire gas surface loop

sl_wire_gas_total_surface = newreg; Surface Loop(sl_wire_gas_total_surface) = { psBsurfT, psbdh_1_1_bsurf1t, psbdh_1_1_bsurf1b, psbdh_1_2_bsurf3t, psbdh_1_2_bsurf3b, psbdh_2_1_bsurf4t, psbdh_2_1_bsurf4b, psbdh_2_2_bsurf6t, psbdh_2_2_bsurf6b, -surfTopCp1[], -sbb_1_1[0], -sbb_1_1[1], -sbc_1_1[0], -sbc_1_1[1], -sbb_1_2[0], -sbb_1_2[1], -sbc_1_2[0], -sbc_1_2[1], -sab_1_1[0], -sab_1_1[1], -sac_1_1[0], -sac_1_1[1], -sab_1_2[0], -sab_1_2[1], -sac_1_2[0], -sac_1_2[1], -sab_2_1[0], -sab_2_1[1], -sac_2_1[0], -sac_2_1[1], -sab_2_2[0], -sab_2_2[1], -sac_2_2[0], -sac_2_2[1], -sbb_2_1[0], -sbb_2_1[1], -sbc_2_1[0], -sbc_2_1[1], -sbb_2_2[0], -sbb_2_2[1], -sbc_2_2[0], -sbc_2_2[1] };
total_sl_wire_gas_total_surface[] += sl_wire_gas_total_surface;

//----------------------------------------------------------
// Gas Exterior Surface Loop - exterior gas surface loop

total_sl_gas_exterior_surface[0] = newreg; Surface Loop(total_sl_gas_exterior_surface[0]) = { surfBottomCp1[], pscpLowBorder1, pscpLowBorder2, pscpLowBorder3, pscpLowBorder4, psbdh_1_1_bsurf1t, sbaf_2_2_1[0], sbb_1_1[2], sbc_1_1[2], sbb_1_2[2], sbc_1_2[2], sacf_2_2_2[0], psbdh_1_1_bsurf1b, psbdh_1_2_bsurf3t, saaf_1_1_1[0], sab_2_1[2], sac_2_1[2], sab_2_2[2], sac_2_2[2], sbcf_1_1_2[0], psbdh_1_2_bsurf3b, psbdh_2_1_bsurf4t, saaf_2_2_1[0], sab_1_1[2], sac_1_1[2], sab_1_2[2], sac_1_2[2], sbcf_2_2_2[0], psbdh_2_1_bsurf4b, psbdh_2_2_bsurf6t, sbaf_1_1_1[0], sbb_2_1[2], sbc_2_1[2], sbb_2_2[2], sbc_2_2[2], sacf_1_1_2[0], psbdh_2_2_bsurf6b, psBsurfT };
// psSideDielectric1a, psSideDielectric2a, psSideDielectric3a, psSideDielectric4a, pscpUpBorder1, pscpUpBorder2, pscpUpBorder3, pscpUpBorder4,

//----------------------------------------------------------
// Dielectric Surface Loop - dielectric surface loop

// sl_dielectric = newreg; Surface Loop(sl_dielectric) = { surfTopCp1[], psSideDielectric1a, psSideDielectric2a, psSideDielectric3a, psSideDielectric4a, surfBottomCp2[] };
// total_sl_dielectric[] += sl_dielectric;

//----------------------------------------------------------
// Wire Volume Surface Loop - wire electrode

// sl_wire = newreg; Surface Loop(sl_wire) = { -sbaf_1_1_1[0], sbb_1_1[], sbb_1_2[], sbc_1_1[], sbc_1_2[], sbcf_1_1_2[0], -saaf_1_1_1[0], sab_1_1[], sab_1_2[], sac_1_1[], sac_1_2[], sacf_1_1_2[0], -saaf_2_2_1[0], sab_2_1[], sab_2_2[], sac_2_1[], sac_2_2[], sacf_2_2_2[0], -sbaf_2_2_1[0], sbb_2_1[], sbb_2_2[], sbc_2_1[], sbc_2_2[], sbcf_2_2_2[0] };
// vol_wire = newreg; Volume(vol_wire) = {sl_wire};

//----------------------------------------------------------
// Electrode Surface Loop - electrode surface loop

sl_lower_cp = newreg; Surface Loop(sl_lower_cp) = { surfBottomCp1[], pscpLowBorder1, pscpLowBorder2, pscpLowBorder3, pscpLowBorder4, surfTopCp1[] };
total_sl_lower_cp[] += sl_lower_cp;

// sl_high_cp = newreg; Surface Loop(sl_high_cp) = { surfBottomCp2[], pscpUpBorder1, pscpUpBorder2, pscpUpBorder3, pscpUpBorder4, surfTopCp2[] };
// total_sl_high_cp[] += sl_high_cp;


//------------------------------------------------------------------------------------------
/// CONTAINER VOLUME

vol_container = newreg; Volume(vol_container) = { total_sl_gas_exterior_surface[0] };

//------------------------------------------------------------------------------------------
/// WIRE VOLUME

// total_vol_wire = newreg; Compound Volume(total_vol_wire) = { vol_x1_wire, vol_x2_wire, vol_y1_wire, vol_y2_wire };
// total_vol_wire = newreg; Volume(total_vol_wire) = { total_sl_wire_gas_interior_surface[] };

//------------------------------------------------------------------------------------------
/// GAS VOLUME

vol_gas = newreg; Volume(vol_gas) = { total_sl_wire_gas_total_surface[] }; //  sl_wire_exterior_surface_1a[], sl_wire_exterior_surface_1b[], sl_wire_exterior_surface_2a[], sl_wire_exterior_surface_2b[]
// vol_gas = newreg; Volume(vol_gas) = { total_sl_wire_gas_total_surface[] }; // total_sl_gas_exterior_surface[0]


//------------------------------------------------------------------------------------------
/// COMPONENT VOLUMES

// vol_dielectric = newreg; Volume(vol_dielectric) = total_sl_dielectric[];
vol_lower_cp = newreg; Volume(vol_lower_cp) = total_sl_lower_cp[];
// vol_high_cp = newreg; Volume(vol_high_cp) = total_sl_high_cp[];


//------------------------------------------------------------------------------------------
/// PHYSICAL SURFACES

//----------------------------------------------------------
// Physical Surfaces - periodic boundary conditions

physsurf_bdh_1_1 = newreg; Physical Surface(physsurf_bdh_1_1) = { psbdh_1_1_bsurf1t, sbaf_2_2_1[0], sbb_1_1[2], sbb_1_2[2], sbc_1_1[2], sbc_1_2[2], sacf_2_2_2[0], psbdh_1_1_bsurf1b };               
physsurf_bdh_1_2 = newreg; Physical Surface(physsurf_bdh_1_2) = { psbdh_1_2_bsurf3t, saaf_1_1_1[0], sab_2_1[2], sab_2_2[2], sac_2_1[2], sac_2_2[2], sbcf_1_1_2[0], psbdh_1_2_bsurf3b };               
physsurf_bdh_2_1 = newreg; Physical Surface(physsurf_bdh_2_1) = { psbdh_2_1_bsurf4t, saaf_2_2_1[0], sab_1_1[2], sab_1_2[2], sac_1_1[2], sac_1_2[2], sbcf_2_2_2[0], psbdh_2_1_bsurf4b };               
physsurf_bdh_2_2 = newreg; Physical Surface(physsurf_bdh_2_2) = { psbdh_2_2_bsurf6t, sbaf_1_1_1[0], sbb_2_1[2], sbb_2_2[2], sbc_2_1[2], sbc_2_2[2], sacf_1_1_2[0], psbdh_2_2_bsurf6b };               

//----------------------------------------------------------
// Physical surfaces - container surface

physsurf_container = newreg; Physical Surface(physsurf_container) = { surfBottomCp1[], pscpLowBorder1, pscpLowBorder2, pscpLowBorder3, pscpLowBorder4, psbdh_1_1_bsurf1t, sbaf_2_2_1[0], sbb_1_1[2], sbc_1_1[2], sbb_1_2[2], sbc_1_2[2], sacf_2_2_2[0], psbdh_1_1_bsurf1b, psbdh_1_2_bsurf3t, saaf_1_1_1[0], sab_2_1[2], sac_2_1[2], sab_2_2[2], sac_2_2[2], sbcf_1_1_2[0], psbdh_1_2_bsurf3b, psbdh_2_1_bsurf4t, saaf_2_2_1[0], sab_1_1[2], sac_1_1[2], sab_1_2[2], sac_1_2[2], sbcf_2_2_2[0], psbdh_2_1_bsurf4b, psbdh_2_2_bsurf6t, sbaf_1_1_1[0], sbb_2_1[2], sbc_2_1[2], sbb_2_2[2], sbc_2_2[2], sacf_1_1_2[0], psbdh_2_2_bsurf6b, psBsurfT };
// psSideDielectric1a, psSideDielectric2a, psSideDielectric3a, psSideDielectric4a, pscpUpBorder1, pscpUpBorder2, pscpUpBorder3, pscpUpBorder4, 

//----------------------------------------------------------
// Physical surfaces - wire surface

// physsurf_wire = newreg; Physical Surface(physsurf_wire) = { -sbaf_1_1_1[0], sbb_1_1[], sbb_1_2[], sbc_1_1[], sbc_1_2[], sbcf_1_1_2[0], -saaf_1_1_1[0], sab_1_1[], sab_1_2[], sac_1_1[], sac_1_2[], sacf_1_1_2[0], -saaf_2_2_1[0], sab_2_1[], sab_2_2[], sac_2_1[], sac_2_2[], sacf_2_2_2[0], -sbaf_2_2_1[0], sbb_2_1[], sbb_2_2[], sbc_2_1[], sbc_2_2[], sbcf_2_2_2[0] };
// physsurf_wire = newreg; Physical Surface(physsurf_wire) = { physsurf_1a_wire, physsurf_1b_wire, physsurf_2a_wire, physsurf_2b_wire };

//----------------------------------------------------------
// Physical surfaces - gas exterior / interior surface

physsurf_gas = newreg; Physical Surface(physsurf_gas) = { psBsurfT, psbdh_1_1_bsurf1t, psbdh_1_1_bsurf1b, psbdh_1_2_bsurf3t, psbdh_1_2_bsurf3b, psbdh_2_1_bsurf4t, psbdh_2_1_bsurf4b, psbdh_2_2_bsurf6t, psbdh_2_2_bsurf6b, -surfTopCp1[], -sbb_1_1[0], -sbb_1_1[1], -sbc_1_1[0], -sbc_1_1[1], -sbb_1_2[0], -sbb_1_2[1], -sbc_1_2[0], -sbc_1_2[1], -sab_1_1[0], -sab_1_1[1], -sac_1_1[0], -sac_1_1[1], -sab_1_2[0], -sab_1_2[1], -sac_1_2[0], -sac_1_2[1], -sab_2_1[0], -sab_2_1[1], -sac_2_1[0], -sac_2_1[1], -sab_2_2[0], -sab_2_2[1], -sac_2_2[0], -sac_2_2[1], -sbb_2_1[0], -sbb_2_1[1], -sbc_2_1[0], -sbc_2_1[1], -sbb_2_2[0], -sbb_2_2[1], -sbc_2_2[0], -sbc_2_2[1] };
// Physical Surface(physsurf_gas) = { physsurf_container, -physsurf_x1_wire, -physsurf_x2_wire, -physsurf_y1_wire, -physsurf_y2_wire };

//----------------------------------------------------------
// Physical surfaces - dielectric surface

// physsurf_dielectric = newreg; Physical Surface(physsurf_dielectric) = total_sl_dielectric[];
// physsurf_dielectric = newreg; Physical Surface(physsurf_dielectric) = { surfTopCp1[], psSideDielectric1a, psSideDielectric2a, psSideDielectric3a, psSideDielectric4a, surfBottomCp2[] };

//----------------------------------------------------------
// Physical surfaces - lower electrode surface

physsurf_lower_cp = newreg; Physical Surface(physsurf_lower_cp) = { surfTopCp1[], pscpLowBorder1, pscpLowBorder2, pscpLowBorder3, pscpLowBorder4, surfBottomCp1[] }; 
// physsurf_high_cp = newreg; Physical Surface(physsurf_high_cp) = { surfTopCp2[], pscpUpBorder1, pscpUpBorder2, pscpUpBorder3, pscpUpBorder4, surfBottomCp2[] };

//----------------------------------------------------------
// Physical surfaces - upper electrode surface

physsurf_upper_el = newreg; Physical Surface(physsurf_upper_el) = { psBsurfT };


//------------------------------------------------------------------------------------------
/// PHYSICAL VOLUMES

//----------------------------------------------------------
// Physical Volumes - Container Volume

physvol_container = newreg; Physical Volume(physvol_container) = vol_container;

//----------------------------------------------------------
// Physical Volumes - Wire Volume

// physvol_wire = newreg; Physical Volume(physvol_wire) = total_vol_wire;

//----------------------------------------------------------
// Physical Volumes - Gas Volume

physvol_gas = newreg; Physical Volume(physvol_gas) = { vol_gas };
// Physical Volume(physvol_gas) = { vol_gas };

//----------------------------------------------------------
// Physical Volumes - Component Volumes

// physvol_dielectric = newreg; Physical Volume(physvol_dielectric) = { vol_dielectric };
physvol_lower_cp = newreg; Physical Volume(physvol_lower_cp) = { vol_lower_cp };
// physvol_high_cp = newreg; Physical Volume(physvol_high_cp) = { vol_high_cp };


//----------------------------------------------------------
// FEATURE / ELEMENT REMOVAL

// Delete { Volume { vol_gas }; }


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// FOOTER FILES
//

Include "mmGasUnitCellTestWindowDefinition.geo";

// End


