//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 
// mmGasUnitCellTestCurvedWireExtremeCaseSingleLayer.geo
//
// Description:
// Geometry file for a MM cell.
// This cell can be repeated any number of times within Garfield 
// to construct an arbitrarily large MM
//
// directions
//
// Adjust radius to specifications, check pitch, 2*radius + 2*adjustment + 2*str_extrusion = a, or total square geometry
//
// hence, 2*r_w + 2*sp1_fac_r1_ad + 2*x1_sp_wind_fac1 = a, make sure the fracAngle*alpha = 45 degrees for an easy twist
//
//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// HEADER FILES
//

Include "mmGasComponentLabel.pro";
// Include "mmGasMeshingOptions.pro";

// Include "mmGasUnitCellTestShellStructureSingleLayer.geo";
Include "mmGasUnitCellTestShellStructureTripleLayer.geo";


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// MMGASSTRWIRE GEOMETRY MODULE
//

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// GENERAL INFORMATION
//
// mmGasUnitCellTestCurvedWireExtremeCaseSingleLayer.geo
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
a = 0.040;                                                 // distance between unitCellTestWire wires, in mm


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

mwf = 1;                                         // meshWindow_factor

mm = 1;                                          // geometrical scaling
rW = 0.010 * mm;                                 // R of Wiremesh, in microns
hp0 = 0.0100;                                    // half pitch of the window, in mm
hp = 0.0100 * mm - 0*rW/mwf * mm;                // half pitch of the window, in microns

p = hp0;                                         // half pitch of the window, in mm

R = (p * p + rW * rW)/( (2 * rW) );              // R
alpha = Asin((p/R));                             // angle in radians


x1fracAngle1 = 0.5;
x1fracAngle2 = 0.5;
x1fracAngle3 = 0.5;
x1fracAngle4 = 0.5;

x2fracAngle1 = 0.5;
x2fracAngle2 = 0.5;
x2fracAngle3 = 0.5;
x2fracAngle4 = 0.5;

y1fracAngle1 = 0.5;
y1fracAngle2 = 0.5;
y1fracAngle3 = 0.5;
y1fracAngle4 = 0.5;

y2fracAngle1 = 0.5;
y2fracAngle2 = 0.5;
y2fracAngle3 = 0.5;
y2fracAngle4 = 0.5;

// fracAngle = 0.5;

// CHECK alpha = 90.00 deg, angles split into 4, always add to 90 deg
// CHECK total angle = 1
// CHECK WIDTH 2*0.010 + 2*0.0045 + 2*0.01*0.10 = 0.040
// CHECK HEIGHT 4*0.010 + 2*0.0045 = 0.049
// hence, top: -adjustment + radius
// and, bottom: adjustment + radius
// take half the adjustment as the value (radius)


spFac1 = p*0.00;
spFac2 = p*0.00;

spFacStr1 = p*0.00;
spFacStr2 = p*0.00;
spFacStr3 = p*0.00;
spFacStr4 = p*0.00;

x1spWindFac1 = p*0.10;
x2spWindFac1 = p*0.10;
y1spWindFac1 = p*0.10;
y2spWindFac1 = p*0.10;

x1spWindFac = x1spWindFac1;
x2spWindFac = x2spWindFac1;
y1spWindFac = y1spWindFac1;
y2spWindFac = y2spWindFac1;

x1spWindFac2 = p*0.00;
x2spWindFac2 = p*0.00;
y1spWindFac2 = p*0.00;
y2spWindFac2 = p*0.00;

Rtp = R + R*0.0;
Rtn = R - R*0.0;

sp1FacR1Ad = +0.0045;
sp1FacR2Ad = +0.0045;

sp2FacR1Ad = +0.0045;
sp2FacR2Ad = +0.0045;

sp1FacR1 = 1.00*(Rtn-1*rW) - 3*sp1FacR1Ad;       // -Rtn+rW
sp1FacR2 = 1.00*(-Rtp+1*rW) - 3*sp1FacR2Ad;      // +Rtp-rW

sp2FacR1 = 1.00*(Rtn-1*rW) - 3*sp2FacR1Ad;       // -Rtn+rW
sp2FacR2 = 1.00*(-Rtp+1*rW) - 3*sp2FacR2Ad;      // +Rtp-rW

exPand = (1/1);

n1 = 0;
m1 = 0;
n2 = 1;
m2 = 1;


//----------------------------------------------------------
// shell parameters

geofx = 1;                                       // geometric_factor
geofy = 1;                                       // geometric_factor


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

  lcCopperPlateBdry = 0.0025;                                                                                                                        // characterization of metal surfaces / anode
  lcExtElectrodeBdry = 0.0050;                                                                                                                       // characterization of external electrode / cathode
  lcWireMesh = 0.001;                                                                                                                                // characterization of wire electrode


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/////// Face 1a - half wire (y - z) extrude in x direction - Corner 3 to Corner 4
//
// Wire 1a1


p1a1_0 = newp; Point(p1a1_0) = {p+p +2.00*p*exPand,p+p +2.00*p*exPand,rW+meshLevel*mm  -1.00*sp1FacR2Ad, lcWireMesh * mm};                           // centre circle
p1a1_1 = newp; Point(p1a1_1) = {p+p +2.00*p*exPand,p+p +2.00*p*exPand,0+meshLevel*mm  -1.00*sp1FacR2Ad, lcWireMesh * mm};                            // bottom circle
// p1a1_2 = newp; Point(p1a1_2) = {p+p +2.00*p*exPand,p+p +2.00*p*exPand+rW,rW+meshLevel*mm  -1.00*sp1FacR2Ad, lcWireMesh * mm};                     // right circle
p1a1_3 = newp; Point(p1a1_3) = {p+p +2.00*p*exPand,p+p +2.00*p*exPand,2*rW+meshLevel*mm  -1.00*sp1FacR2Ad, lcWireMesh * mm};                         // top circle
p1a1_4 = newp; Point(p1a1_4) = {p+p +2.00*p*exPand,p+p +2.00*p*exPand-rW,rW+meshLevel*mm  -1.00*sp1FacR2Ad, lcWireMesh * mm};                        // left circle

l1a1s_1 = newl; Line(l1a1s_1) = {p1a1_1, p1a1_3};
l1a1_2 = newl; Circle(l1a1_2) = {p1a1_3, p1a1_0, p1a1_4};
l1a1_3 = newl; Circle(l1a1_3) = {p1a1_4, p1a1_0, p1a1_1};

ll1a1_1 = newll; Line Loop(ll1a1_1) = {l1a1_2, l1a1_3, l1a1s_1};

s1a1_1 = news; Plane Surface(s1a1_1) = {ll1a1_1};

tmpaa_1_1[] = {s1a1_1};
saaf_1_1_1[] = tmpaa_1_1[0];

tmpab_1_1[] = Extrude {-1.00*x1spWindFac1 +0.00*spFacStr1,0,0} {
  Surface{tmpaa_1_1[0]};
};

sab_1_1[] = {};
sab_1_1[] += tmpab_1_1[{2:4}];


ptsac_1_1 = newp; Point(ptsac_1_1) = { p+p +2.00*p*exPand -1.00*x1spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, p+p +2.00*p*exPand +0.00*spFac1, Rtp-rW +1.00*meshLevel*mm +1.00*sp1FacR2 +0.00*R*Sin(alpha/2) +0.00*x1spWindFac +0.00*spFacStr2 };


