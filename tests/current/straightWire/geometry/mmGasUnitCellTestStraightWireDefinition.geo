//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 
// mmGasUnitCellTestStraightWireDefinition.geo
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
// mmGasUnitCellTestStraightWireDefinition.geo
//
// Description
//
// References
//
// See also
//

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// CONSTANTS 

a = 0.045;                                       // distance between unitCellTestWire wires, in mm

mwf = 1;                                         // meshWindow_factor

mm = 1;                                          // geometrical scaling
rW = 0.009 * mm;                                 // R of Wiremesh, in microns
hp0 = 0.0225;                                    // half pitch of the window, in mm
hp = 0.010 * mm - 0*rW/mwf * mm;                 // half pitch of the window, in microns

p = hp0;                                         // half pitch of the window, in mm

R = (p * p + rW * rW)/( (2 * rW) );              // R
alpha = Asin( (p/R) );                           // angle in radians

meshLevel = 0.10;                                // mesh level, in mm
meshWindow = -0.0135;                            // mesh window, in mm

spFac1 = p*0.000;
spFac2 = p*0.000;

x1SPWindFac2 = p*0.00;
x2SPWindFac2 = p*0.00;
y1SPWindFac2 = p*0.00;
y2SPWindFac2 = p*0.00;

Rtp = R + R*0.0;
Rtn = R - R*0.0;

//----------------------------------------------------------
// shell parameters

geofx = 1;                                       // geometric_factor
geofy = 1;                                       // geometric_factor

m1 = 0;
n1 = 0;

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

  lcCopperPlateBdry = 0.0025;                                                                                               // characterization of metal surfaces / anode
  lcExtElectrodeBdry = 0.0050;                                                                                              // characterization of external electrode / cathode
  lcWireMesh = 0.001;                                                                                                       // characterization of wire electrode


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/////// Face 1a - half wire (y - z) extrude in x direction - Corner 3 to Corner 4
//
// Wire 1a1


p1a1_0 = newp; Point(p1a1_0) = {p+p+spFac1,p+p+spFac1,rW+meshLevel*mm, lcWireMesh * mm};                                    // centre circle
p1a1_1 = newp; Point(p1a1_1) = {p+p+spFac1,p+p+spFac1,0+meshLevel*mm, lcWireMesh * mm};                                     // bottom circle
// p1a1_2 = newp; Point(p1a1_2) = {p+p+spFac1,p+p+spFac1+rW,rW+meshLevel*mm, lcWireMesh * mm};                              // right circle
p1a1_3 = newp; Point(p1a1_3) = {p+p+spFac1,p+p+spFac1,2*rW+meshLevel*mm, lcWireMesh * mm};                                  // top circle
p1a1_4 = newp; Point(p1a1_4) = {p+p+spFac1,p+p+spFac1-rW,rW+meshLevel*mm, lcWireMesh * mm};                                 // left circle

l1a1s_1 = newl; Line(l1a1s_1) = {p1a1_1, p1a1_3};
l1a1_2 = newc; Circle(l1a1_2) = {p1a1_3, p1a1_0, p1a1_4};
l1a1_3 = newc; Circle(l1a1_3) = {p1a1_4, p1a1_0, p1a1_1};

ll1a1_1 = newll; Line Loop(ll1a1_1) = {l1a1_2, l1a1_3, l1a1s_1};

s1a1_1 = news; Plane Surface(s1a1_1) = {ll1a1_1};

tmpaa_1_1[] = {s1a1_1};

saaf_1_1_1[] = {};
saaf_1_1_1[] = tmpaa_1_1[0];

tmpab_1_1[] = Extrude {-a/2, 0, 0} { Surface{ tmpaa_1_1[0] }; Recombine;
};

sab_1_1[] = {};
sab_1_1[] += tmpab_1_1[{2:4}];


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Wire 1a2


tmpab_1_2[] = Extrude {-a/2, 0, 0} { Surface{ tmpab_1_1[0] }; Recombine;
};

sab_1_2[] = {};
sab_1_2[] += tmpab_1_2[{2:4}];


sabf_2_1_2[] = {};
sabf_2_1_2[] = {tmpab_1_2[0]};

// sl_wire_exterior_surface_1a[] = newreg; Surface Loop(sl_wire_exterior_surface_1a) = { saaf_1_1_1[0], sab_1_1[], sab_1_2[], sabf_2_1_2[0] };
// vol_1a_wire = newv; Compound Volume(vol_1a_wire) = { tmpab_1_1[1], tmpab_1_2[1] };
// vol_1a_wire = newreg; Volume(vol_1a_wire) = sl_wire_exterior_surface_1a[];

// Physical Volume(physvol_1a_wire) = vol_1a_wire;
// Physical Surface(physsurf_1a_wire) = { saaf_1_1_1[0], sab_1_1[], sab_1_2[], sabf_2_1_2[0] };


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/////// Face 1b - half wire (y - z) extrude in x direction - Corner 1 to Corner 2
//
// Wire 1b1


