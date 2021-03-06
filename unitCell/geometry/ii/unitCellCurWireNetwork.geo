Include "unitCellComponentLabel.pro";
// Include "unitCellMeshingOptions.pro";

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// MMGAS_STR_WIRE GEOMETRY MODULE
//

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// GENERAL INFORMATION
//
// unitCellCurWireNetwork.geo
//
// Description
//
// References
//
// See also
//

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// CONSTANTS

mesh_level = 0.025;                                     // mesh level, in mm
mesh_window = 0.05;                                     // mesh window, in mm

//----------------------------------------------------------
// pillar parameters

r0 = 0.005;                                             // the pillar radius, in mm
pil_f_x = 0;                                            // pillar co-ordinates, multiplication factor in x, 1.25
pil_f_y = 0;                                            // pillar co-ordinates, multiplication factor in y, 1.25
pil_c_x = -0.025*0 - 0/4;                               // pillar co-ordinates, constant factor in x, -0.025
pil_c_y = -0.025*0 - 0/4;                               // pillar co-ordinates, constant factor in y, -0.025

ttD = ( mesh_level - 0.005 );                           // top of dielectric pillar
tteD1 = ( ttD - 0.001 );                                // etched pillar level 1
tteD2 = ( 0.5 * (ttD - tteD1) + tteD1 );                // etched pillar level 2

a = 0.080;                                              // the "pitch", or distance between GEM pillars, in mm

//----------------------------------------------------------
// vertical parameters

r1 = 0.001;                                             // the etching amount (etch radius = r0 + r1), in mm
tlgC = ( 0.0000 ) / 2;                                  // lower electrode ground copper thickness, in mm
tltC = ( 0.0035 ) / 2;                                  // lower electrode top copper thickness, in mm
tM = ( 0.0035 ) / 2;                                    // dielectric thickness, in mm
tubC = ( tltC + tM );                                   // higher electrode bottom copper thickness, in mm
tutC = tubC + ( 0.0035 ) / 2;                           // higher electrode top copper thickness, in mm
lE = 0.5;                                               // distance from GEM plates to upper exterior electrode, in mm
lP = 0.1;                                               // distance from lower LEM plate to pad (readout) plane, in mm

//----------------------------------------------------------
// mesh window and wire parameters

mwf = 1;                                                // mesh_window_factor
mm = 1;                                                 // geometrical scaling
r_w = 0.009 * mm;                                       // radius of Wiremesh, in microns
p_0 = 0.020;                                            // pitch of the window, in mm
p = 0.020 * mm - 0 * r_w/mwf * mm;                      // pitch of the window, in microns
R = (p * p + r_w * r_w)/(2 * r_w);                      // radius
alpha = Asin((p/R));                                    // angle in radians
Total_Grid_size = (a - 0.01)/2;                         // total grid size, in mm, 0.4

h_f = 0*r_w;                                            // heightfactor

Number_Wires = ( (Total_Grid_size) / (p_0) ) / 2;       // number of wires
Wire_length = ( Total_Grid_size / Number_Wires ) / 2;   // wire length

Number_Units_x = 0;                                     // number of units, 1
Number_Units_y = 0;                                     // number of units, 1

geo_wc_xr = 2*r_w;                                      // y-direction wire in x radial direction
geo_wc_yr = 2*r_w;                                      // x-direction wire in y radial direction

geo_wc_xd = 2*r_w;                                      // x-direction wire in x-direction
geo_wc_yd = 2*r_w;                                      // y-direction wire in y-direction

x1_sp_wind_fac2 = p*0.00;
x2_sp_wind_fac2 = p*0.00;
y1_sp_wind_fac2 = p*0.00;
y2_sp_wind_fac2 = p*0.00;

sp_fac = p*1.00;
sp_fac1 = p*1.00;

Rtp = R - R*0.00;
Rtn = R + R*0.00;

n_1 = 0;
m_1 = 0;
n_2 = 1;
m_2 = 1;

i_t_x = Number_Wires;
j_t_x = Number_Wires + 1;

i_t_y = Number_Wires;
j_t_y = Number_Wires + 1;

//----------------------------------------------------------
// shell parameters

geo_f_x = 1;                                            // geometric_factor
geo_f_y = 1;                                            // geometric_factor

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// GEOMETRY PARAMETERS