tmpac_1_1[] = Extrude {{x1spWindFac2,0,0}, {0,-1,0}, { p+p +2.00*p*exPand -1.00*x1spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, p+p +2.00*p*exPand +0.00*spFac1, Rtp-rW +1.00*meshLevel*mm +1.00*sp1FacR2 +0.00*R*Sin(alpha/2) +0.00*x1spWindFac +0.00*spFacStr2 }, x1fracAngle1*alpha } {
  Surface{tmpab_1_1[0]};
};


sac_1_1[] = {};
sac_1_1[] += tmpac_1_1[{2:4}];

// tmpac2_1_1[] = Extrude {0,0,-1.00*x1spWindFac +0.00*spFacStr2} {
//   Surface{tmpad_1_1[0]};
// };
// 
// sac2_1_1[] = {};
// sac2_1_1[] += tmpac2_1_1[{2:4}];


ptsad_1_1 = newp; Point(ptsad_1_1) = { p+p +2.00*p*exPand -1.00*x1spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, p+p +2.00*p*exPand +0.00*spFac1, Rtp-rW +1.00*meshLevel*mm +1.00*sp1FacR2 +0.00*R*Sin(alpha/2) +0.00*x1spWindFac +0.00*spFacStr2 };


tmpad_1_1[] = Extrude {{x1spWindFac2,0,0}, {0,-1,0}, { p+p +2.00*p*exPand -1.00*x1spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, p+p +2.00*p*exPand +0.00*spFac1, Rtp-rW +1.00*meshLevel*mm +1.00*sp1FacR2 +0.00*R*Sin(alpha/2) +0.00*x1spWindFac +0.00*spFacStr2 }, x1fracAngle2*alpha} {
  Surface{tmpac_1_1[0]};
};


sad_1_1[] = {};
sad_1_1[] += tmpad_1_1[{2:4}];


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Wire 1a2


// tmpaa_1_2[] = {tmpad_1_1[0]};
// 
// tmpab_1_2[] = Extrude {1.00*x1spWindFac +0.00*spFacStr1,0,0} {
//   Surface{tmpaa_1_2[0]};
// };
// 
// sab_1_2[] = {};
// sab_1_2[] += tmpab_1_2[{2:4}];


ptsac_1_2 = newp; Point(ptsac_1_2) = { -p+p +1.00*x1spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, p+p +2.00*p*exPand +0.00*spFac1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp1FacR1 +0.00*R*Sin(alpha/2) +0.00*x1spWindFac +0.00*spFacStr2 };


tmpac_1_2[] = Extrude {{x1spWindFac2,0,0}, {0,1,0}, { -p+p +1.00*x1spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, p+p +2.00*p*exPand +0.00*spFac1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp1FacR1 +0.00*R*Sin(alpha/2) +0.00*x1spWindFac +0.00*spFacStr2 }, x1fracAngle3*alpha} {
  Surface{tmpad_1_1[0]};
};


sac_1_2[] = {};
sac_1_2[] += tmpac_1_2[{2:4}];


// tmpac2_1_2[] = Extrude {0,0,1.00*x1spWindFac +0.00*spFacStr2} {
//   Surface{tmpac_1_2[0]};
// };
// 
// sac2_1_2[] = {};
// sac2_1_2[] += tmpac2_1_2[{2:4}];


ptsad_1_2 = newp; Point(ptsad_1_2) = { -p+p +1.00*x1spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, p+p +2.00*p*exPand +0.00*spFac1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp1FacR1 +0.00*R*Sin(alpha/2) +0.00*x1spWindFac +0.00*spFacStr2 };


tmpad_1_2[] = Extrude {{x1spWindFac2,0,0}, {0,1,0},{ -p+p +1.00*x1spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, p+p +2.00*p*exPand +0.00*spFac1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp1FacR1 +0.00*R*Sin(alpha/2) +0.00*x1spWindFac +0.00*spFacStr2 }, x1fracAngle4*alpha} {
  Surface{tmpac_1_2[0]};
};


sad_1_2[] = {};
sad_1_2[] += tmpad_1_2[{2:4}];

tmpae_1_2[] = Extrude {-1.00*x1spWindFac1 +0.00*spFacStr2,0,0} {
  Surface{tmpad_1_2[0]};
};

sae_1_2[] = {};
sae_1_2[] += tmpae_1_2[{2:4}];


saef_1_1_2[] = {};
saef_1_1_2[] = {tmpae_1_2[0]};

sl_wire_exterior_surface_1a[] = newreg; Surface Loop(sl_wire_exterior_surface_1a) = { -saaf_1_1_1[0], sab_1_1[], sac_1_1[], sad_1_1[], sac_1_2[], sad_1_2[], sae_1_2[], saef_1_1_2[0] };
// vol_1a_wire = newv; Volume(vol_1a_wire) = { tmpab_1_1[1], tmpac_1_1[1], tmpad_1_1[1], tmpac_1_2[1], tmpad_1_2[1], tmpae_1_2[1] };
vol_1a_wire = newreg; Volume(vol_1a_wire) = sl_wire_exterior_surface_1a[];

Physical Volume(physvol_1a_wire) = vol_1a_wire;
Physical Surface(physsurf_1a_wire) = { -saaf_1_1_1[0], sab_1_1[], sac_1_1[], sad_1_1[], sac_1_2[], sad_1_2[], sae_1_2[], saef_1_1_2[0] };


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/////// Face 1b - half wire (y - z) extrude in x direction - Corner 1 to Corner 2
//
// Wire 1b1

p1b1_0 = newp; Point(p1b1_0) = {-p+p,-p+p,rW+meshLevel*mm -1.00*sp1FacR1Ad, lcWireMesh * mm};                                                        // centre circle
p1b1_1 = newp; Point(p1b1_1) = {-p+p,-p+p,0+meshLevel*mm -1.00*sp1FacR1Ad, lcWireMesh * mm};                                                         // bottom circle
p1b1_2 = newp; Point(p1b1_2) = {-p+p,-p+p+rW,rW+meshLevel*mm -1.00*sp1FacR1Ad, lcWireMesh * mm};                                                     // right circle
p1b1_3 = newp; Point(p1b1_3) = {-p+p,-p+p,2*rW+meshLevel*mm -1.00*sp1FacR1Ad, lcWireMesh * mm};                                                      // top circle
// p1b1_4 = newp; Point(p1b1_4) = {-p+p,-p+p-rW,rW+meshLevel*mm -1.00*sp1FacR1Ad, lcWireMesh * mm};                                                  // left circle

l1b1_1 = newl; Circle(l1b1_1) = {p1b1_1, p1b1_0, p1b1_2};
l1b1_2 = newl; Circle(l1b1_2) = {p1b1_2, p1b1_0, p1b1_3};
l1b1s_3 = newl; Line(l1b1s_3) = {p1b1_1, p1b1_3};

ll1b1_1 = newll; Line Loop(ll1b1_1) = {l1b1_1, l1b1_2, -l1b1s_3};

s1b1_1 = news; Plane Surface(s1b1_1) = {ll1b1_1};

tmpba_1_1[] = {s1b1_1};
sbaf_1_1_1[] = tmpba_1_1[0];

tmpbb_1_1[] = Extrude {1.00*x2spWindFac1 +0.00*spFacStr1,0,0} {
  Surface{tmpba_1_1[0]};
};

sbb_1_1[] = {};
sbb_1_1[] += tmpbb_1_1[{2:4}];


ptsbc_1_1 = newp; Point(ptsbc_1_1) = { -p+p +0.00*p +1.00*x2spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -p+p +0.00*p +0.00*spFac1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp1FacR1 +0.00*R*Sin(alpha/2) +0.00*x2spWindFac +0.00*spFacStr2 };


