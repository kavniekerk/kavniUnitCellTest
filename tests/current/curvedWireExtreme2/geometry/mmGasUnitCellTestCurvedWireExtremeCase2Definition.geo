//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 
// mmGasUnitCellTestCurveExtremeCase2Definition.geo
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
// hence, 2*rW + 2*sp1FacR1Ad + 2*x1SPWindFac1 = a, make sure the fracAngle*alpha = 45 degrees for an easy twist
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
// mmGasUnitCellTestCurveExtremeCase2Definition.geo
//
// Description
//
// References
//
// See also
//

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// CONSTANTS


meshLevel = 0.000;                               // mesh level, in mm
meshWindow = 0.020;                              // mesh window, in mm

tC = 0.0035;                                     // copper thickness, in mm
tD = 0.0035;                                     // dielectric thickness, in mm
lE = 0.40;                                       // distance from GEM plates to upper exterior electrode, in mm
lP = 0.02;                                       // distance from lower LEM plate to pad (readout) plane, in mm
a = 0.045;                                       // distance between unitCellTestWire wires, in mm

mwf = 1;                                         // meshWindow_factor

mm = 1;                                          // geometrical scaling
rW = 0.009 * mm;                                 // R of Wiremesh, in microns
hp0 = 0.01125;                                   // half pitch of the window, in mm
hp = 0.01125 * mm - 0*rW/mwf * mm;               // half pitch of the window, in microns

p = hp0;                                         // half pitch of the window, in mm

R = (p * p + rW * rW)/( (2 * rW) );              // R
alpha = Asin((p/R));                             // angle in radians


x1fracAngle1 = 0.16399;
x1fracAngle2 = 1;
x1fracAngle3 = 1;
x1fracAngle4 = 0.16399;

x2fracAngle1 = 0.16399;
x2fracAngle2 = 1;
x2fracAngle3 = 1;
x2fracAngle4 = 0.16399;

y1fracAngle1 = 0.16399;
y1fracAngle2 = 1;
y1fracAngle3 = 1;
y1fracAngle4 = 0.16399;

y2fracAngle1 = 0.16399;
y2fracAngle2 = 1;
y2fracAngle3 = 1;
y2fracAngle4 = 0.16399;

// fracAngle = 0.5;

// CHECK alpha = 77.32 deg, angles split into 4, always add to 90 deg
// CHECK total angle = 1
// CHECK WIDTH 2*0.009 + 2*0.0125 + 2*0.01*0.10 = 0.045
// CHECK HEIGHT 4*0.009 + 2*0.0125 = 0.061
// hence, top: -adjustment + radius
// and, bottom: adjustment + radius
// take half the adjustment as the value (radius)

spFac1 = p*2.00;
spFac2 = p*0.00;

spFacStr1 = p*0.00;
spFacStr2 = p*0.00;
spFacStr3 = p*0.00;
spFacStr4 = p*0.00;

x1SPWindFac1 = p*0.10;
x2SPWindFac1 = p*0.10;
y1SPWindFac1 = p*0.10;
y2SPWindFac1 = p*0.10;

x1SPWindFac = x1SPWindFac1;
x2SPWindFac = x2SPWindFac1;
y1SPWindFac = y1SPWindFac1;
y2SPWindFac = y2SPWindFac1;

x1SPWindFac2 = p*0.00;
x2SPWindFac2 = p*0.00;
y1SPWindFac2 = p*0.00;
y2SPWindFac2 = p*0.00;

Rtp = R + R*0.0;
Rtn = R - R*0.0;

sp1FacR1Ad = -0.00625;
sp1FacR2Ad = -0.00625;

sp2FacR1Ad = -0.00625;
sp2FacR2Ad = -0.00625;

sp1FacR1 = 1.00*(Rtn-1*rW) + sp1FacR1Ad;         // -Rtn+rW
sp1FacR2 = 1.00*(-Rtp+1*rW) + sp1FacR2Ad;        // +Rtp-rW