//----------------------------------------------------------
// Extrusion Precision

// Geometry.ExtrudeSplinePoints = 3;
// Geometry.Points = 0;

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// MESHING PARAMETERS

//----------------------------------------------------------
// Characteristic lengths - characterization of mesh

// current best dimensions for mesh characteristic lengths

lcDielectricpillar = 0.0025;                            // characterization of dielectric 
lcEtchingpillar = 0.0025;                               // characterization of dielectric etching
lcCopperPlateBdry = 0.0025;                             // characterization of metal surfaces / anode
lcExtElectrodeBdry = 0.005;                             // characterization of external electrode / cathode
lcWireMesh = 0.00075;                                   // characterization of wire electrode


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Wire Mesh


//----------------------------------------------------------
// First set of wires

//----------------------------------------------------------
// x-direction

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////// Face 1a - half wire (y - z) extrude in x direction - Corner 3 to Corner 4
// Wire 1a1

p0_1a = newp; Point(p0_1a)        = {p+sp_fac1,p+sp_fac1,-r_w+mesh_level*mm, lcWireMesh * mm};                                             // centre circle
p1a_1_1 = newp; Point(p1a_1_1)    = {p+sp_fac1,p+sp_fac1,-2*r_w+mesh_level*mm, lcWireMesh * mm};                                           // bottom circle
// p2_1a = newp; Point(p2_1a)     = {p+sp_fac1,p+sp_fac1+r_w,-r_w+mesh_level*mm, lcWireMesh * mm};                                         // right circle
p1a_3_1 = newp; Point(p1a_3_1)    = {p+sp_fac1,p+sp_fac1,0+mesh_level*mm, lcWireMesh * mm};                                                // top circle
p4_1a = newp; Point(p4_1a)        = {p+sp_fac1,p+sp_fac1-r_w,-r_w+mesh_level*mm, lcWireMesh * mm};                                         // left circle

l2_1as = newl; Line(l2_1as)       = {p1a_1_1, p1a_3_1};
l3_1a = newc; Circle(l3_1a)       = {p1a_3_1, p0_1a, p4_1a};
l4_1a = newc; Circle(l4_1a)       = {p4_1a, p0_1a, p1a_1_1};

ll1_1a = newll; Line Loop(ll1_1a) = {l3_1a, l4_1a, l2_1as};

s_1_1a = news; Plane Surface(s_1_1a) = {ll1_1a};

tmpa_1_1[] = {};
tmpa_1_1[] = {s_1_1a};

/*
tmpa_1_1b[] = Extrude {-x2_sp_wind_fac,0,0} {
  Surface{tmpa_1_1a[0]};
};

sa_1_1[] = tmpa_1_1b[{2:4}];
*/

tmpa_1_1[] = Extrude {{x2_sp_wind_fac2,0,0},{0,1,0},{p+1*sp_fac1,p+1*sp_fac1,Rtn-r_w}, alpha} {
  Surface{tmpa_1_1[0]};
};

sa_1_1[] = tmpa_1_1[{2:4}];

// Wire 1a2

sa_1_2[] = {};
tmpa_1_2[] = {tmpa_1_1[0]};

tmpa_1_2[] = Extrude {{x2_sp_wind_fac2,0,0},{0,-1,0},{-p+1*sp_fac1,p+1*sp_fac1,-Rtp+r_w}, alpha} {
  Surface{tmpa_1_2[0]};
};

sa_1_2[] = tmpa_1_2[{2:4}];

/*
tmpa_1_2c[] = Extrude {-x2_sp_wind_fac,0,0} {
  Surface{tmpa_1_2b[0]};
};

sa_1_2[] = tmpa_1_2c[{2:4}];
*/

s_1_1a1[] = s_1_1a;
s_1_1a2[] = tmpa_1_2[0];

sl_wire_exterior_surface_1a = newsl; Surface Loop(sl_wire_exterior_surface_1a) = { -s_1_1a1[], sa_1_1[], sa_1_2[], s_1_1a2[] }; // sa_1_1b[], sa_1_2c[]
// vol_1a_wire = newv; Compound Volume(vol_1a_wire) = { tmpa_1_1[1], tmpa_1_2[1] }; // tmpa_1_1b[1], tmpa_1_2c[1]
vol_1a_wire = newv; Volume(vol_1a_wire) = sl_wire_exterior_surface_1a;

