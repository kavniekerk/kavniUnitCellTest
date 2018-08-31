//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 
// mmGasUnitCellTestCurvedStraightWireDefinition.geo
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

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// MMGASSTRWIRE GEOMETRY MODULE
//

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// GENERAL INFORMATION
//
// mmGasUnitCellTestCurvedStraightWireDefinition.geo
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
// mesh window and wire parameters

mwf = 1;                                                   // meshWindow_factor

mm = 1;                                                    // geometrical scaling
rW = 0.010 * mm;                                           // R of Wiremesh, in microns
hp0 = 0.0225;                                              // half pitch of the window, in mm
hp = 0.0225 * mm - 0*rW/mwf * mm;                          // half pitch of the window, in microns

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
/// FOOTER FILES
//

Include "mmGasUnitCellTestWindowDefinition.geo";
Include "mmGasUnitCellTestLineDefinition.geo";

// End