tmpbc_1_1[] = Extrude {{x2spWindFac2,0,0}, {0,1,0}, { -p+p +0.00*p +1.00*x2spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -p+p +0.00*p +0.00*spFac1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp1FacR1 +0.00*R*Sin(alpha/2) +0.00*x2spWindFac +0.00*spFacStr2 }, x2fracAngle1*alpha } {
  Surface{tmpbb_1_1[0]};
};


sbc_1_1[] = {};
sbc_1_1[] += tmpbc_1_1[{2:4}];


// tmpbc2_1_1[] = Extrude {0,0,-1.00*x2spWindFac1 +0.00*spFacStr2} {
//  Surface{tmpbd_1_1[0]};
// };
//
// sbc2_1_1[] = {};
// sbc2_1_1[] += tmpbc2_1_1[{2:4}];


ptsbd_1_1 = newp; Point(ptsbd_1_1) = { -p+p +0.00*p +1.00*x2spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -p+p +0.00*p +0.00*spFac1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp1FacR1 +0.00*R*Sin(alpha/2) +0.00*x2spWindFac +0.00*spFacStr2 };



tmpbd_1_1[] = Extrude {{x2spWindFac2,0,0}, {0,1,0}, { -p+p +0.00*p +1.00*x2spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -p+p +0.00*p +0.00*spFac1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp1FacR1 +0.00*R*Sin(alpha/2) +0.00*x2spWindFac +0.00*spFacStr2 }, x2fracAngle2*alpha} {
  Surface{tmpbc_1_1[0]};
};


sbd_1_1[] = {};
sbd_1_1[] += tmpbd_1_1[{2:4}];


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Wire 1b2


// tmpba_1_2[] = {tmpbd_1_1[0]};
// 
// tmpbb_1_2[] = Extrude {1.00*x2spWindFac1 +0.00*spFacStr1,0,0} {
//   Surface{tmpba_1_2[0]};
// };
// 
// sbb_1_2[] = {};
// sbb_1_2[] += tmpbb_1_2[{2:4}];


ptsbc_1_2 = newp; Point(ptsbc_1_2) = { p+p +2.00*p*exPand -1.00*x2spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -p+p +0.00*p +0.00*spFac1, Rtp-rW +1.00*meshLevel*mm +1.00*sp1FacR2 +0.00*R*Sin(alpha/2) +0.00*x2spWindFac +0.00*spFacStr2 };


tmpbc_1_2[] = Extrude {{x2spWindFac2,0,0}, {0,-1,0}, { p+p +2.00*p*exPand -1.00*x2spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -p+p +0.00*p +0.00*spFac1, Rtp-rW +1.00*meshLevel*mm +1.00*sp1FacR2 +0.00*R*Sin(alpha/2) +0.00*x2spWindFac +0.00*spFacStr2 }, x2fracAngle3*alpha} {
  Surface{tmpbd_1_1[0]};
};


sbc_1_2[] = {};
sbc_1_2[] += tmpbc_1_2[{2:4}];


// tmpbc2_1_2[] = Extrude {0,0,1.00*x2spWindFac1 +0.00*spFacStr2} {
//   Surface{tmpbc_1_2[0]};
// };
// 
// sbc2_1_2[] = {};
// sbc2_1_2[] += tmpbc2_1_2[{2:4}];


ptsbd_1_2 = newp; Point(ptsbd_1_2) = { p+p +2.00*p*exPand -1.00*x2spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -p+p +0.00*p +0.00*spFac1, Rtp-rW +1.00*meshLevel*mm +1.00*sp1FacR2 +0.00*R*Sin(alpha/2) +0.00*x2spWindFac +0.00*spFacStr2 };


tmpbd_1_2[] = Extrude {{x2spWindFac2,0,0}, {0,-1,0},{ p+p +2.00*p*exPand -1.00*x2spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -p+p +0.00*p +0.00*spFac1, Rtp-rW +1.00*meshLevel*mm +1.00*sp1FacR2 +0.00*R*Sin(alpha/2) +0.00*x2spWindFac +0.00*spFacStr2 }, x2fracAngle4*alpha} {
  Surface{tmpbc_1_2[0]};
};


sbd_1_2[] = {};
sbd_1_2[] += tmpbd_1_2[{2:4}];


tmpbe_1_2[] = Extrude {1.00*x2spWindFac1,0,0} {
  Surface{tmpbd_1_2[0]};
};

sbe_1_2[] = {};
sbe_1_2[] += tmpbe_1_2[{2:4}];


sbef_1_1_2[] = {};
sbef_1_1_2[] = {tmpbe_1_2[0]};

sl_wire_exterior_surface_1b[] = newreg; Surface Loop(sl_wire_exterior_surface_1b) = { -sbaf_1_1_1[0], sbb_1_1[], sbc_1_1[], sbd_1_1[], sbc_1_2[], sbd_1_2[], sbe_1_2[], sbef_1_1_2[0] };
// vol_1b_wire = newreg; Volume(vol_1b_wire) = { tmpbb_1_1[1], tmpbc_1_1[1], tmpbd_1_1[1], tmpbc_1_2[1], tmpbd_1_2[1], tmpbe_1_2[1] };
vol_1b_wire = newreg; Volume(vol_1b_wire) = sl_wire_exterior_surface_1b[];

Physical Volume(physvol_1b_wire) = vol_1b_wire;
Physical Surface(physsurf_1b_wire) = { -sbaf_1_1_1[0], sbb_1_1[], sbc_1_1[], sbd_1_1[], sbc_1_2[], sbd_1_2[], sbe_1_2[], sbef_1_1_2[0] };


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/////// Face 2a - half wire (x - z) extrude in y direction - Corner 3 to Corner 2
//
// Wire 2a1

p2a1_0 = newp; Point(p2a1_0) = {p+p +2.00*p*exPand,p+p +2.00*p*exPand,-rW+meshLevel*mm -5.00*sp2FacR1Ad, lcWireMesh * mm};                           // centre circle
p2a1_1 = newp; Point(p2a1_1) = {p+p +2.00*p*exPand,p+p +2.00*p*exPand,-2*rW+meshLevel*mm -5.00*sp2FacR1Ad, lcWireMesh * mm};                         // bottom circle
// p2a1_2 = newp; Point(p2a1_2) = {p+p +2.00*p*exPand+rW,p+p +2.00*p*exPand,-rW+meshLevel*mm -5.00*sp2FacR1Ad, lcWireMesh * mm};                     // right circle
p2a1_3 = newp; Point(p2a1_3) = {p+p +2.00*p*exPand,p+p +2.00*p*exPand,0+meshLevel*mm -5.00*sp2FacR1Ad, lcWireMesh * mm};                             // top circle
p2a1_4 = newp; Point(p2a1_4) = {p+p +2.00*p*exPand-rW,p+p +2.00*p*exPand,-rW+meshLevel*mm -5.00*sp2FacR1Ad, lcWireMesh * mm};                        // left circle

l2a1s_1 = newl; Line(l2a1s_1) = {p2a1_1, p2a1_3};
l2a1_2 = newl; Circle(l2a1_2) = {p2a1_3, p2a1_0, p2a1_4};
l2a1_3 = newl; Circle(l2a1_3) = {p2a1_4, p2a1_0, p2a1_1};

ll2a1_1 = newll; Line Loop(ll2a1_1) = {l2a1_2, l2a1_3, l2a1s_1};

s2a1_1 = news; Plane Surface(s2a1_1) = {ll2a1_1};