Physical Volume(physvol_1a_wire) = vol_1a_wire;
Physical Surface(physsurf_1a_wire) = { -s_1_1a1[], sa_1_1[], sa_1_2[], s_1_1a2[] }; // sa_1_1b[], sa_1_2c[]


//----------------------------------------------------------
// First set of wires

//----------------------------------------------------------
// y-direction

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////// Face 2a - half wire (x - z) extrude in y direction - Corner 3 to Corner 2
// Wire 2a1

p0_2a = newp; Point(p0_2a)      = {p+sp_fac1,p+sp_fac1,r_w+mesh_level*mm, lcWireMesh * mm};                                                // centre circle
p2a_1_1 = newp; Point(p2a_1_1)  = {p+sp_fac1,p+sp_fac1,0+mesh_level*mm, lcWireMesh * mm};                                                  // bottom circle
// p2_2a = newp; Point(p2_2a)   = {p+sp_fac1+r_w,p+sp_fac1,r_w+mesh_level*mm, lcWireMesh * mm};                                            // right circle
p2a_3_1 = newp; Point(p2a_3_1)  = {p+sp_fac1,p+sp_fac1,2*r_w+mesh_level*mm, lcWireMesh * mm};                                              // top circle
p4_2a = newp; Point(p4_2a)      = {p+sp_fac1-r_w,p+sp_fac1,r_w+mesh_level*mm, lcWireMesh * mm};                                            // left circle

l2_2as = newl; Line(l2_2as)     = {p2a_1_1, p2a_3_1};
l3_2a = newl; Circle(l3_2a)     = {p2a_3_1, p0_2a, p4_2a};
l4_2a = newl; Circle(l4_2a)     = {p4_2a, p0_2a, p2a_1_1};

ll1_2a = newll; Line Loop(ll1_2a) = {l3_2a, l4_2a, l2_2as};

s_1_2a = news; Plane Surface(s_1_2a) = {ll1_2a};

sa_2_1[] = {};
tmpa_2_1[] = {s_1_2a};

/*
tmpa_2_1b[] = Extrude {0,-y1_sp_wind_fac,0} {
  Surface{tmpa_2_1a[0]};
};

sa_2_1[] = tmpa_2_1b[{2:4}];
*/

tmpa_2_1[] = Extrude {{0,y1_sp_wind_fac2,0},{1,0,0},{p+1*sp_fac1,p+1*sp_fac1,-Rtp+r_w}, alpha} {
  Surface{tmpa_2_1[0]};
};

sa_2_1[] = tmpa_2_1[{2:4}];

// Wire 2a2

sa_2_2[] = {};
tmpa_2_2[] = {tmpa_2_1[0]};

tmpa_2_2[] = Extrude {{0,y1_sp_wind_fac2,0},{-1,0,0},{p+sp_fac1,-p+sp_fac1,Rtn-r_w}, alpha} {
  Surface{tmpa_2_2[0]};
};

sa_2_2[] = tmpa_2_2[{2:4}];

/*
tmpa_2_2c[] = Extrude {0,-y1_sp_wind_fac,0} {
  Surface{tmpa_2_2b[0]};
};

sa_2_2[] = tmpa_2_2c[{2:4}];
*/

s_1_2a1[] = s_1_2a;
s_1_2a2[] = tmpa_2_2[0];

sl_wire_exterior_surface_2a = newreg; Surface Loop(sl_wire_exterior_surface_2a) = { -s_1_2a1[], sa_2_1[], sa_2_2[], s_1_2a2[] }; // sa_2_1b[], sa_2_2c[]
// vol_2a_wire1 = newreg; Volume(vol_2a_wire1) = { tmpa_2_1[] }; // tmpa_2_1b[1], tmpa_2_2c[1]
// vol_2a_wire2 = newreg; Volume(vol_2a_wire2) = { tmpa_2_2[] }; // tmpa_2_1b[1], tmpa_2_2c[1]
vol_2a_wire = newreg; Volume(vol_2a_wire) = sl_wire_exterior_surface_2a;