sp2FacR1 = 1.00*(Rtn-1*rW) + sp2FacR1Ad;         // -Rtn+rW
sp2FacR2 = 1.00*(-Rtp+1*rW) + sp2FacR2Ad;        // +Rtp-rW

geofx = 1;
geofy = 1;

n1 = 0;
m1 = 0;
n2 = 1;
m2 = 1;


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


p1a1_0 = newp; Point(p1a1_0) = {p+p +2.00*p,p+p +2.00*p,rW+meshLevel*mm  -1.00*sp1FacR2Ad, lcWireMesh * mm};                // centre circle
p1a1_1 = newp; Point(p1a1_1) = {p+p +2.00*p,p+p +2.00*p,0+meshLevel*mm  -1.00*sp1FacR2Ad, lcWireMesh * mm};                 // bottom circle
// p1a1_2 = newp; Point(p1a1_2) = {p+p +2.00*p,p+p +2.00*p+rW,rW+meshLevel*mm  -1.00*sp1FacR2Ad, lcWireMesh * mm};          // right circle
p1a1_3 = newp; Point(p1a1_3) = {p+p +2.00*p,p+p +2.00*p,2*rW+meshLevel*mm  -1.00*sp1FacR2Ad, lcWireMesh * mm};              // top circle
p1a1_4 = newp; Point(p1a1_4) = {p+p +2.00*p,p+p +2.00*p-rW,rW+meshLevel*mm  -1.00*sp1FacR2Ad, lcWireMesh * mm};             // left circle

l1a1s_1 = newl; Line(l1a1s_1) = {p1a1_1, p1a1_3};
l1a1_2 = newl; Circle(l1a1_2) = {p1a1_3, p1a1_0, p1a1_4};
l1a1_3 = newl; Circle(l1a1_3) = {p1a1_4, p1a1_0, p1a1_1};

ll1a1_1 = newll; Line Loop(ll1a1_1) = {l1a1_2, l1a1_3, l1a1s_1};

s1a1_1 = news; Plane Surface(s1a1_1) = {ll1a1_1};

tmpaa_1_1[] = {s1a1_1};
saaf_1_1_1[] = tmpaa_1_1[0];

tmpab_1_1[] = Extrude {-1.00*x1SPWindFac1 +0.00*spFacStr1,0,0} {
  Surface{tmpaa_1_1[0]};
};

sab_1_1[] = {};
sab_1_1[] += tmpab_1_1[{2:4}];


ptsac_1_1 = newp; Point(ptsac_1_1) = { p+p +2.00*p -1.00*x1SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, p+p +2.00*p +0.00*spFac1, Rtp-rW +1.00*meshLevel*mm +1.00*sp1FacR2 +0.00*R*Sin(alpha/2) +0.00*x1SPWindFac +0.00*spFacStr2 };


tmpac_1_1[] = Extrude {{x1SPWindFac2,0,0}, {0,-1,0}, { p+p +2.00*p -1.00*x1SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, p+p +2.00*p +0.00*spFac1, Rtp-rW +1.00*meshLevel*mm +1.00*sp1FacR2 +0.00*R*Sin(alpha/2) +0.00*x1SPWindFac +0.00*spFacStr2 }, x1fracAngle1*alpha } {
  Surface{tmpab_1_1[0]};
};


sac_1_1[] = {};
sac_1_1[] += tmpac_1_1[{2:4}];

// tmpac2_1_1[] = Extrude {0,0,-1.00*x1SPWindFac +0.00*spFacStr2} {
//   Surface{tmpad_1_1[0]};
// };
// 
// sac2_1_1[] = {};
// sac2_1_1[] += tmpac2_1_1[{2:4}];