p1b1_0 = newp; Point(p1b1_0) = {-p+p+spFac1,-p+p+spFac1,rW+meshLevel*mm, lcWireMesh * mm};                                  // centre circle
p1b1_1 = newp; Point(p1b1_1) = {-p+p+spFac1,-p+p+spFac1,0+meshLevel*mm, lcWireMesh * mm};                                   // bottom circle
p1b1_2 = newp; Point(p1b1_2) = {-p+p+spFac1,-p+p+spFac1+rW,rW+meshLevel*mm, lcWireMesh * mm};                               // right circle
p1b1_3 = newp; Point(p1b1_3) = {-p+p+spFac1,-p+p+spFac1,2*rW+meshLevel*mm, lcWireMesh * mm};                                // top circle
// p1b1_4 = newp; Point(p1b1_4) = {-p+p+spFac1,-p+p+spFac1-rW,rW+meshLevel*mm, lcWireMesh * mm};                            // left circle

l1b1_1 = newc; Circle(l1b1_1) = {p1b1_1, p1b1_0, p1b1_2};
l1b1_2 = newc; Circle(l1b1_2) = {p1b1_2, p1b1_0, p1b1_3};
l1b1s_3 = newl; Line(l1b1s_3) = {p1b1_1, p1b1_3};

ll1b1_1 = newll; Line Loop(ll1b1_1) = {l1b1_1, l1b1_2, -l1b1s_3};

s1b1_1 = news; Plane Surface(s1b1_1) = {ll1b1_1};

tmpba_1_1[] = {s1b1_1};

sbaf_1_1_1[] = {};
sbaf_1_1_1[] = tmpba_1_1[0];

tmpbb_1_1[] = Extrude {a/2, 0, 0} { Surface{ tmpba_1_1[0] }; Recombine;
};

sbb_1_1[] = {};
sbb_1_1[] += tmpbb_1_1[{2:4}];


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Wire 1b2

tmpbb_1_2[] = Extrude {a/2, 0, 0} { Surface{ tmpbb_1_1[0] }; Recombine;
};

sbb_1_2[] = {};
sbb_1_2[] += tmpbb_1_2[{2:4}];

sbbf_2_1_2[] = {};
sbbf_2_1_2[] = {tmpbb_1_2[0]};

// sl_wire_exterior_surface_1b[] = newreg; Surface Loop(sl_wire_exterior_surface_1b) = { sbaf_1_1_1[0], sbb_1_1[], sbb_1_2[], sbbf_2_1_2[0] };
// vol_1b_wire = newreg; Compound Volume(vol_1b_wire) = { tmpbb_1_1[1], tmpbb_1_2[1] };
// vol_1b_wire = newreg; Volume(vol_1b_wire) = sl_wire_exterior_surface_1b[];

// Physical Volume(physvol_1b_wire) = vol_1b_wire;
// Physical Surface(physsurf_1b_wire) = { sbaf_1_1_1[0], sbb_1_1[], sbb_1_2[], sbbf_2_1_2[0] };


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/////// Face 2a - half wire (x - z) extrude in y direction - Corner 3 to Corner 2
//
// Wire 2a1


p2a1_0 = newp; Point(p2a1_0) = {p+p+spFac2,p+p+spFac2,-rW+meshLevel*mm, lcWireMesh * mm};                                   // centre circle
p2a1_1 = newp; Point(p2a1_1) = {p+p+spFac2,p+p+spFac2,-2*rW+meshLevel*mm, lcWireMesh * mm};                                 // bottom circle
// p2a1_2 = newp; Point(p2a1_2) = {p+p+spFac2+rW,p+p+spFac2,-rW+meshLevel*mm, lcWireMesh * mm};                             // right circle
p2a1_3 = newp; Point(p2a1_3) = {p+p+spFac2,p+p+spFac2,0+meshLevel*mm, lcWireMesh * mm};                                     // top circle
p2a1_4 = newp; Point(p2a1_4) = {p+p+spFac2-rW,p+p+spFac2,-rW+meshLevel*mm, lcWireMesh * mm};                                // left circle

l2a1s_1 = newl; Line(l2a1s_1) = {p2a1_1, p2a1_3};
l2a1_2 = newc; Circle(l2a1_2) = {p2a1_3, p2a1_0, p2a1_4};
l2a1_3 = newc; Circle(l2a1_3) = {p2a1_4, p2a1_0, p2a1_1};

ll2a1_1 = newll; Line Loop(ll2a1_1) = {l2a1_2, l2a1_3, l2a1s_1};

s2a1_1 = news; Plane Surface(s2a1_1) = {ll2a1_1};

tmpaa_2_1[] = {s2a1_1};

saaf_2_2_1[] = {};
saaf_2_2_1[] = tmpaa_2_1[0];

tmpab_2_1[] = Extrude {0, -a/2, 0} { Surface{ tmpaa_2_1[0] }; Recombine;
};

sab_2_1[] = {};
sab_2_1[] += tmpab_2_1[{2:4}];


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Wire 2a2

