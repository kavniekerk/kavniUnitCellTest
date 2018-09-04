//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 
// mmGasUnitCellTestStraightWireTestCaseSingleLayer.geo
//
// Description:
// Geometry file for a MM cell
// This cell can be repeated any number of times within Garfield 
// to construct an arbitrarily large MM
//
//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 

// check update again

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// HEADER FILES
//

Include "mmGasComponentLabel.pro";
// Include "mmGasMeshingOptions.pro";

Include "mmGasUnitCellTestShellStructureSingleLayer.geo";
// Include "mmGasUnitCellTestShellStructureTripleLayer.geo";


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// MMGASSTRWIRE GEOMETRY MODULE
//

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// GENERAL INFORMATION
//
// mmGasUnitCellTestStraightWireTestCaseSingleLayer.geo
//
// Description
//
// References
//
// See also
//

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// CONSTANTS


//----------------------------------------------------------
// mesh window and wire parameters

mwf = 1;                                                   // meshWindow_factor
mm = 1;                                                    // geometrical scaling

rW = 0.0085 * mm;                                          // R of Wiremesh, in microns
hp0 = 0.025;                                               // half pitch of the window, in mm
hp = 0.025 * mm - 0*rW/mwf * mm;                           // half pitch of the window, in microns

p = hp0;                                                   // half pitch of the window, in mm

R = (p * p + rW * rW)/( (2 * rW) );                        // R
alpha = Asin( (p/R) );                                     // angle in radians

spFac1 = p*0.00;
spFac2 = p*0.00;

x1SPWindFac2 = p*0.00;
x2SPWindFac2 = p*0.00;
y1SPWindFac2 = p*0.00;
y2SPWindFac2 = p*0.00;

Rtp = R + R*0.0;
Rtn = R - R*0.0;


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

sl_wire_exterior_surface_1a[] = newreg; Surface Loop(sl_wire_exterior_surface_1a) = { saaf_1_1_1[0], sab_1_1[], sab_1_2[], sabf_2_1_2[0] };
// vol_1a_wire = newv; Compound Volume(vol_1a_wire) = { tmpab_1_1[1], tmpab_1_2[1] };
vol_1a_wire = newreg; Volume(vol_1a_wire) = sl_wire_exterior_surface_1a[];

Physical Volume(physvol_1a_wire) = vol_1a_wire;
Physical Surface(physsurf_1a_wire) = { saaf_1_1_1[0], sab_1_1[], sab_1_2[], sabf_2_1_2[0] };


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

sl_wire_exterior_surface_1b[] = newreg; Surface Loop(sl_wire_exterior_surface_1b) = { sbaf_1_1_1[0], sbb_1_1[], sbb_1_2[], sbbf_2_1_2[0] };
// vol_1b_wire = newreg; Compound Volume(vol_1b_wire) = { tmpbb_1_1[1], tmpbb_1_2[1] };
vol_1b_wire = newreg; Volume(vol_1b_wire) = sl_wire_exterior_surface_1b[];

Physical Volume(physvol_1b_wire) = vol_1b_wire;
Physical Surface(physsurf_1b_wire) = { sbaf_1_1_1[0], sbb_1_1[], sbb_1_2[], sbbf_2_1_2[0] };


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


sl_wire_exterior_surface_2a[] = newreg; Surface Loop(sl_wire_exterior_surface_2a) = { saaf_2_2_1[0], sab_2_1[], sab_2_2[], sabf_2_2_2[0] };
// vol_2a_wire1 = newreg; Volume(vol_2a_wire1) = { tmpab_2_1[1] };
// vol_2a_wire2 = newreg; Volume(vol_2a_wire2) = { tmpab_2_2[1] };
vol_2a_wire = newreg; Volume(vol_2a_wire) = sl_wire_exterior_surface_2a[];

Physical Volume(physvol_2a_wire) = vol_2a_wire;
// physvol_2a_wire1 = newreg; Physical Volume(physvol_2a_wire1) = vol_2a_wire1;
// physvol_2a_wire2 = newreg; Physical Volume(physvol_2a_wire2) = vol_2a_wire2;
Physical Surface(physsurf_2a_wire) = { saaf_2_2_1[0], sab_2_1[], sab_2_2[], sabf_2_2_2[0] };


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