tmpaa_2_1[] = {s2a1_1};
saaf_2_2_1[] = tmpaa_2_1[0];

tmpab_2_1[] = Extrude {0,-1.00*y1spWindFac1 +0.00*spFacStr1,0} {
  Surface{tmpaa_2_1[0]};
};

sab_2_1[] = {};
sab_2_1[] += tmpab_2_1[{2:4}];


ptsac_2_1 = newp; Point(ptsac_2_1) = { p+p +2.00*p*exPand +0.00*spFac1, p+p +2.00*p*exPand -1.00*y1spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp2FacR1 +0.00*R*Sin(alpha/2) +0.00*y1spWindFac +0.00*spFacStr2 };


tmpac_2_1[] = Extrude {{y1spWindFac2,0,0}, {-1,0,0}, { p+p +2.00*p*exPand +0.00*spFac1, p+p +2.00*p*exPand -1.00*y1spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp2FacR1 +0.00*R*Sin(alpha/2) +0.00*y1spWindFac +0.00*spFacStr2 }, y1fracAngle1*alpha } {
  Surface{tmpab_2_1[0]};
};

sac_2_1[] = {};
sac_2_1[] += tmpac_2_1[{2:4}];


// tmpac2_2_1[] = Extrude {0,0,-1.00*y1spWindFac +0.00*spFacStr2} {
//   Surface{tmpad_2_1[0]};
// };
// 
// sac2_2_1[] = {};
// sac2_2_1[] += tmpac2_2_1[{2:4}];


ptsad_2_1 = newp; Point(ptsad_2_1) = { p+p +2.00*p*exPand +0.00*spFac1, p+p +2.00*p*exPand -1.00*y1spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp2FacR1 +0.00*R*Sin(alpha/2) +0.00*y1spWindFac +0.00*spFacStr2 };


tmpad_2_1[] = Extrude {{y1spWindFac2,0,0}, {-1,0,0}, { p+p +2.00*p*exPand +0.00*spFac1, p+p +2.00*p*exPand -1.00*y1spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp2FacR1 +0.00*R*Sin(alpha/2) +0.00*y1spWindFac +0.00*spFacStr2 }, y1fracAngle2*alpha} {
  Surface{tmpac_2_1[0]};
};

sad_2_1[] = {};
sad_2_1[] += tmpad_2_1[{2:4}];


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Wire 2a2


// tmpaa_2_2[] = {tmpad_2_1[0]};
// 
// tmpab_2_2[] = Extrude {0,1.00*y1spWindFac +0.00*spFacStr1,0} {
//   Surface{tmpaa_2_2[0]};
// };
// 
// sab_2_2[] = {};
// sab_2_2[] += tmpab_2_2[{2:4}];


ptsac_2_2 = newp; Point(ptsac_2_2) = { p+p +2.00*p*exPand +0.00*spFac1, -p+p +0.00*p +1.00*y1spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, Rtp-rW +1.00*meshLevel*mm +1.00*sp2FacR2 +0.00*R*Sin(alpha/2) +0.00*y1spWindFac +0.00*spFacStr2 };


tmpac_2_2[] = Extrude {{y1spWindFac2,0,0}, {1,0,0}, { p+p +2.00*p*exPand +0.00*spFac1, -p+p +0.00*p +1.00*y1spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, Rtp-rW +1.00*meshLevel*mm +1.00*sp2FacR2 +0.00*R*Sin(alpha/2) +0.00*y1spWindFac +0.00*spFacStr2 }, y1fracAngle3*alpha} {
  Surface{tmpad_2_1[0]};
};

sac_2_2[] = {};
sac_2_2[] += tmpac_2_2[{2:4}];


// tmpac2_2_2[] = Extrude {0,0,1.00*y1spWindFac +0.00*spFacStr2} {
//   Surface{tmpac_2_2[0]};
// };
// 
// sac2_2_2[] = {};
// sac2_2_2[] += tmpac2_2_2[{2:4}];


ptsad_2_2 = newp; Point(ptsad_2_2) = { p+p +2.00*p*exPand +0.00*spFac1, -p+p +0.00*p +1.00*y1spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, Rtp-rW +1.00*meshLevel*mm +1.00*sp2FacR2 +0.00*R*Sin(alpha/2) +0.00*y1spWindFac +0.00*spFacStr2 };


tmpad_2_2[] = Extrude {{y1spWindFac2,0,0}, {1,0,0},{ p+p +2.00*p*exPand +0.00*spFac1, -p+p +0.00*p +1.00*y1spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, Rtp-rW +1.00*meshLevel*mm +1.00*sp2FacR2 +0.00*R*Sin(alpha/2) +0.00*y1spWindFac +0.00*spFacStr2 }, y1fracAngle4*alpha} {
  Surface{tmpac_2_2[0]};
};

sad_2_2[] = {};
sad_2_2[] += tmpad_2_2[{2:4}];


tmpae_2_2[] = Extrude {0,-1.00*y1spWindFac1 +0.00*spFacStr2,0} {
  Surface{tmpad_2_2[0]};
};

sae_2_2[] = {};
sae_2_2[] += tmpae_2_2[{2:4}];


saef_2_2_2[] = {};
saef_2_2_2[] = {tmpae_2_2[0]};

sl_wire_exterior_surface_2a[] = newreg; Surface Loop(sl_wire_exterior_surface_2a) = { -saaf_2_2_1[0], sab_2_1[], sac_2_1[], sad_2_1[], sac_2_2[], sad_2_2[], sae_2_2[], saef_2_2_2[0] };
// vol_2a_wire = newreg; Volume(vol_2a_wire) = { tmpab_2_1[1], tmpac_2_1[1], tmpad_2_1[1], tmpac_2_2[1], tmpad_2_2[1], tmpae_2_2[1] };
vol_2a_wire = newreg; Volume(vol_2a_wire) = sl_wire_exterior_surface_2a[];

Physical Volume(physvol_2a_wire) = vol_2a_wire;
Physical Surface(physsurf_2a_wire) = { -saaf_2_2_1[0], sab_2_1[], sac_2_1[], sad_2_1[], sac_2_2[], sad_2_2[], sae_2_2[], saef_2_2_2[0] };


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/////// Face 2b - half wire (x - z) extrude in y direction - Corner 1 to Corner 4
//
// Wire 2b1

p2b1_0 = newp; Point(p2b1_0) = {-p+p,-p+p,-rW+meshLevel*mm -5.00*sp2FacR1Ad, lcWireMesh * mm};                                                       // centre circle
p2b1_1 = newp; Point(p2b1_1) = {-p+p,-p+p,-2*rW+meshLevel*mm -5.00*sp2FacR1Ad, lcWireMesh * mm};                                                     // bottom circle
p2b1_2 = newp; Point(p2b1_2) = {-p+p+rW,-p+p,-rW+meshLevel*mm -5.00*sp2FacR1Ad, lcWireMesh * mm};                                                    // right circle
p2b1_3 = newp; Point(p2b1_3) = {-p+p,-p+p,0+meshLevel*mm -5.00*sp2FacR1Ad, lcWireMesh * mm};                                                         // top circle
// p2b1_4 = newp; Point(p2b1_4) = {-p+p-rW,-p+p,-rW+meshLevel*mm -5.00*sp2FacR1Ad, lcWireMesh * mm};                                                 // left circle

l2b1_1 = newl; Circle(l2b1_1) = {p2b1_1, p2b1_0, p2b1_2};
l2b1_2 = newl; Circle(l2b1_2) = {p2b1_2, p2b1_0, p2b1_3};
l2b1s_3 = newl; Line(l2b1s_3) = {p2b1_1, p2b1_3};