ptsad_1_1 = newp; Point(ptsad_1_1) = { p+p +2.00*p -1.00*x1SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, p+p +2.00*p +0.00*spFac1, Rtp-rW +1.00*meshLevel*mm +1.00*sp1FacR2 +0.00*R*Sin(alpha/2) +0.00*x1SPWindFac +0.00*spFacStr2 };


tmpad_1_1[] = Extrude {{x1SPWindFac2,0,0}, {0,-1,0}, { p+p +2.00*p -1.00*x1SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, p+p +2.00*p +0.00*spFac1, Rtp-rW +1.00*meshLevel*mm +1.00*sp1FacR2 +0.00*R*Sin(alpha/2) +0.00*x1SPWindFac +0.00*spFacStr2 }, x1fracAngle2*alpha} {
  Surface{tmpac_1_1[0]};
};


sad_1_1[] = {};
sad_1_1[] += tmpad_1_1[{2:4}];


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Wire 1a2


// tmpaa_1_2[] = {tmpad_1_1[0]};
// 
// tmpab_1_2[] = Extrude {1.00*x1SPWindFac +0.00*spFacStr1,0,0} {
//   Surface{tmpaa_1_2[0]};
// };
// 
// sab_1_2[] = {};
// sab_1_2[] += tmpab_1_2[{2:4}];


ptsac_1_2 = newp; Point(ptsac_1_2) = { -p+p +1.00*x1SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, p+p +2.00*p +0.00*spFac1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp1FacR1 +0.00*R*Sin(alpha/2) +0.00*x1SPWindFac +0.00*spFacStr2 };


tmpac_1_2[] = Extrude {{x1SPWindFac2,0,0}, {0,1,0}, { -p+p +1.00*x1SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, p+p +2.00*p +0.00*spFac1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp1FacR1 +0.00*R*Sin(alpha/2) +0.00*x1SPWindFac +0.00*spFacStr2 }, x1fracAngle3*alpha} {
  Surface{tmpad_1_1[0]};
};


sac_1_2[] = {};
sac_1_2[] += tmpac_1_2[{2:4}];


// tmpac2_1_2[] = Extrude {0,0,1.00*x1SPWindFac +0.00*spFacStr2} {
//   Surface{tmpac_1_2[0]};
// };
// 
// sac2_1_2[] = {};
// sac2_1_2[] += tmpac2_1_2[{2:4}];


ptsad_1_2 = newp; Point(ptsad_1_2) = { -p+p +1.00*x1SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, p+p +2.00*p +0.00*spFac1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp1FacR1 +0.00*R*Sin(alpha/2) +0.00*x1SPWindFac +0.00*spFacStr2 };


tmpad_1_2[] = Extrude {{x1SPWindFac2,0,0}, {0,1,0},{ -p+p +1.00*x1SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, p+p +2.00*p +0.00*spFac1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp1FacR1 +0.00*R*Sin(alpha/2) +0.00*x1SPWindFac +0.00*spFacStr2 }, x1fracAngle4*alpha} {
  Surface{tmpac_1_2[0]};
};


sad_1_2[] = {};
sad_1_2[] += tmpad_1_2[{2:4}];