sl_wire_exterior_surface_2b[] = newreg; Surface Loop(sl_wire_exterior_surface_2b) = { sbaf_2_2_1[0], sbb_2_1[], sbb_2_2[], sbbf_2_2_2[0] };
// vol_2b_wire1 = newreg; Volume(vol_2b_wire1) = { tmpbb_2_1[1] };
// vol_2b_wire2 = newreg; Volume(vol_2b_wire2) = { tmpbb_2_2[1] };
vol_2b_wire = newreg; Volume(vol_2b_wire) = sl_wire_exterior_surface_2b[];

Physical Volume(physvol_2b_wire) = vol_2b_wire;
// physvol_2b_wire1 = newreg; Physical Volume(physvol_2b_wire1) = vol_2b_wire1;
// physvol_2b_wire2 = newreg; Physical Volume(physvol_2b_wire2) = vol_2b_wire2;
Physical Surface(physsurf_2b_wire) = { sbaf_2_2_1[0], sbb_2_1[], sbb_2_2[], sbbf_2_2_2[0] };


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// INTER FILES
//

Include "mmGasUnitCellTestLineDefinition.geo";


//------------------------------------------------------------------------------------------
/// BOUNDING SURFACE EDGES


//----------------------------------------------------------
// Bounding and intersecting surfaces


//----------------------------------------------------------
// Face physsurfBdh_1_1 (Corner 1 - Corner 2)

l1bdh_1_1_bsurft1 = newl; Line(l1bdh_1_1_bsurft1) = {pexet2, pbdhbbt_1_1_2[1]};                    // top line
l2bdh_1_1_bsurft1 = newl; Line(l2bdh_1_1_bsurft1) = {pexet1, p1b1_3};                              // bottom circle
l1bdh_1_1_bsurfb1 = newl; Line(l1bdh_1_1_bsurfb1) = {ptl2c2, pbdhabt_1_2_2[1]};                    // bottom line
l2bdh_1_1_bsurfb1 = newl; Line(l2bdh_1_1_bsurfb1) = {ptl2c1, p2b1_1};                              // bottom circle

llbdh_1_1_bsurf1t = newreg; Line Loop(llbdh_1_1_bsurf1t) = { lexet1, l1bdh_1_1_bsurft1, -ll_bdhbbt_1_1_2[0], -ll_bdhbbt_1_1_1[0], -l2bdh_1_1_bsurft1 };
llbdh_1_1_bsurf1b = newreg; Line Loop(llbdh_1_1_bsurf1b) = { lcpbub1a, l1bdh_1_1_bsurfb1, -ll_bdhabc0_1_2_2[0], -ll_bdhabc1_1_2_2[0], -ll_bdhbbb_1_1_1[0], -ll_bdhbbb_1_1_2[0], -l2b1_2, -l2b1_1, -l2bdh_1_1_bsurfb1 };

psbdh_1_1_bsurf1t = newreg; Plane Surface(psbdh_1_1_bsurf1t) = { llbdh_1_1_bsurf1t };
psbdh_1_1_bsurf1b = newreg; Plane Surface(psbdh_1_1_bsurf1b) = { llbdh_1_1_bsurf1b };


//----------------------------------------------------------
// Face physsurfBdh_1_2 (Corner 2 - Corner 3)

l1bdh_1_2_bsurft1 = newl; Line(l1bdh_1_2_bsurft1) = {pexet3, p1a1_3};                              // top line
l1bdh_1_2_bsurfb1 = newl; Line(l1bdh_1_2_bsurfb1) = {ptl2c3, p2a1_1};                              // bottom line

llbdh_1_2_bsurf3t = newreg; Line Loop(llbdh_1_2_bsurf3t) = { lexet2, l1bdh_1_2_bsurft1, l1a1_2, l1a1_3, ll_bdhabb_1_2_2[0], ll_bdhabb_1_2_1[0], ll_bdhbbc0_1_1_2[0], ll_bdhbbc1_1_1_2[0], -l1bdh_1_1_bsurft1 };
llbdh_1_2_bsurf3b = newreg; Line Loop(llbdh_1_2_bsurf3b) = { lcpbub2a, l1bdh_1_2_bsurfb1, ll_bdhabt_1_2_2[0], ll_bdhabt_1_2_1[0], -l1bdh_1_1_bsurfb1 };

psbdh_1_2_bsurf3t = newreg; Plane Surface(psbdh_1_2_bsurf3t) = { llbdh_1_2_bsurf3t };
psbdh_1_2_bsurf3b = newreg; Plane Surface(psbdh_1_2_bsurf3b) = { llbdh_1_2_bsurf3b };