ll2b1_1 = newll; Line Loop(ll2b1_1) = {l2b1_1, l2b1_2, -l2b1s_3};

s2b1_1 = news; Plane Surface(s2b1_1) = {ll2b1_1};

tmpba_2_1[] = {s2b1_1};
sbaf_2_2_1[] = tmpba_2_1[0];

tmpbb_2_1[] = Extrude {0,1.00*y2spWindFac1 +0.00*spFacStr1,0} {
  Surface{tmpba_2_1[0]};
};

sbb_2_1[] = {};
sbb_2_1[] += tmpbb_2_1[{2:4}];


ptsbc_2_1 = newp; Point(ptsbc_2_1) = { p+p +2.00*p*exPand +0.00*spFac1, -p+p +0.00*p +1.00*y2spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp2FacR1 +0.00*R*Sin(alpha/2) +0.00*y2spWindFac +0.00*spFacStr2 };


tmpbc_2_1[] = Extrude {{y2spWindFac2,0,0}, {1,0,0}, { p+p +2.00*p*exPand +0.00*spFac1, -p+p +0.00*p +1.00*y2spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp2FacR1 +0.00*R*Sin(alpha/2) +0.00*y2spWindFac +0.00*spFacStr2 }, y2fracAngle1*alpha } {
  Surface{tmpbb_2_1[0]};
};

sbc_2_1[] = {};
sbc_2_1[] += tmpbc_2_1[{2:4}];


// tmpbc2_2_1[] = Extrude {0,0,1.00*y2spWindFac +0.00*spFacStr2} {
//   Surface{tmpbd_2_1[0]};
// };
// 
// sbc2_2_1[] = {};
// sbc2_2_1[] += tmpbc2_2_1[{2:4}];


ptsbd_2_1 = newp; Point(ptsbd_2_1) = { p+p +2.00*p*exPand +0.00*spFac1, -p+p +0.00*p +1.00*y2spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp2FacR1 +0.00*R*Sin(alpha/2) +0.00*y2spWindFac +0.00*spFacStr2 };


tmpbd_2_1[] = Extrude {{y2spWindFac2,0,0}, {1,0,0}, { p+p +2.00*p*exPand +0.00*spFac1, -p+p +0.00*p +1.00*y2spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp2FacR1 +0.00*R*Sin(alpha/2) +0.00*y2spWindFac +0.00*spFacStr2 }, y2fracAngle2*alpha} {
  Surface{tmpbc_2_1[0]};
};

sbd_2_1[] = {};
sbd_2_1[] += tmpbd_2_1[{2:4}];


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Wire 2b2


// tmpba_2_2[] = {tmpbd_2_1[0]};
// 
// tmpbb_2_2[] = Extrude {0,1.00*y2spWindFac +0.00*spFacStr1,0} {
//   Surface{tmpba_2_2[0]};
// };
// 
// sbb_2_2[] = {};
// sbb_2_2[] += tmpbb_2_2[{2:4}];


ptsbc_2_2 = newp; Point(ptsbc_2_2) = { p+p +2.00*p*exPand +0.00*spFac1, p+p +2.00*p*exPand -1.00*y2spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, Rtp-rW +1.00*meshLevel*mm +1.00*sp2FacR2 +0.00*R*Sin(alpha/2) +0.00*y2spWindFac +0.00*spFacStr2 };


tmpbc_2_2[] = Extrude {{y2spWindFac2,0,0}, {-1,0,0}, { p+p +2.00*p*exPand +0.00*spFac1, p+p +2.00*p*exPand -1.00*y2spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, Rtp-rW +1.00*meshLevel*mm +1.00*sp2FacR2 +0.00*R*Sin(alpha/2) +0.00*y2spWindFac +0.00*spFacStr2 }, y2fracAngle3*alpha} {
  Surface{tmpbd_2_1[0]};
};

sbc_2_2[] = {};
sbc_2_2[] += tmpbc_2_2[{2:4}];


// tmpbc2_2_2[] = Extrude {0,0,1.00*y2spWindFac +0.00*spFacStr2} {
//   Surface{tmpbc_2_2[0]};
// };
// 
// sbc2_2_2[] = {};
// sbc2_2_2[] += tmpbc2_2_2[{2:4}];


ptsbd_2_2 = newp; Point(ptsbd_2_2) = { p+p +2.00*p*exPand +0.00*spFac1, p+p +2.00*p*exPand -1.00*y2spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, Rtp-rW +1.00*meshLevel*mm +1.00*sp2FacR2 +0.00*R*Sin(alpha/2) +0.00*y2spWindFac +0.00*spFacStr2 };


tmpbd_2_2[] = Extrude {{y2spWindFac2,0,0}, {-1,0,0},{ p+p +2.00*p*exPand +0.00*spFac1, p+p +2.00*p*exPand -1.00*y2spWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, Rtp-rW +1.00*meshLevel*mm +1.00*sp2FacR2 +0.00*R*Sin(alpha/2) +0.00*y2spWindFac +0.00*spFacStr2 }, y2fracAngle4*alpha} {
  Surface{tmpbc_2_2[0]};
};

sbd_2_2[] = {};
sbd_2_2[] += tmpbd_2_2[{2:4}];


tmpbe_2_2[] = Extrude {0,1.00*y2spWindFac1 +0.00*spFacStr2,0} {
  Surface{tmpbd_2_2[0]};
};

sbe_2_2[] = {};
sbe_2_2[] += tmpbe_2_2[{2:4}];

sbef_2_2_2[] = {};
sbef_2_2_2[] = {tmpbe_2_2[0]};

sl_wire_exterior_surface_2b[] = newreg; Surface Loop(sl_wire_exterior_surface_2b) = { -sbaf_2_2_1[0], sbb_2_1[], sbc_2_1[], sbd_2_1[], sbc_2_2[], sbd_2_2[], sbe_2_2[], sbef_2_2_2[0] };
// vol_2b_wire = newreg; Volume(vol_2b_wire) = { tmpbb_2_1[1], tmpbc_2_1[1], tmpbd_2_1[1], tmpbc_2_2[1], tmpbd_2_2[1], tmpbe_2_2[1] };
vol_2b_wire = newreg; Volume(vol_2b_wire) = sl_wire_exterior_surface_2b[];

Physical Volume(physvol_2b_wire) = vol_2b_wire;
Physical Surface(physsurf_2b_wire) = { -sbaf_2_2_1[0], sbb_2_1[], sbc_2_1[], sbd_2_1[], sbc_2_2[], sbd_2_2[], sbe_2_2[], sbef_2_2_2[0] };


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

l1bdh_1_1_bsurfb1 = newl; Line(l1bdh_1_1_bsurfb1) = {ptl4c1, p2b1_1};                                                  // bottom line

l2bdh_1_1_bsurft1a = newl; Line(l2bdh_1_1_bsurft1a) = {pexet1, p1b1_3};                                                // top line
l2bdh_1_1_bsurfb1b = newl; Line(l2bdh_1_1_bsurfb1b) = {p2b1_3, p1b1_1};                                                // bottom line

l1bdh_1_1_bsurfb2 = newl; Line(l1bdh_1_1_bsurfb2) = {ptl4c2, ptsbefminz_1_1_2[0]};                                     // bottom line