tmpae_1_2[] = Extrude {-1.00*x1SPWindFac1 +0.00*spFacStr2,0,0} {
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


p1b1_0 = newp; Point(p1b1_0) = {-p+p,-p+p,rW+meshLevel*mm -1.00*sp1FacR1Ad, lcWireMesh * mm};                               // centre circle
p1b1_1 = newp; Point(p1b1_1) = {-p+p,-p+p,0+meshLevel*mm -1.00*sp1FacR1Ad, lcWireMesh * mm};                                // bottom circle
p1b1_2 = newp; Point(p1b1_2) = {-p+p,-p+p+rW,rW+meshLevel*mm -1.00*sp1FacR1Ad, lcWireMesh * mm};                            // right circle
p1b1_3 = newp; Point(p1b1_3) = {-p+p,-p+p,2*rW+meshLevel*mm -1.00*sp1FacR1Ad, lcWireMesh * mm};                             // top circle
// p1b1_4 = newp; Point(p1b1_4) = {-p+p,-p+p-rW,rW+meshLevel*mm -1.00*sp1FacR1Ad, lcWireMesh * mm};                         // left circle

l1b1_1 = newl; Circle(l1b1_1) = {p1b1_1, p1b1_0, p1b1_2};
l1b1_2 = newl; Circle(l1b1_2) = {p1b1_2, p1b1_0, p1b1_3};
l1b1s_3 = newl; Line(l1b1s_3) = {p1b1_1, p1b1_3};

ll1b1_1 = newll; Line Loop(ll1b1_1) = {l1b1_1, l1b1_2, -l1b1s_3};

s1b1_1 = news; Plane Surface(s1b1_1) = {ll1b1_1};

tmpba_1_1[] = {s1b1_1};
sbaf_1_1_1[] = tmpba_1_1[0];


tmpbb_1_1[] = Extrude {1.00*x2SPWindFac1 +0.00*spFacStr1,0,0} {
  Surface{tmpba_1_1[0]};
};

sbb_1_1[] = {};
sbb_1_1[] += tmpbb_1_1[{2:4}];


ptsbc_1_1 = newp; Point(ptsbc_1_1) = { -p+p +0.00*p +1.00*x2SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -p+p +0.00*p +0.00*spFac1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp1FacR1 +0.00*R*Sin(alpha/2) +0.00*x2SPWindFac +0.00*spFacStr2 };


tmpbc_1_1[] = Extrude {{x2SPWindFac2,0,0}, {0,1,0}, { -p+p +0.00*p +1.00*x2SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -p+p +0.00*p +0.00*spFac1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp1FacR1 +0.00*R*Sin(alpha/2) +0.00*x2SPWindFac +0.00*spFacStr2 }, x2fracAngle1*alpha } {
  Surface{tmpbb_1_1[0]};
};


sbc_1_1[] = {};
sbc_1_1[] += tmpbc_1_1[{2:4}];


// tmpbc2_1_1[] = Extrude {0,0,-1.00*x2SPWindFac1 +0.00*spFacStr2} {
//  Surface{tmpbd_1_1[0]};
// };
//
// sbc2_1_1[] = {};
// sbc2_1_1[] += tmpbc2_1_1[{2:4}];


ptsbd_1_1 = newp; Point(ptsbd_1_1) = { -p+p +0.00*p +1.00*x2SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -p+p +0.00*p +0.00*spFac1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp1FacR1 +0.00*R*Sin(alpha/2) +0.00*x2SPWindFac +0.00*spFacStr2 };


tmpbd_1_1[] = Extrude {{x2SPWindFac2,0,0}, {0,1,0}, { -p+p +0.00*p +1.00*x2SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -p+p +0.00*p +0.00*spFac1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp1FacR1 +0.00*R*Sin(alpha/2) +0.00*x2SPWindFac +0.00*spFacStr2 }, x2fracAngle2*alpha} {
  Surface{tmpbc_1_1[0]};
};


sbd_1_1[] = {};
sbd_1_1[] += tmpbd_1_1[{2:4}];


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Wire 1b2


// tmpba_1_2[] = {tmpbd_1_1[0]};
// 
// tmpbb_1_2[] = Extrude {1.00*x2SPWindFac1 +0.00*spFacStr1,0,0} {
//   Surface{tmpba_1_2[0]};
// };
// 
// sbb_1_2[] = {};
// sbb_1_2[] += tmpbb_1_2[{2:4}];


ptsbc_1_2 = newp; Point(ptsbc_1_2) = { p+p +2.00*p -1.00*x2SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -p+p +0.00*p +0.00*spFac1, Rtp-rW +1.00*meshLevel*mm +1.00*sp1FacR2 +0.00*R*Sin(alpha/2) +0.00*x2SPWindFac +0.00*spFacStr2 };


tmpbc_1_2[] = Extrude {{x2SPWindFac2,0,0}, {0,-1,0}, { p+p +2.00*p -1.00*x2SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -p+p +0.00*p +0.00*spFac1, Rtp-rW +1.00*meshLevel*mm +1.00*sp1FacR2 +0.00*R*Sin(alpha/2) +0.00*x2SPWindFac +0.00*spFacStr2 }, x2fracAngle3*alpha} {
  Surface{tmpbd_1_1[0]};
};


sbc_1_2[] = {};
sbc_1_2[] += tmpbc_1_2[{2:4}];


// tmpbc2_1_2[] = Extrude {0,0,1.00*x2SPWindFac1 +0.00*spFacStr2} {
//   Surface{tmpbc_1_2[0]};
// };
// 
// sbc2_1_2[] = {};
// sbc2_1_2[] += tmpbc2_1_2[{2:4}];


ptsbd_1_2 = newp; Point(ptsbd_1_2) = { p+p +2.00*p -1.00*x2SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -p+p +0.00*p +0.00*spFac1, Rtp-rW +1.00*meshLevel*mm +1.00*sp1FacR2 +0.00*R*Sin(alpha/2) +0.00*x2SPWindFac +0.00*spFacStr2 };


tmpbd_1_2[] = Extrude {{x2SPWindFac2,0,0}, {0,-1,0},{ p+p +2.00*p -1.00*x2SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -p+p +0.00*p +0.00*spFac1, Rtp-rW +1.00*meshLevel*mm +1.00*sp1FacR2 +0.00*R*Sin(alpha/2) +0.00*x2SPWindFac +0.00*spFacStr2 }, x2fracAngle4*alpha} {
  Surface{tmpbc_1_2[0]};
};


sbd_1_2[] = {};
sbd_1_2[] += tmpbd_1_2[{2:4}];


tmpbe_1_2[] = Extrude {1.00*x2SPWindFac1,0,0} {
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


p2a1_0 = newp; Point(p2a1_0) = {p+p +2.00*p,p+p +2.00*p,-rW+meshLevel*mm +3.00*sp2FacR1Ad, lcWireMesh * mm};                // centre circle
p2a1_1 = newp; Point(p2a1_1) = {p+p +2.00*p,p+p +2.00*p,-2*rW+meshLevel*mm +3.00*sp2FacR1Ad, lcWireMesh * mm};              // bottom circle
// p2a1_2 = newp; Point(p2a1_2) = {p+p +2.00*p+rW,p+p +2.00*p,-rW+meshLevel*mm +3.00*sp2FacR1Ad, lcWireMesh * mm};          // right circle
p2a1_3 = newp; Point(p2a1_3) = {p+p +2.00*p,p+p +2.00*p,0+meshLevel*mm +3.00*sp2FacR1Ad, lcWireMesh * mm};                  // top circle
p2a1_4 = newp; Point(p2a1_4) = {p+p +2.00*p-rW,p+p +2.00*p,-rW+meshLevel*mm +3.00*sp2FacR1Ad, lcWireMesh * mm};             // left circle

l2a1s_1 = newl; Line(l2a1s_1) = {p2a1_1, p2a1_3};
l2a1_2 = newl; Circle(l2a1_2) = {p2a1_3, p2a1_0, p2a1_4};
l2a1_3 = newl; Circle(l2a1_3) = {p2a1_4, p2a1_0, p2a1_1};

ll2a1_1 = newll; Line Loop(ll2a1_1) = {l2a1_2, l2a1_3, l2a1s_1};

s2a1_1 = news; Plane Surface(s2a1_1) = {ll2a1_1};

tmpaa_2_1[] = {s2a1_1};
saaf_2_2_1[] = tmpaa_2_1[0];

tmpab_2_1[] = Extrude {0,-1.00*y1SPWindFac1 +0.00*spFacStr1,0} {
  Surface{tmpaa_2_1[0]};
};

sab_2_1[] = {};
sab_2_1[] += tmpab_2_1[{2:4}];


ptsac_2_1 = newp; Point(ptsac_2_1) = { p+p +2.00*p +0.00*spFac1, p+p +2.00*p -1.00*y1SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp2FacR1 +0.00*R*Sin(alpha/2) +0.00*y1SPWindFac +0.00*spFacStr2 };


tmpac_2_1[] = Extrude {{y1SPWindFac2,0,0}, {-1,0,0}, { p+p +2.00*p +0.00*spFac1, p+p +2.00*p -1.00*y1SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp2FacR1 +0.00*R*Sin(alpha/2) +0.00*y1SPWindFac +0.00*spFacStr2 }, y1fracAngle1*alpha } {
  Surface{tmpab_2_1[0]};
};

sac_2_1[] = {};
sac_2_1[] += tmpac_2_1[{2:4}];


// tmpac2_2_1[] = Extrude {0,0,-1.00*y1SPWindFac +0.00*spFacStr2} {
//   Surface{tmpad_2_1[0]};
// };
// 
// sac2_2_1[] = {};
// sac2_2_1[] += tmpac2_2_1[{2:4}];


ptsad_2_1 = newp; Point(ptsad_2_1) = { p+p +2.00*p +0.00*spFac1, p+p +2.00*p -1.00*y1SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp2FacR1 +0.00*R*Sin(alpha/2) +0.00*y1SPWindFac +0.00*spFacStr2 };


tmpad_2_1[] = Extrude {{y1SPWindFac2,0,0}, {-1,0,0}, { p+p +2.00*p +0.00*spFac1, p+p +2.00*p -1.00*y1SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp2FacR1 +0.00*R*Sin(alpha/2) +0.00*y1SPWindFac +0.00*spFacStr2 }, y1fracAngle2*alpha} {
  Surface{tmpac_2_1[0]};
};

sad_2_1[] = {};
sad_2_1[] += tmpad_2_1[{2:4}];


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Wire 2a2


// tmpaa_2_2[] = {tmpad_2_1[0]};
// 
// tmpab_2_2[] = Extrude {0,1.00*y1SPWindFac +0.00*spFacStr1,0} {
//   Surface{tmpaa_2_2[0]};
// };
// 
// sab_2_2[] = {};
// sab_2_2[] += tmpab_2_2[{2:4}];


ptsac_2_2 = newp; Point(ptsac_2_2) = { p+p +2.00*p +0.00*spFac1, -p+p +0.00*p +1.00*y1SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, Rtp-rW +1.00*meshLevel*mm +1.00*sp2FacR2 +0.00*R*Sin(alpha/2) +0.00*y1SPWindFac +0.00*spFacStr2 };


tmpac_2_2[] = Extrude {{y1SPWindFac2,0,0}, {1,0,0}, { p+p +2.00*p +0.00*spFac1, -p+p +0.00*p +1.00*y1SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, Rtp-rW +1.00*meshLevel*mm +1.00*sp2FacR2 +0.00*R*Sin(alpha/2) +0.00*y1SPWindFac +0.00*spFacStr2 }, y1fracAngle3*alpha} {
  Surface{tmpad_2_1[0]};
};

sac_2_2[] = {};
sac_2_2[] += tmpac_2_2[{2:4}];


// tmpac2_2_2[] = Extrude {0,0,1.00*y1SPWindFac +0.00*spFacStr2} {
//   Surface{tmpac_2_2[0]};
// };
// 
// sac2_2_2[] = {};
// sac2_2_2[] += tmpac2_2_2[{2:4}];


ptsad_2_2 = newp; Point(ptsad_2_2) = { p+p +2.00*p +0.00*spFac1, -p+p +0.00*p +1.00*y1SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, Rtp-rW +1.00*meshLevel*mm +1.00*sp2FacR2 +0.00*R*Sin(alpha/2) +0.00*y1SPWindFac +0.00*spFacStr2 };


tmpad_2_2[] = Extrude {{y1SPWindFac2,0,0}, {1,0,0},{ p+p +2.00*p +0.00*spFac1, -p+p +0.00*p +1.00*y1SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, Rtp-rW +1.00*meshLevel*mm +1.00*sp2FacR2 +0.00*R*Sin(alpha/2) +0.00*y1SPWindFac +0.00*spFacStr2 }, y1fracAngle4*alpha} {
  Surface{tmpac_2_2[0]};
};

sad_2_2[] = {};
sad_2_2[] += tmpad_2_2[{2:4}];


tmpae_2_2[] = Extrude {0,-1.00*y1SPWindFac1 +0.00*spFacStr2,0} {
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


p2b1_0 = newp; Point(p2b1_0) = {-p+p,-p+p,-rW+meshLevel*mm +3.00*sp2FacR1Ad, lcWireMesh * mm};                              // centre circle
p2b1_1 = newp; Point(p2b1_1) = {-p+p,-p+p,-2*rW+meshLevel*mm +3.00*sp2FacR1Ad, lcWireMesh * mm};                            // bottom circle
p2b1_2 = newp; Point(p2b1_2) = {-p+p+rW,-p+p,-rW+meshLevel*mm +3.00*sp2FacR1Ad, lcWireMesh * mm};                           // right circle
p2b1_3 = newp; Point(p2b1_3) = {-p+p,-p+p,0+meshLevel*mm +3.00*sp2FacR1Ad, lcWireMesh * mm};                                // top circle
// p2b1_4 = newp; Point(p2b1_4) = {-p+p-rW,-p+p,-rW+meshLevel*mm +3.00*sp2FacR1Ad, lcWireMesh * mm};                        // left circle

l2b1_1 = newl; Circle(l2b1_1) = {p2b1_1, p2b1_0, p2b1_2};
l2b1_2 = newl; Circle(l2b1_2) = {p2b1_2, p2b1_0, p2b1_3};
l2b1s_3 = newl; Line(l2b1s_3) = {p2b1_1, p2b1_3};

ll2b1_1 = newll; Line Loop(ll2b1_1) = {l2b1_1, l2b1_2, -l2b1s_3};

s2b1_1 = news; Plane Surface(s2b1_1) = {ll2b1_1};

tmpba_2_1[] = {s2b1_1};
sbaf_2_2_1[] = tmpba_2_1[0];

tmpbb_2_1[] = Extrude {0,1.00*y2SPWindFac1 +0.00*spFacStr1,0} {
  Surface{tmpba_2_1[0]};
};

sbb_2_1[] = {};
sbb_2_1[] += tmpbb_2_1[{2:4}];


ptsbc_2_1 = newp; Point(ptsbc_2_1) = { p+p +2.00*p +0.00*spFac1, -p+p +0.00*p +1.00*y2SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp2FacR1 +0.00*R*Sin(alpha/2) +0.00*y2SPWindFac +0.00*spFacStr2 };


tmpbc_2_1[] = Extrude {{y2SPWindFac2,0,0}, {1,0,0}, { p+p +2.00*p +0.00*spFac1, -p+p +0.00*p +1.00*y2SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp2FacR1 +0.00*R*Sin(alpha/2) +0.00*y2SPWindFac +0.00*spFacStr2 }, y2fracAngle1*alpha } {
  Surface{tmpbb_2_1[0]};
};

sbc_2_1[] = {};
sbc_2_1[] += tmpbc_2_1[{2:4}];


// tmpbc2_2_1[] = Extrude {0,0,1.00*y2SPWindFac +0.00*spFacStr2} {
//   Surface{tmpbd_2_1[0]};
// };
// 
// sbc2_2_1[] = {};
// sbc2_2_1[] += tmpbc2_2_1[{2:4}];


ptsbd_2_1 = newp; Point(ptsbd_2_1) = { p+p +2.00*p +0.00*spFac1, -p+p +0.00*p +1.00*y2SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp2FacR1 +0.00*R*Sin(alpha/2) +0.00*y2SPWindFac +0.00*spFacStr2 };


tmpbd_2_1[] = Extrude {{y2SPWindFac2,0,0}, {1,0,0}, { p+p +2.00*p +0.00*spFac1, -p+p +0.00*p +1.00*y2SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, -Rtn+rW +1.00*meshLevel*mm +1.00*sp2FacR1 +0.00*R*Sin(alpha/2) +0.00*y2SPWindFac +0.00*spFacStr2 }, y2fracAngle2*alpha} {
  Surface{tmpbc_2_1[0]};
};

sbd_2_1[] = {};
sbd_2_1[] += tmpbd_2_1[{2:4}];


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Wire 2b2


// tmpba_2_2[] = {tmpbd_2_1[0]};
// 
// tmpbb_2_2[] = Extrude {0,1.00*y2SPWindFac +0.00*spFacStr1,0} {
//   Surface{tmpba_2_2[0]};
// };
// 
// sbb_2_2[] = {};
// sbb_2_2[] += tmpbb_2_2[{2:4}];


ptsbc_2_2 = newp; Point(ptsbc_2_2) = { p+p +2.00*p +0.00*spFac1, p+p +2.00*p -1.00*y2SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, Rtp-rW +1.00*meshLevel*mm +1.00*sp2FacR2 +0.00*R*Sin(alpha/2) +0.00*y2SPWindFac +0.00*spFacStr2 };


tmpbc_2_2[] = Extrude {{y2SPWindFac2,0,0}, {-1,0,0}, { p+p +2.00*p +0.00*spFac1, p+p +2.00*p -1.00*y2SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, Rtp-rW +1.00*meshLevel*mm +1.00*sp2FacR2 +0.00*R*Sin(alpha/2) +0.00*y2SPWindFac +0.00*spFacStr2 }, y2fracAngle3*alpha} {
  Surface{tmpbd_2_1[0]};
};

sbc_2_2[] = {};
sbc_2_2[] += tmpbc_2_2[{2:4}];


// tmpbc2_2_2[] = Extrude {0,0,1.00*y2SPWindFac +0.00*spFacStr2} {
//   Surface{tmpbc_2_2[0]};
// };
// 
// sbc2_2_2[] = {};
// sbc2_2_2[] += tmpbc2_2_2[{2:4}];


ptsbd_2_2 = newp; Point(ptsbd_2_2) = { p+p +2.00*p +0.00*spFac1, p+p +2.00*p -1.00*y2SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, Rtp-rW +1.00*meshLevel*mm +1.00*sp2FacR2 +0.00*R*Sin(alpha/2) +0.00*y2SPWindFac +0.00*spFacStr2 };


tmpbd_2_2[] = Extrude {{y2SPWindFac2,0,0}, {-1,0,0},{ p+p +2.00*p +0.00*spFac1, p+p +2.00*p -1.00*y2SPWindFac +0.00*R*Cos(alpha/2) +0.00*spFac1 +0.00*spFacStr1, Rtp-rW +1.00*meshLevel*mm +1.00*sp2FacR2 +0.00*R*Sin(alpha/2) +0.00*y2SPWindFac +0.00*spFacStr2 }, y2fracAngle4*alpha} {
  Surface{tmpbc_2_2[0]};
};

sbd_2_2[] = {};
sbd_2_2[] += tmpbd_2_2[{2:4}];


tmpbe_2_2[] = Extrude {0,1.00*y2SPWindFac1 +0.00*spFacStr2,0} {
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
/// FOOTER FILES
//

Include "mmGasUnitCellTestWindowDefinition.geo";
Include "mmGasUnitCellTestLineDefinition.geo";

// End