//----------------------------------------------------------
// Face physsurfBdh_2_1 (Corner 3 - Corner 4)

l1bdh_2_1_bsurft4 = newl; Line(l1bdh_2_1_bsurft4) = {pexet4, pbdhabt_2_1_2[1]};                    // top line, top circle
l1bdh_2_1_bsurfb4 = newl; Line(l1bdh_2_1_bsurfb4) = {ptl2c4, pbdhbbt_2_2_2[1]};                    // bottom line, bottom circle


llbdh_2_1_bsurf4t = newreg; Line Loop(llbdh_2_1_bsurf4t) = { lexet3, l1bdh_2_1_bsurft4, -ll_bdhabt_2_1_2[0], -ll_bdhabt_2_1_1[0], -l1bdh_1_2_bsurft1 };
llbdh_2_1_bsurf4b = newreg; Line Loop(llbdh_2_1_bsurf4b) = { lcpbub3a, l1bdh_2_1_bsurfb4, ll_bdhbbc0_2_2_2[0], ll_bdhbbc1_2_2_2[0], -ll_bdhabb_2_1_2[0], -ll_bdhabb_2_1_1[0], l2a1_2, l2a1_3, -l1bdh_1_2_bsurfb1 };

psbdh_2_1_bsurf4t = newreg; Plane Surface(psbdh_2_1_bsurf4t) = { llbdh_2_1_bsurf4t };
psbdh_2_1_bsurf4b = newreg; Plane Surface(psbdh_2_1_bsurf4b) = { llbdh_2_1_bsurf4b };


//----------------------------------------------------------
// Face physsurfBdh_2_2 (Corner 4 - Corner 1)

llbdh_2_2_bsurf6t = newreg; Line Loop(llbdh_2_2_bsurf6t) = { lexet4, l2bdh_1_1_bsurft1, -l1b1_2, -l1b1_1, ll_bdhbbb_2_2_2[0], ll_bdhbbb_2_2_1[0], -ll_bdhabc0_2_1_2[0], -ll_bdhabc1_2_1_2[0], -l1bdh_2_1_bsurft4 };
llbdh_2_2_bsurf6b = newreg; Line Loop(llbdh_2_2_bsurf6b) = { lcpbub4a, l2bdh_1_1_bsurfb1, ll_bdhbbt_2_2_1[0], ll_bdhbbt_2_2_2[0], -l1bdh_2_1_bsurfb4 };

psbdh_2_2_bsurf6t = newreg; Plane Surface(psbdh_2_2_bsurf6t) = { llbdh_2_2_bsurf6t };
psbdh_2_2_bsurf6b = newreg; Plane Surface(psbdh_2_2_bsurf6b) = { llbdh_2_2_bsurf6b };


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// FINAL DEFINITIONS (SURFACES / VOLUMES)


//------------------------------------------------------------------------------------------
/// SURFACE LOOPS

//----------------------------------------------------------
// Wire Gas Exterior Surface Loop - exterior wire gas surface loop

sl_wire_gas_total_surface = newreg; Surface Loop(sl_wire_gas_total_surface) = { psBsurfT, psbdh_1_1_bsurf1t, psbdh_1_1_bsurf1b, psbdh_1_2_bsurf3t, psbdh_1_2_bsurf3b, psbdh_2_1_bsurf4t, psbdh_2_1_bsurf4b, psbdh_2_2_bsurf6t, psbdh_2_2_bsurf6b, -surfTopCp1[], -sab_1_1[0], -sab_1_1[1], -sab_1_2[0], -sab_1_2[1], -sbb_1_1[0], -sbb_1_1[1], -sbb_1_2[0], -sbb_1_2[1], -sab_2_1[0], -sab_2_1[1], -sab_2_2[0], -sab_2_2[1], -sbb_2_1[0], -sbb_2_1[1], -sbb_2_2[0], -sbb_2_2[1] };
total_sl_wire_gas_total_surface[] += sl_wire_gas_total_surface;

//----------------------------------------------------------
// Gas Exterior Surface Loop - exterior gas surface loop