Physical Volume(physvol_2a_wire) = vol_2a_wire;
// physvol_2a_wire1 = newreg; Physical Volume(physvol_2a_wire1) = vol_2a_wire1;
// physvol_2a_wire2 = newreg; Physical Volume(physvol_2a_wire2) = vol_2a_wire2;
Physical Surface(physsurf_2a_wire) = { -s_1_2a1[], sa_2_1[], sa_2_2[], s_1_2a2[] }; // sa_2_1b[], sa_2_2c[]


//----------------------------------------------------------
// Second set of wires

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////// Face 1b - half wire (y - z) extrude in x direction - Corner 1 to Corner 2
// Wire 1b1

p0_1b = newp; Point(p0_1b)      = {-p+sp_fac1,-p+sp_fac1,-r_w+mesh_level*mm, lcWireMesh * mm};                                            // centre circle
p1b_1_1 = newp; Point(p1b_1_1)  = {-p+sp_fac1,-p+sp_fac1,-2*r_w+mesh_level*mm, lcWireMesh * mm};                                              // bottom circle
p2_1b = newp; Point(p2_1b)      = {-p+sp_fac1,-p+sp_fac1+r_w,-r_w+mesh_level*mm, lcWireMesh * mm};                                        // right circle
p1b_3_1 = newp; Point(p1b_3_1)  = {-p+sp_fac1,-p+sp_fac1,0+mesh_level*mm, lcWireMesh * mm};                                          // top circle
// p4_1b = newp; Point(p4_1b)   = {-p+sp_fac1,-p+sp_fac1-r_w,-r_w+mesh_level*mm, lcWireMesh * mm};                                        // left circle

l1_1b = newl; Circle(l1_1b)     = {p1b_1_1, p0_1b, p2_1b};
l2_1b = newl; Circle(l2_1b)     = {p2_1b, p0_1b, p1b_3_1};
l2_1bs = newl; Line(l2_1bs)     = {p1b_1_1, p1b_3_1};

ll1_1b = newll; Line Loop(ll1_1b) = {l1_1b, l2_1b, -l2_1bs};

s_1_1b = news; Plane Surface(s_1_1b) = {ll1_1b};

sb_1_1[] = {};
tmpb_1_1[] = {s_1_1b};

/*
tmpb_1_1b[] = Extrude {x1_sp_wind_fac,0,0} {
  Surface{tmpb_1_1a[0]};
};

sb_1_1[] = tmpb_1_1b[{2:4}];
*/

tmpb_1_1[] = Extrude {{x1_sp_wind_fac2,0,0},{0,-1,0},{-p+1*sp_fac1,-p,Rtn-r_w}, alpha} {
  Surface{tmpb_1_1[0]};
};

sb_1_1[] = tmpb_1_1[{2:4}];

// Wire 1b2

sb_1_2[] = {};
tmpb_1_2[] = {tmpb_1_1[0]};


tmpb_1_2[] = Extrude {{x1_sp_wind_fac2,0,0},{0,1,0},{p+sp_fac1,p,-Rtp+r_w}, alpha} {
  Surface{tmpb_1_2[0]};
};

sb_1_2[] = tmpb_1_2[{2:4}];

/*
tmpb_1_2c[] = Extrude {x1_sp_wind_fac,0,0} {
  Surface{tmpb_1_2a[0]};
};

sb_1_2[] = tmpb_1_2c[{2:4}];
*/

s_1_1b1[] = s_1_1b;
s_1_1b2[] = tmpb_1_2[0];

sl_wire_exterior_surface_1b = newreg; Surface Loop(sl_wire_exterior_surface_1b) = { -s_1_1b1[], sb_1_1[0], sb_1_1[1], sb_1_1[2], sb_1_2[0], sb_1_2[1], sb_1_2[2], s_1_1b2[] }; // sb_1_1[0], sb_1_1b[1], sb_1_1b[2], sb_1_2c[0], sb_1_2c[1], sb_1_2c[2],
// vol_1b_wire = newreg; Compound Volume(vol_1b_wire) = { tmpb_1_1[1], tmpb_1_2[1] }; // tmpb_1_1b[1], tmpb_1_2c[1]
vol_1b_wire = newreg; Volume(vol_1b_wire) = sl_wire_exterior_surface_1b;

Physical Volume(physvol_1b_wire) = vol_1b_wire;
Physical Surface(physsurf_1b_wire) = { s_1_1b1[], sb_1_1[], sb_1_2[], s_1_1b2[] }; // sb_1_1b[], sb_1_2c[],