tmpab_2_2[] = Extrude {0, -a/2, 0} { Surface{ tmpab_2_1[0] }; Recombine;
};

sab_2_2[] = {};
sab_2_2[] += tmpab_2_2[{2:4}];


sabf_2_2_2[] = {};
sabf_2_2_2[] = {tmpab_2_2[0]};


// sl_wire_exterior_surface_2a[] = newreg; Surface Loop(sl_wire_exterior_surface_2a) = { saaf_2_2_1[0], sab_2_1[], sab_2_2[], sabf_2_2_2[0] };
// vol_2a_wire1 = newreg; Volume(vol_2a_wire1) = { tmpab_2_1[1] };
// vol_2a_wire2 = newreg; Volume(vol_2a_wire2) = { tmpab_2_2[1] };
// vol_2a_wire = newreg; Volume(vol_2a_wire) = sl_wire_exterior_surface_2a[];

// Physical Volume(physvol_2a_wire) = vol_2a_wire;
// physvol_2a_wire1 = newreg; Physical Volume(physvol_2a_wire1) = vol_2a_wire1;
// physvol_2a_wire2 = newreg; Physical Volume(physvol_2a_wire2) = vol_2a_wire2;
// Physical Surface(physsurf_2a_wire) = { saaf_2_2_1[0], sab_2_1[], sab_2_2[], sabf_2_2_2[0] };


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/////// Face 2b - half wire (x - z) extrude in y direction - Corner 1 to Corner 4
//
// Wire 2b1


p2b1_0 = newp; Point(p2b1_0) = {-p+p+spFac2,-p+p+spFac2,-rW+meshLevel*mm, lcWireMesh * mm};                                 // centre circle
p2b1_1 = newp; Point(p2b1_1) = {-p+p+spFac2,-p+p+spFac2,-2*rW+meshLevel*mm, lcWireMesh * mm};                               // bottom circle
p2b1_2 = newp; Point(p2b1_2) = {-p+p+spFac2+rW,-p+p+spFac2,-rW+meshLevel*mm, lcWireMesh * mm};                              // right circle
p2b1_3 = newp; Point(p2b1_3) = {-p+p+spFac2,-p+p+spFac2,0+meshLevel*mm, lcWireMesh * mm};                                   // top circle
// p2b1_4 = newp; Point(p2b1_4) = {-p+p+spFac2-rW,-p+p+spFac2,-rW+meshLevel*mm, lcWireMesh * mm};                           // left circle

l2b1_1 = newc; Circle(l2b1_1) = {p2b1_1, p2b1_0, p2b1_2};
l2b1_2 = newc; Circle(l2b1_2) = {p2b1_2, p2b1_0, p2b1_3};
l2b1s_3 = newl; Line(l2b1s_3) = {p2b1_1, p2b1_3};

ll2b1_1 = newll; Line Loop(ll2b1_1) = {l2b1_1, l2b1_2, -l2b1s_3};

s2b1_1 = news; Plane Surface(s2b1_1) = {ll2b1_1};

tmpba_2_1[] = {s2b1_1};

sbaf_2_2_1[] = {};
sbaf_2_2_1[] = tmpba_2_1[0];

tmpbb_2_1[] = Extrude {0, a/2, 0} { Surface{ tmpba_2_1[0] }; Recombine;
};

sbb_2_1[] = {};
sbb_2_1[] += tmpbb_2_1[{2:4}];


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Wire 2b2

tmpbb_2_2[] = Extrude {0, a/2, 0} { Surface{ tmpbb_2_1[0] }; Recombine;
};

sbb_2_2[] = {};
sbb_2_2[] += tmpbb_2_2[{2:4}];


sbbf_2_2_2[] = {};
sbbf_2_2_2[] = {tmpbb_2_2[0]};


// sl_wire_exterior_surface_2b[] = newreg; Surface Loop(sl_wire_exterior_surface_2b) = { sbaf_2_2_1[0], sbb_2_1[], sbb_2_2[], sbbf_2_2_2[0] };
// vol_2b_wire1 = newreg; Volume(vol_2b_wire1) = { tmpbb_2_1[1] };
// vol_2b_wire2 = newreg; Volume(vol_2b_wire2) = { tmpbb_2_2[1] };
// vol_2b_wire = newreg; Volume(vol_2b_wire) = sl_wire_exterior_surface_2b[];

// Physical Volume(physvol_2b_wire) = vol_2b_wire;
// physvol_2b_wire1 = newreg; Physical Volume(physvol_2b_wire1) = vol_2b_wire1;
// physvol_2b_wire2 = newreg; Physical Volume(physvol_2b_wire2) = vol_2b_wire2;
// Physical Surface(physsurf_2b_wire) = { sbaf_2_2_1[0], sbb_2_1[], sbb_2_2[], sbbf_2_2_2[0] };


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// FOOTER FILES
//

Include "mmGasUnitCellTestWindowDefinition.geo";
Include "mmGasUnitCellTestLineDefinition.geo";

// End