total_sl_gas_exterior_surface[0] = newreg; Surface Loop(total_sl_gas_exterior_surface[0]) = { surfBottomCp1[], pscpLowBorder1, pscpLowBorder2, pscpLowBorder3, pscpLowBorder4, psbdh_1_1_bsurf1t, sbaf_2_2_1[0], sbb_1_1[2], sbb_1_2[2], sabf_2_2_2[0], psbdh_1_1_bsurf1b, psbdh_1_2_bsurf3t, saaf_1_1_1[0], sab_2_1[2], sab_2_2[2], sbbf_2_1_2[0], psbdh_1_2_bsurf3b, psbdh_2_1_bsurf4t, saaf_2_2_1[0], sab_1_1[2], sab_1_2[2], sbbf_2_2_2[0], psbdh_2_1_bsurf4b, psbdh_2_2_bsurf6t, sbaf_1_1_1[0], sbb_2_1[2], sbb_2_2[2], sabf_2_1_2[0], psbdh_2_2_bsurf6b, psBsurfT };
// psSideDielectric1a, psSideDielectric2a, psSideDielectric3a, psSideDielectric4a, pscpUpBorder1, pscpUpBorder2, pscpUpBorder3, pscpUpBorder4,

//----------------------------------------------------------
// Dielectric Surface Loop - dielectric surface loop

// sl_dielectric = newreg; Surface Loop(sl_dielectric) = { surfTopCp1[], psSideDielectric1a, psSideDielectric2a, psSideDielectric3a, psSideDielectric4a, surfBottomCp2[] };
// total_sl_dielectric[] += sl_dielectric;

//----------------------------------------------------------
// Wire Volume Surface Loop - wire electrode

// sl_wire = newreg; Surface Loop(sl_wire) = { saaf_1_1_1[0], sab_1_1[], sab_1_2[], sabf_2_1_2[0], sbaf_1_1_1[0], sbb_1_1[], sbb_1_2[], sbbf_2_1_2[0], saaf_2_2_1[], sab_2_1[], sab_2_2[], sabf_2_2_2[], sbaf_2_2_1[0], sbb_2_1[], sbb_2_2[], sbbf_2_2_2[0] };
// vol_wire = newreg; Volume(vol_wire) = {sl_wire};

//----------------------------------------------------------
// Electrode Surface Loop - electrode surface loop

sl_lower_cp = newreg; Surface Loop(sl_lower_cp) = { surfBottomCp1[], pscpLowBorder1, pscpLowBorder2, pscpLowBorder3, pscpLowBorder4, surfTopCp1[] };
total_sl_lower_cp[] += sl_lower_cp;

// sl_high_cp = newreg; Surface Loop(sl_high_cp) = { surfBottomCp2[], pscpUpBorder1, pscpUpBorder2, pscpUpBorder3, pscpUpBorder4, surfTopCp2[] };
// total_sl_high_cp[] += sl_high_cp;


//------------------------------------------------------------------------------------------
/// CONTAINER VOLUME

// vol_container = newreg; Volume(vol_container) = { total_sl_gas_exterior_surface[0] };

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

Physical Surface(physsurf_bd1h1) = { psbdh_1_1_bsurf1t, sbaf_2_2_1[0], sbb_1_1[2], sbb_1_2[2], sabf_2_2_2[0], psbdh_1_1_bsurf1b };               
Physical Surface(physsurf_bd1h2) = { psbdh_1_2_bsurf3t, saaf_1_1_1[0], sab_2_1[2], sab_2_2[2], sbbf_2_1_2[0], psbdh_1_2_bsurf3b };               
Physical Surface(physsurf_bd2h1) = { psbdh_2_1_bsurf4t, saaf_2_2_1[0], sab_1_1[2], sab_1_2[2], sbbf_2_2_2[0], psbdh_2_1_bsurf4b };               
Physical Surface(physsurf_bd2h2) = { psbdh_2_2_bsurf6t, sbaf_1_1_1[0], sbb_2_1[2], sbb_2_2[2], sabf_2_1_2[0], psbdh_2_2_bsurf6b };               

//----------------------------------------------------------
// Physical surfaces - container surface