//----------------------------------------------------------
// Second set of wires

//----------------------------------------------------------
// y-direction

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////// Face 2b - half wire (x - z) extrude in y direction - Corner 1 to Corner 4
// Wire 2b1

p0_2b = newp; Point(p0_2b)      = {-p+sp_fac1,-p+sp_fac1,r_w+mesh_level*mm, lcWireMesh * mm};                                              // centre circle
p2b_1_1 = newp; Point(p2b_1_1)  = {-p+sp_fac1,-p+sp_fac1,0+mesh_level*mm, lcWireMesh * mm};                                                // bottom circle
p2_2b = newp; Point(p2_2b)      = {-p+sp_fac1+r_w,-p+sp_fac1,r_w+mesh_level*mm, lcWireMesh * mm};                                          // right circle
p2b_3_1 = newp; Point(p2b_3_1)  = {-p+sp_fac1,-p+sp_fac1,2*r_w+mesh_level*mm, lcWireMesh * mm};                                            // top circle
// p4_2b = newp; Point(p4_2b)   = {-p+sp_fac1-r_w,-p+sp_fac1,r_w+mesh_level*mm, lcWireMesh * mm};                                          // left circle

l1_2b = newl; Circle(l1_2b)     = {p2b_1_1, p0_2b, p2_2b};
l2_2b = newl; Circle(l2_2b)     = {p2_2b, p0_2b, p2b_3_1};
l2_2bs = newl; Line(l2_2bs)     = {p2b_1_1, p2b_3_1};

ll1_2b = newll; Line Loop(ll1_2b) = {l1_2b, l2_2b, -l2_2bs};

s_1_2b = news; Plane Surface(s_1_2b) = {ll1_2b};

sb_2_1[] = {};
tmpb_2_1[] = {s_1_2b};

/*
tmpb_2_1b[] = Extrude {0,y2_sp_wind_fac,0} {
  Surface{tmpb_2_1a[0]};
};

sb_2_1[] = tmpb_2_1b[{2:4}];
*/

tmpb_2_1[] = Extrude {{0,y2_sp_wind_fac2,0},{-1,0,0},{-p,-p+1*sp_fac1,-Rtp+r_w}, alpha} {
  Surface{tmpb_2_1[0]};
};

sb_2_1[] = tmpb_2_1[{2:4}];

// Wire 2b2

sb_2_2[] = {};
tmpb_2_2[] = {tmpb_2_1[0]};

tmpb_2_2[] = Extrude {{0,y2_sp_wind_fac2,0},{1,0,0},{p,p+1*sp_fac1,Rtn-r_w}, alpha} {
  Surface{tmpb_2_2[0]};
};

sb_2_2[] = tmpb_2_2[{2:4}];

/*
tmpb_2_2c[] = Extrude {0,y2_sp_wind_fac,0} {
  Surface{tmpb_2_2b[0]};
};

sb_2_2[] = tmpb_2_2c[{2:4}];
*/

s_1_2b1[] = s_1_2b;
s_1_2b2[] = tmpb_2_2[0];

sl_wire_exterior_surface_2b = newreg; Surface Loop(sl_wire_exterior_surface_2b) = { s_1_2b1[], sb_2_1[], sb_2_2[], s_1_2b2[] }; // sb_2_1b[], sb_2_2c[]
// vol_2b_wire1 = newreg; Volume(vol_2b_wire1) = { tmpb_2_1[] }; // tmpb_2_1b[1], tmpb_2_2c[1]
// vol_2b_wire2 = newreg; Volume(vol_2b_wire2) = { tmpb_2_2[] }; // tmpb_2_1b[1], tmpb_2_2c[1]
vol_2b_wire = newreg; Volume(vol_2b_wire) = sl_wire_exterior_surface_2b;

Physical Volume(physvol_2b_wire) = vol_2b_wire;
// physvol_2b_wire1 = newreg; Physical Volume(physvol_2b_wire1) = vol_2b_wire1;
// physvol_2b_wire2 = newreg; Physical Volume(physvol_2b_wire2) = vol_2b_wire2;
Physical Surface(physsurf_2b_wire) = { s_1_2b1[], sb_2_1[], sb_2_2[], s_1_2b2[] }; // sb_2_1b[], sb_2_2c[]

// Coherence;