l2bdh_1_1_bsurft2a = newl; Line(l2bdh_1_1_bsurft2a) = {pexet2, ptsaefmaxz_2_2_2[0]};                                   // top line
l2bdh_1_1_bsurft2b = newl; Line(l2bdh_1_1_bsurft2b) = {ptsaefminz_2_2_2[0], ptsbefmaxz_1_1_2[0]};                      // top line


llbdh_1_1_bsurf1t = newreg; Line Loop(llbdh_1_1_bsurf1t) = { lexet1, l2bdh_1_1_bsurft2a, ll_bdhaec1_1_2_2[0], ll_bdhaec0_1_2_2[0], l2bdh_1_1_bsurft2b, -ll_bdhbet_1_1_2[0], -ll_bdhbdt_1_1_2[0], -ll_bdhbct_1_1_2[0], -ll_bdhbdt_1_1_1[0], -ll_bdhbct_1_1_1[0], -ll_bdhbbt_1_1_1[0], -l2bdh_1_1_bsurft1a };
llbdh_1_1_bsurf1b = newreg; Line Loop(llbdh_1_1_bsurf1b) = { lcptub1a, l1bdh_1_1_bsurfb2, -ll_bdhbeb_1_1_2[0], -ll_bdhbdb_1_1_2[0], -ll_bdhbcb_1_1_2[0], -ll_bdhbdb_1_1_1[0], -ll_bdhbcb_1_1_1[0], -ll_bdhbbb_1_1_1[0], -l2bdh_1_1_bsurfb1b, -l2b1_2, -l2b1_1, -l1bdh_1_1_bsurfb1 };

psbdh_1_1_bsurf1t = newreg; Plane Surface(psbdh_1_1_bsurf1t) = { llbdh_1_1_bsurf1t };
psbdh_1_1_bsurf1b = newreg; Plane Surface(psbdh_1_1_bsurf1b) = { llbdh_1_1_bsurf1b };


//----------------------------------------------------------
// Face physsurfBdh_1_2 (Corner 2 - Corner 3)

l1bdh_1_2_bsurfb3 = newl; Line(l1bdh_1_2_bsurfb3) = {ptl4c3, p2a1_1};                                                  // bottom line

l2bdh_1_2_bsurft3a = newl; Line(l2bdh_1_2_bsurft3a) = {pexet3, p1a1_3};                                                // top line
l2bdh_1_2_bsurft3b = newl; Line(l2bdh_1_2_bsurft3b) = {p1a1_1, p2a1_3};                                                // top line


llbdh_1_2_bsurf3t = newreg; Line Loop(llbdh_1_2_bsurf3t) = { lexet2, l2bdh_1_2_bsurft3a, l1a1_2, l1a1_3, l2bdh_1_2_bsurft3b, ll_bdhabt_1_2_1[0], ll_bdhact_1_2_1[0], ll_bdhadt_1_2_1[0], ll_bdhact_1_2_2[0], ll_bdhadt_1_2_2[0], ll_bdhaet_1_2_2[0], -l2bdh_1_1_bsurft2a };
llbdh_1_2_bsurf3b = newreg; Line Loop(llbdh_1_2_bsurf3b) = { lcptub2a, l1bdh_1_2_bsurfb3, ll_bdhabb_1_2_1[0], ll_bdhacb_1_2_1[0], ll_bdhadb_1_2_1[0], ll_bdhacb_1_2_2[0], ll_bdhadb_1_2_2[0], ll_bdhaeb_1_2_2[0], l2bdh_1_1_bsurft2b, -ll_bdhbec1_1_1_2[0], -ll_bdhbec0_1_1_2[0], -l1bdh_1_1_bsurfb2 };

psbdh_1_2_bsurf3t = newreg; Plane Surface(psbdh_1_2_bsurf3t) = { llbdh_1_2_bsurf3t };
psbdh_1_2_bsurf3b = newreg; Plane Surface(psbdh_1_2_bsurf3b) = { llbdh_1_2_bsurf3b };


//----------------------------------------------------------
// Face physsurfBdh_2_1 (Corner 3 - Corner 4)

l1bdh_2_1_bsurfb4 = newl; Line(l1bdh_2_1_bsurfb4) = {ptl4c4, ptsaefminz_1_1_2[0]};                                     // bottom line

l2bdh_2_1_bsurft4a = newl; Line(l2bdh_2_1_bsurft4a) = {pexet4, ptsbefmaxz_2_2_2[0]};                                   // top line
l2bdh_2_1_bsurft4b = newl; Line(l2bdh_2_1_bsurft4b) = {ptsbefminz_2_2_2[0], ptsaefmaxz_1_1_2[0]};                      // top line


llbdh_2_1_bsurf4t = newreg; Line Loop(llbdh_2_1_bsurf4t) = { lexet3, l2bdh_2_1_bsurft4a, -ll_bdhbec1_1_2_2[0], -ll_bdhbec0_1_2_2[0], l2bdh_2_1_bsurft4b, -ll_bdhaeb_1_1_2[0], -ll_bdhadb_1_1_2[0], -ll_bdhacb_1_1_2[0], -ll_bdhadb_1_1_1[0], -ll_bdhacb_1_1_1[0], -ll_bdhabb_1_1_1[0], -l2bdh_1_2_bsurft3a };
llbdh_2_1_bsurf4b = newreg; Line Loop(llbdh_2_1_bsurf4b) = { lcptub3a, l1bdh_2_1_bsurfb4, -ll_bdhaet_1_1_2[0], -ll_bdhadt_1_1_2[0], -ll_bdhact_1_1_2[0], -ll_bdhadt_1_1_1[0], -ll_bdhact_1_1_1[0], -ll_bdhabt_1_1_1[0], l2bdh_1_2_bsurft3b, l2a1_2, l2a1_3, -l1bdh_1_2_bsurfb3 };

psbdh_2_1_bsurf4t = newreg; Plane Surface(psbdh_2_1_bsurf4t) = { llbdh_2_1_bsurf4t };
psbdh_2_1_bsurf4b = newreg; Plane Surface(psbdh_2_1_bsurf4b) = { llbdh_2_1_bsurf4b };


//----------------------------------------------------------
// Face physsurfBdh_2_2 (Corner 4 - Corner 1)

llbdh_2_2_bsurf6t = newreg; Line Loop(llbdh_2_2_bsurf6t) = { lexet4, l2bdh_1_1_bsurft1a, -l1b1_2, -l1b1_1, -l2bdh_1_1_bsurfb1b, ll_bdhbbb_1_2_1[0], ll_bdhbcb_1_2_1[0], ll_bdhbdb_1_2_1[0], ll_bdhbcb_1_2_2[0], ll_bdhbdb_1_2_2[0], ll_bdhbeb_1_2_2[0], -l2bdh_2_1_bsurft4a };
llbdh_2_2_bsurf6b = newreg; Line Loop(llbdh_2_2_bsurf6b) = { lcptub4a, l1bdh_1_1_bsurfb1, ll_bdhbbt_1_2_1[0], ll_bdhbct_1_2_1[0], ll_bdhbdt_1_2_1[0], ll_bdhbct_1_2_2[0], ll_bdhbdt_1_2_2[0], ll_bdhbet_1_2_2[0], l2bdh_2_1_bsurft4b, ll_bdhaec0_1_1_2[0], ll_bdhaec1_1_1_2[0], -l1bdh_2_1_bsurfb4 };

psbdh_2_2_bsurf6t = newreg; Plane Surface(psbdh_2_2_bsurf6t) = { llbdh_2_2_bsurf6t };
psbdh_2_2_bsurf6b = newreg; Plane Surface(psbdh_2_2_bsurf6b) = { llbdh_2_2_bsurf6b };


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// FINAL DEFINITIONS (SURFACES / VOLUMES)