// Physical Surface(physsurf_container) = { surfBottomCp1[], pscpLowBorder1, pscpLowBorder2, pscpLowBorder3, pscpLowBorder4, psbdh_1_1_bsurf1t, sbaf_2_2_1[0], sbb_1_1[2], sbb_1_2[2], sabf_2_2_2[0], psbdh_1_1_bsurf1b, psbdh_1_2_bsurf3t, saaf_1_1_1[0], sab_2_1[2], sab_2_2[2], sbbf_2_1_2[0], psbdh_1_2_bsurf3b, psbdh_2_1_bsurf4t, saaf_2_2_1[0], sab_1_1[2], sab_1_2[2], sbbf_2_2_2[0], psbdh_2_1_bsurf4b, psbdh_2_2_bsurf6t, sbaf_1_1_1[0], sbb_2_1[2], sbb_2_2[2], sabf_2_1_2[0], psbdh_2_2_bsurf6b, psBsurfT };
// psSideDielectric1a, psSideDielectric2a, psSideDielectric3a, psSideDielectric4a, pscpUpBorder1, pscpUpBorder2, pscpUpBorder3, pscpUpBorder4, 

//----------------------------------------------------------
// Physical surfaces - wire surface

// Physical Surface(physsurf_wire) = { saaf_1_1_1[0], sab_1_1[], sab_1_2[], sabf_2_1_2[0], sbaf_1_1_1[0], sbb_1_1[], sbb_1_2[], sbbf_2_1_2[0], saaf_2_2_1[], sab_2_1[], sab_2_2[], sabf_2_2_2[], sbaf_2_2_1[0], sbb_2_1[], sbb_2_2[], sbbf_2_2_2[0] };
// Physical Surface(physsurf_wire) = { physsurf_1a_wire, physsurf_1b_wire, physsurf_2a_wire, physsurf_2b_wire };

//----------------------------------------------------------
// Physical surfaces - gas exterior / interior surface

Physical Surface(physsurf_gas) = { psBsurfT, psbdh_1_1_bsurf1t, psbdh_1_1_bsurf1b, psbdh_1_2_bsurf3t, psbdh_1_2_bsurf3b, psbdh_2_1_bsurf4t, psbdh_2_1_bsurf4b, psbdh_2_2_bsurf6t, psbdh_2_2_bsurf6b, -surfTopCp1[], -sab_1_1[0], -sab_1_1[1], -sab_1_2[0], -sab_1_2[1], -sbb_1_1[0], -sbb_1_1[1], -sbb_1_2[0], -sbb_1_2[1], -sab_2_1[0], -sab_2_1[1], -sab_2_2[0], -sab_2_2[1], -sbb_2_1[0], -sbb_2_1[1], -sbb_2_2[0], -sbb_2_2[1] };
// Physical Surface(physsurf_gas) = { physsurf_container, -physsurf_x1_wire, -physsurf_x2_wire, -physsurf_y1_wire, -physsurf_y2_wire };

//----------------------------------------------------------
// Physical surfaces - dielectric surface

// Physical Surface(physsurf_dielectric) = total_sl_dielectric[];
// Physical Surface(physsurf_dielectric) = { surfTopCp1[], psSideDielectric1a, psSideDielectric2a, psSideDielectric3a, psSideDielectric4a, surfBottomCp2[] };

//----------------------------------------------------------
// Physical surfaces - lower electrode surface

Physical Surface(physsurf_lower_cp) = { surfTopCp1[], pscpLowBorder1, pscpLowBorder2, pscpLowBorder3, pscpLowBorder4, surfBottomCp1[] }; 
// Physical Surface(physsurf_high_cp) = { surfTopCp2[], pscpUpBorder1, pscpUpBorder2, pscpUpBorder3, pscpUpBorder4, surfBottomCp2[] };

//----------------------------------------------------------
// Physical surfaces - upper electrode surface

Physical Surface(physsurf_upper_el) = { psBsurfT };


//------------------------------------------------------------------------------------------
/// PHYSICAL VOLUMES

//----------------------------------------------------------
// Physical Volumes - Container Volume

// Physical Volume(physvol_container) = vol_container;

//----------------------------------------------------------
// Physical Volumes - Wire Volume

// Physical Volume(physvol_wire) = total_vol_wire;

//----------------------------------------------------------
// Physical Volumes - Gas Volume

Physical Volume(physvol_gas) = { vol_gas };
// Physical Volume(physvol_gas) = { vol_gas };

//----------------------------------------------------------
// Physical Volumes - Component Volumes

// Physical Volume(physvol_dielectric) = { vol_dielectric };
Physical Volume(physvol_lower_cp) = { vol_lower_cp };
// Physical Volume(physvol_high_cp) = { vol_high_cp };


//----------------------------------------------------------
// FEATURE / ELEMENT REMOVAL

// Delete { Volume { vol_gas }; }


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// FOOTER FILES
//

// Include "mmGasUnitCellTestWindowDefinition.geo";

// End