//------------------------------------------------------------------------------------------
/// SURFACE LOOPS

//----------------------------------------------------------
// Wire Gas Exterior Surface Loop - exterior wire gas surface loop

sl_wire_gas_total_surface = newreg; Surface Loop(sl_wire_gas_total_surface) = { psBsurfT, psbdh_1_1_bsurf1t, psbdh_1_1_bsurf1b, psbdh_1_2_bsurf3t, psbdh_1_2_bsurf3b, psbdh_2_1_bsurf4t, psbdh_2_1_bsurf4b, psbdh_2_2_bsurf6t, psbdh_2_2_bsurf6b, -surfTopCp2[], -sab_1_1[0], -sab_1_1[1], -sac_1_1[0], -sac_1_1[1], -sad_1_1[0], -sad_1_1[1], -sbb_1_1[0], -sbb_1_1[1], -sbc_1_1[0], -sbc_1_1[1], -sbd_1_1[0], -sbd_1_1[1], -sac_1_2[0], -sac_1_2[1], -sad_1_2[0], -sad_1_2[1], -sae_1_2[0], -sae_1_2[1], -sbc_1_2[0], -sbc_1_2[1], -sbd_1_2[0], -sbd_1_2[1], -sbe_1_2[0], -sbe_1_2[1], -sab_2_1[0], -sab_2_1[1], -sac_2_1[0], -sac_2_1[1], -sad_2_1[0], -sad_2_1[1], -sbb_2_1[0], -sbb_2_1[1], -sbc_2_1[0], -sbc_2_1[1], -sbd_2_1[0], -sbd_2_1[1], -sac_2_2[0], -sac_2_2[1], -sad_2_2[0], -sad_2_2[1], -sae_2_2[0], -sae_2_2[1], -sbc_2_2[0], -sbc_2_2[1], -sbd_2_2[0], -sbd_2_2[1], -sbe_2_2[0], -sbe_2_2[1] };
total_sl_wire_gas_total_surface[] += sl_wire_gas_total_surface;

// -sab_1_1[0], -sab_1_1[1], -sac_1_1[0], -sac_1_1[1], -sad_1_1[0], -sad_1_1[1], -sbb_1_1[0], -sbb_1_1[1], -sbc_1_1[0], -sbc_1_1[1], -sbd_1_1[0], -sbd_1_1[1], -sac_1_2[0], -sac_1_2[1], -sad_1_2[0], -sad_1_2[1], -sae_1_2[0], -sae_1_2[1], -sbc_1_2[0], -sbc_1_2[1], -sbd_1_2[0], -sbd_1_2[1], -sbe_1_2[0], -sbe_1_2[1], -sab_2_1[0], -sab_2_1[1], -sac_2_1[0], -sac_2_1[1], -sad_2_1[0], -sad_2_1[1], -sbb_2_1[0], -sbb_2_1[1], -sbc_2_1[0], -sbc_2_1[1], -sbd_2_1[0], -sbd_2_1[1], -sac_2_2[0], -sac_2_2[1], -sad_2_2[0], -sad_2_2[1], -sae_2_2[0], -sae_2_2[1], -sbc_2_2[0], -sbc_2_2[1], -sbd_2_2[0], -sbd_2_2[1], -sbe_2_2[0], -sbe_2_2[1]

//----------------------------------------------------------
// Gas Exterior Surface Loop - exterior gas surface loop

total_sl_gas_exterior_surface[0] = newreg; Surface Loop(total_sl_gas_exterior_surface[0]) = { surfBottomCp1[], pscpLowBorder1, pscpLowBorder2, pscpLowBorder3, pscpLowBorder4, psSideDielectric1a, psSideDielectric2a, psSideDielectric3a, psSideDielectric4a, pscpUpBorder1, pscpUpBorder2, pscpUpBorder3, pscpUpBorder4, psbdh_1_1_bsurf1t, sbaf_2_2_1[0], sbb_1_1[2], sbc_1_1[2], sbd_1_1[2], sbc_1_2[2], sbd_1_2[2], sbe_1_2[2], saef_2_2_2[0], psbdh_1_1_bsurf1b, psbdh_1_2_bsurf3t, saaf_1_1_1[0], sab_2_1[2], sac_2_1[2], sad_2_1[2], sac_2_2[2], sad_2_2[2], sae_2_2[2], sbef_1_1_2[0], psbdh_1_2_bsurf3b, psbdh_2_1_bsurf4t, saaf_2_2_1[0], sab_1_1[2], sac_1_1[2], sad_1_1[2], sac_1_2[2], sad_1_2[2], sae_1_2[2], sbef_2_2_2[0], psbdh_2_1_bsurf4b, psbdh_2_2_bsurf6t, sbaf_1_1_1[0], sbb_2_1[2], sbc_2_1[2], sbd_2_1[2], sbc_2_2[2], sbd_2_2[2], sbe_2_2[2], saef_1_1_2[0], psbdh_2_2_bsurf6b, psBsurfT };

//----------------------------------------------------------
// Dielectric Surface Loop - dielectric surface loop

sl_dielectric = newreg; Surface Loop(sl_dielectric) = { surfTopCp1[], psSideDielectric1a, psSideDielectric2a, psSideDielectric3a, psSideDielectric4a, surfBottomCp2[] };
total_sl_dielectric[] += sl_dielectric;

//----------------------------------------------------------
// Wire Volume Surface Loop - wire electrode

// sl_wire = newreg; Surface Loop(sl_wire) = { -sbaf_1_1_1[0], sbb_1_1[], sbc_1_1[], sbd_1_1[], sbb_1_2[], sbc_1_2[], sbcf_1_1_2[0], -saaf_1_1_1[0], sab_1_1[], sab_1_2[], sac_1_1[], sac_1_2[], sacf_1_1_2[0], -saaf_2_2_1[0], sab_2_1[], sab_2_2[], sac_2_1[], sac_2_2[], sacf_2_2_2[0], -sbaf_2_2_1[0], sbb_2_1[], sbb_2_2[], sbc_2_1[], sbc_2_2[], sbcf_2_2_2[0] };
// vol_wire = newreg; Volume(vol_wire) = {sl_wire};

//----------------------------------------------------------
// Electrode Surface Loop - electrode surface loop

sl_lower_cp = newreg; Surface Loop(sl_lower_cp) = { surfBottomCp1[], pscpLowBorder1, pscpLowBorder2, pscpLowBorder3, pscpLowBorder4, surfTopCp1[] };
total_sl_lower_cp[] += sl_lower_cp;

sl_high_cp = newreg; Surface Loop(sl_high_cp) = { surfBottomCp2[], pscpUpBorder1, pscpUpBorder2, pscpUpBorder3, pscpUpBorder4, surfTopCp2[] };
total_sl_high_cp[] += sl_high_cp;


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

vol_dielectric = newreg; Volume(vol_dielectric) = total_sl_dielectric[];
vol_lower_cp = newreg; Volume(vol_lower_cp) = total_sl_lower_cp[];
vol_high_cp = newreg; Volume(vol_high_cp) = total_sl_high_cp[];


//------------------------------------------------------------------------------------------
/// PHYSICAL SURFACES

//----------------------------------------------------------
// Physical Surfaces - periodic boundary conditions

physsurf_bdh_1_1 = newreg; Physical Surface(physsurf_bdh_1_1) = { psbdh_1_1_bsurf1t, sbaf_2_2_1[0], sbb_1_1[2], sbc_1_1[2], sbc_1_2[2], sbd_1_1[2], sbd_1_2[2], sbe_1_2[2], saef_2_2_2[0], psbdh_1_1_bsurf1b };               
physsurf_bdh_1_2 = newreg; Physical Surface(physsurf_bdh_1_2) = { psbdh_1_2_bsurf3t, saaf_1_1_1[0], sab_2_1[2], sac_2_1[2], sac_2_2[2], sad_2_1[2], sad_2_2[2], sae_2_2[2], sbef_1_1_2[0], psbdh_1_2_bsurf3b };               
physsurf_bdh_2_1 = newreg; Physical Surface(physsurf_bdh_2_1) = { psbdh_2_1_bsurf4t, saaf_2_2_1[0], sab_1_1[2], sac_1_1[2], sac_1_2[2], sad_1_1[2], sad_1_2[2], sae_1_2[2], sbef_2_2_2[0], psbdh_2_1_bsurf4b };               
physsurf_bdh_2_2 = newreg; Physical Surface(physsurf_bdh_2_2) = { psbdh_2_2_bsurf6t, sbaf_1_1_1[0], sbb_2_1[2], sbc_2_1[2], sbc_2_2[2], sbd_2_1[2], sbd_2_2[2], sbe_2_2[2], saef_1_1_2[0], psbdh_2_2_bsurf6b };               

//----------------------------------------------------------
// Physical surfaces - container surface

physsurf_container = newreg; Physical Surface(physsurf_container) = { surfBottomCp1[], pscpLowBorder1, pscpLowBorder2, pscpLowBorder3, pscpLowBorder4, psSideDielectric1a, psSideDielectric2a, psSideDielectric3a, psSideDielectric4a, pscpUpBorder1, pscpUpBorder2, pscpUpBorder3, pscpUpBorder4, psbdh_1_1_bsurf1t, sbaf_2_2_1[0], sbb_1_1[2], sbc_1_1[2], sbd_1_1[2], sbc_1_2[2], sbd_1_2[2], sbe_1_2[2], saef_2_2_2[0], psbdh_1_1_bsurf1b, psbdh_1_2_bsurf3t, saaf_1_1_1[0], sab_2_1[2], sac_2_1[2], sad_2_1[2], sac_2_2[2], sad_2_2[2], sae_2_2[2], sbef_1_1_2[0], psbdh_1_2_bsurf3b, psbdh_2_1_bsurf4t, saaf_2_2_1[0], sab_1_1[2], sac_1_1[2], sad_1_1[2], sac_1_2[2], sad_1_2[2], sae_1_2[2], sbef_2_2_2[0], psbdh_2_1_bsurf4b, psbdh_2_2_bsurf6t, sbaf_1_1_1[0], sbb_2_1[2], sbc_2_1[2], sbd_2_1[2], sbc_2_2[2], sbd_2_2[2], sbe_2_2[2], saef_1_1_2[0], psbdh_2_2_bsurf6b, psBsurfT };

//----------------------------------------------------------
// Physical surfaces - wire surface

// physsurf_wire = newreg; Physical Surface(physsurf_wire) = { -saaf_1_1_1[], sab_1_1[], sac_1_1[], sad_1_1[], sac_1_2[], sad_1_2[], sae_1_2[], saef_1_1_2[], -saaf_2_2_1[], sab_2_1[], sac_2_1[], sad_2_1[], sac_2_2[], sad_2_2[], sae_2_2[], saef_2_2_2[], -sbaf_1_1_1[], sbb_1_1[], sbc_1_1[], sbd_1_1[], sbc_1_2[], sbd_1_2[], sbe_1_2[], sbef_1_1_2[], -sbaf_2_2_1[], sbb_2_1[], sbc_2_1[], sbd_2_1[], sbc_2_2[], sbd_2_2[], sbe_2_2[], sbef_2_2_2[] };
// physsurf_wire = newreg; Physical Surface(physsurf_wire) = { physsurf_1a_wire, physsurf_1b_wire, physsurf_2a_wire, physsurf_2b_wire };

//----------------------------------------------------------
// Physical surfaces - gas exterior / interior surface

physsurf_gas = newreg; Physical Surface(physsurf_gas) = { psBsurfT, psbdh_1_1_bsurf1t, psbdh_1_1_bsurf1b, psbdh_1_2_bsurf3t, psbdh_1_2_bsurf3b, psbdh_2_1_bsurf4t, psbdh_2_1_bsurf4b, psbdh_2_2_bsurf6t, psbdh_2_2_bsurf6b, -surfTopCp2[], -sab_1_1[0], -sab_1_1[1], -sac_1_1[0], -sac_1_1[1], -sad_1_1[0], -sad_1_1[1], -sbb_1_1[0], -sbb_1_1[1], -sbc_1_1[0], -sbc_1_1[1], -sbd_1_1[0], -sbd_1_1[1], -sac_1_2[0], -sac_1_2[1], -sad_1_2[0], -sad_1_2[1], -sae_1_2[0], -sae_1_2[1], -sbc_1_2[0], -sbc_1_2[1], -sbd_1_2[0], -sbd_1_2[1], -sbe_1_2[0], -sbe_1_2[1], -sab_2_1[0], -sab_2_1[1], -sac_2_1[0], -sac_2_1[1], -sad_2_1[0], -sad_2_1[1], -sbb_2_1[0], -sbb_2_1[1], -sbc_2_1[0], -sbc_2_1[1], -sbd_2_1[0], -sbd_2_1[1], -sac_2_2[0], -sac_2_2[1], -sad_2_2[0], -sad_2_2[1], -sae_2_2[0], -sae_2_2[1], -sbc_2_2[0], -sbc_2_2[1], -sbd_2_2[0], -sbd_2_2[1], -sbe_2_2[0], -sbe_2_2[1] };
// Physical Surface(physsurf_gas) = { physsurf_container, -physsurf_x1_wire, -physsurf_x2_wire, -physsurf_y1_wire, -physsurf_y2_wire };

//----------------------------------------------------------
// Physical surfaces - dielectric surface

// physsurf_dielectric = newreg; Physical Surface(physsurf_dielectric) = total_sl_dielectric[];
physsurf_dielectric = newreg; Physical Surface(physsurf_dielectric) = { surfTopCp1[], psSideDielectric1a, psSideDielectric2a, psSideDielectric3a, psSideDielectric4a, surfBottomCp2[] };

//----------------------------------------------------------
// Physical surfaces - lower electrode surface

physsurf_lower_cp = newreg; Physical Surface(physsurf_lower_cp) = { surfTopCp1[], pscpLowBorder1, pscpLowBorder2, pscpLowBorder3, pscpLowBorder4, surfBottomCp1[] }; 
physsurf_high_cp = newreg; Physical Surface(physsurf_high_cp) = { surfTopCp2[], pscpUpBorder1, pscpUpBorder2, pscpUpBorder3, pscpUpBorder4, surfBottomCp2[] };

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

//----------------------------------------------------------
// Physical Volumes - Component Volumes

physvol_dielectric = newreg; Physical Volume(physvol_dielectric) = { vol_dielectric };
physvol_lower_cp = newreg; Physical Volume(physvol_lower_cp) = { vol_lower_cp };
physvol_high_cp = newreg; Physical Volume(physvol_high_cp) = { vol_high_cp };


//----------------------------------------------------------
// FEATURE / ELEMENT REMOVAL

// Delete { Volume { vol_gas }; }


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// FOOTER FILES
//

// Include "mmGasUnitCellTestWindowDefinition.geo";

// End


