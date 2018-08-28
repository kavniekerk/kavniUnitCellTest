// *********************************************************************
// mmGasUnitCellTestCurveStrCur.geo
//
// Description:
// Geometry file for a MM cell.
// This cell can be repeated any number of times within Garfield 
// to construct an arbitrarily large MM
//
// *********************************************************************  

Include "mmGasComponentLabel.pro";
// Include "mmGasMeshingOptions.pro";


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// MMGASSTRWIRE GEOMETRY MODULE
//

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// GENERAL INFORMATION
//
// mmGasUnitCellTestCurveStrCur.geo
//
// Description
//
// References
//
// See also
//

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// CONSTANTS

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// CONSTANTS

meshLevel = 0.10;                                          // mesh level, in mm
meshWindow = 0.020;                                        // mesh window, in mm
a = 0.045;                                                 // the "pitch", or distance between unitCellCurWire pillars, in mm


//----------------------------------------------------------
// pillar parameters

r0 = 0.005;                                                // the pillar radius, in mm
pilfx = 0;                                                 // pillar co-ordinates, multiplication factor in x, 1.25
pilfy = 0;                                                 // pillar co-ordinates, multiplication factor in y, 1.25
pilcx = -0.025*0 - 0/4;                                    // pillar co-ordinates, constant factor in x, -0.025
pilcy = -0.025*0 - 0/4;                                    // pillar co-ordinates, constant factor in y, -0.025

ttD = ( meshLevel - 0.005 );                               // top of dielectric pillar
tteD1 = ( ttD - 0.001 );                                   // etched pillar level 1
tteD2 = ( 0.5 * (ttD - tteD1) + tteD1 );                   // etched pillar level 2


//----------------------------------------------------------
// vertical parameters

r1 = 0.001;                                                // the etching amount (etch radius = r0 + r1), in mm
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
hp0 = 0.0225;                                              // half pitch of the window, in mm
hp = 0.0225 * mm - 0*rW/mwf * mm;                          // half pitch of the window, in microns

p = hp0;                                                   // half pitch of the window, in mm

R = (p * p + rW * rW)/( (2 * rW) );                        // R
alpha = Asin((p/R));                                       // angle in radians

meshLevel = 0.100;                                         // mesh level, in mm
meshWindow = 0.020;                                        // mesh window, in mm

x1SPWindFac = p*0.10;
x2SPWindFac = p*0.10;
y1SPWindFac = p*0.10;
y2SPWindFac = p*0.10;

spFac = p*0.10;

x1SPWindFac2 = p*0.00;
x2SPWindFac2 = p*0.00;
y1SPWindFac2 = p*0.00;
y2SPWindFac2 = p*0.00;

Rtp = R - R*0.00;
Rtn = R + R*0.00;

hF = 0*rW;                                                 // Heightfactor

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
// Geometry.Tolerance = 1-06;
// Coherence Mesh;

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// MESHING PARAMETERS

//----------------------------------------------------------
// Characteristic lengths - characterization of mesh

// current best dimensions for mesh characteristic lengths

  lcDielectricPillar = 0.0025;                                                                                              // characterization of dielectric 
  lcEtchingPillar = 0.0025;                                                                                                 // characterization of dielectric etching
  lcCopperPlateBdry = 0.0025;                                                                                               // characterization of metal surfaces / anode
  lcExtElectrodeBdry = 0.0050;                                                                                              // characterization of external electrode / cathode
  lcWireMesh = 0.001;                                                                                                       // characterization of wire electrode


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////// Face 1b - half wire (y - z) extrude in x direction - Corner 1 to Corner 2
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


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////// Face 1a - half wire (y - z) extrude in x direction - Corner 3 to Corner 4
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


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////// Face 2a - half wire (x - z) extrude in y direction - Corner 3 to Corner 2
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


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////// Face 2b - half wire (x - z) extrude in y direction - Corner 1 to Corner 4
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


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////// Line Definition


// *******************************
//
// Comparative IF Statement
//
// *******************************


For q In {1:1}
  For r In {1:2}
    For s In {1:2}


/// sab_1_1[], sac_1_1[], sbb_1_1[], sbc_1_1[]

    //----------------------------------------------------------
    // Face physsurf_bdh_1_1 (Corner 1 - Corner 2) - sab/tmpab

      If(r == 1 && s == 1)

      ll_bdhabt~{q}~{r}~{s}[] = {};
      ll_bdhabb~{q}~{r}~{s}[] = {};

      pbdhabt~{q}~{r}~{s}() = {};
      pbdhabb~{q}~{r}~{s}() = {};

      ll_bdhab~{q}~{r}~{s}[] = {};

        ll_bdhab~{q}~{r}~{s}[] += Boundary{ Surface{sab~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 1)
          ll_bdhabc0~{q}~{r}~{s}[] = {};
          pbdhabc0~{q}~{r}~{s}() = {};
          ll_bdhabc~{q}~{r}~{s}[] = {};

          ll_bdhabc~{q}~{r}~{s}[] += Boundary{ Surface{tmpab~{r}~{s}[t]}; };
          ll_bdhabc0~{q}~{r}~{s}[] = Abs(ll_bdhabc~{q}~{r}~{s}[t]);
          pbdhabc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhabc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhabb~{q}~{r}~{s}[] = Abs(ll_bdhab~{q}~{r}~{s}[t]);
          pbdhabb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhab~{q}~{r}~{s}[t])}; };
        EndIf  

        If(t == 1 && s == 1)
          ll_bdhabc1~{q}~{r}~{s}[] = {};
          pbdhabc1~{q}~{r}~{s}() = {};

          ll_bdhabc1~{q}~{r}~{s}[] = Abs(ll_bdhabc~{q}~{r}~{s}[t]);
          pbdhabc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhabc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 1)
          ll_bdhab1~{q}~{r}~{s}[] = {};
          pbdhab1~{q}~{r}~{s}() = {};

          ll_bdhab1~{q}~{r}~{s}[] = Abs(ll_bdhab~{q}~{r}~{s}[t]);
          pbdhab1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhab~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)  
          ll_bdhabt~{q}~{r}~{s}[] = Abs(ll_bdhab~{q}~{r}~{s}[t]);
          pbdhabt~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhab~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

    //----------------------------------------------------------
    // Face physsurf_bdh_2_1 (Corner 3 - Corner 4) - sac/tmpac

      If(r == 1 && s == 1)

      ll_bdhact~{q}~{r}~{s}[] = {};
      ll_bdhacb~{q}~{r}~{s}[] = {};

      pbdhact~{q}~{r}~{s}() = {};
      pbdhacb~{q}~{r}~{s}() = {};

      ll_bdhac~{q}~{r}~{s}[] = {};

        ll_bdhac~{q}~{r}~{s}[] += Boundary{ Surface{sac~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 1)
          ll_bdhacc0~{q}~{r}~{s}[] = {};
          pbdhacc0~{q}~{r}~{s}() = {};
          ll_bdhacc~{q}~{r}~{s}[] = {};

          ll_bdhacc~{q}~{r}~{s}[] += Boundary{ Surface{tmpac~{r}~{s}[t]}; };
          ll_bdhacc0~{q}~{r}~{s}[] = Abs(ll_bdhacc~{q}~{r}~{s}[t]);
          pbdhacc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhacc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhacb~{q}~{r}~{s}[] = Abs(ll_bdhac~{q}~{r}~{s}[t]);
          pbdhacb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhac~{q}~{r}~{s}[t])}; };
        EndIf  

        If(t == 1 && s == 1)
          ll_bdhacc1~{q}~{r}~{s}[] = {};
          pbdhacc1~{q}~{r}~{s}() = {};

          ll_bdhacc1~{q}~{r}~{s}[] = Abs(ll_bdhacc~{q}~{r}~{s}[t]);
          pbdhacc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhacc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 1)
          ll_bdhac1~{q}~{r}~{s}[] = {};
          pbdhac1~{q}~{r}~{s}() = {};

          ll_bdhac1~{q}~{r}~{s}[] = Abs(ll_bdhac~{q}~{r}~{s}[t]);
          pbdhac1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhac~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)  
          ll_bdhact~{q}~{r}~{s}[] = Abs(ll_bdhac~{q}~{r}~{s}[t]);
          pbdhact~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhac~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

    //----------------------------------------------------------
    // Face physsurf_bdh_1_1 (Corner 1 - Corner 2) - sbb/tmpbb

      If(r == 1 && s == 1)

      ll_bdhbbt~{q}~{r}~{s}[] = {};
      ll_bdhbbb~{q}~{r}~{s}[] = {};

      pbdhbbt~{q}~{r}~{s}() = {};
      pbdhbbb~{q}~{r}~{s}() = {};

      ll_bdhbb~{q}~{r}~{s}[] = {};

        ll_bdhbb~{q}~{r}~{s}[] += Boundary{ Surface{sbb~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 1)
          ll_bdhbbc0~{q}~{r}~{s}[] = {};
          pbdhbbc0~{q}~{r}~{s}() = {};
          ll_bdhbbc~{q}~{r}~{s}[] = {};

          ll_bdhbbc~{q}~{r}~{s}[] += Boundary{ Surface{tmpbb~{r}~{s}[t]}; };
          ll_bdhbbc0~{q}~{r}~{s}[] = Abs(ll_bdhbbc~{q}~{r}~{s}[t]);
          pbdhbbc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbbc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhbbb~{q}~{r}~{s}[] = Abs(ll_bdhbb~{q}~{r}~{s}[t]);
          pbdhbbb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbb~{q}~{r}~{s}[t])}; };
        EndIf  

        If(t == 1 && s == 1)
          ll_bdhbbc1~{q}~{r}~{s}[] = {};
          pbdhbbc1~{q}~{r}~{s}() = {};

          ll_bdhbbc1~{q}~{r}~{s}[] = Abs(ll_bdhbbc~{q}~{r}~{s}[t]);
          pbdhbbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbbc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 1)
          ll_bdhbb1~{q}~{r}~{s}[] = {};
          pbdhbb1~{q}~{r}~{s}() = {};

          ll_bdhbb1~{q}~{r}~{s}[] = Abs(ll_bdhbb~{q}~{r}~{s}[t]);
          pbdhbb1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbb~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)  
          ll_bdhbbt~{q}~{r}~{s}[] = Abs(ll_bdhbb~{q}~{r}~{s}[t]);
          pbdhbbt~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbb~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

    //----------------------------------------------------------
    // Face physsurf_bdh_2_1 (Corner 3 - Corner 4) - sbc/tmpbc

      If(r == 1 && s == 1)

      ll_bdhbct~{q}~{r}~{s}[] = {};
      ll_bdhbcb~{q}~{r}~{s}[] = {};

      pbdhbct~{q}~{r}~{s}() = {};
      pbdhbcb~{q}~{r}~{s}() = {};

      ll_bdhbc~{q}~{r}~{s}[] = {};

        ll_bdhbc~{q}~{r}~{s}[] += Boundary{ Surface{sbc~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 1)
          ll_bdhbcc0~{q}~{r}~{s}[] = {};
          pbdhbcc0~{q}~{r}~{s}() = {};
          ll_bdhbcc~{q}~{r}~{s}[] = {};

          ll_bdhbcc~{q}~{r}~{s}[] += Boundary{ Surface{tmpbc~{r}~{s}[t]}; };
          ll_bdhbcc0~{q}~{r}~{s}[] = Abs(ll_bdhbcc~{q}~{r}~{s}[t]);
          pbdhbcc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbcc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhbcb~{q}~{r}~{s}[] = Abs(ll_bdhbc~{q}~{r}~{s}[t]);
          pbdhbcb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbc~{q}~{r}~{s}[t])}; };
        EndIf  

        If(t == 1 && s == 1)
          ll_bdhbcc1~{q}~{r}~{s}[] = {};
          pbdhbcc1~{q}~{r}~{s}() = {};

          ll_bdhbcc1~{q}~{r}~{s}[] = Abs(ll_bdhbcc~{q}~{r}~{s}[t]);
          pbdhbcc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbcc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 1)
          ll_bdhbc1~{q}~{r}~{s}[] = {};
          pbdhbc1~{q}~{r}~{s}() = {};

          ll_bdhbc1~{q}~{r}~{s}[] = Abs(ll_bdhbc~{q}~{r}~{s}[t]);
          pbdhbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)  
          ll_bdhbct~{q}~{r}~{s}[] = Abs(ll_bdhbc~{q}~{r}~{s}[t]);
          pbdhbct~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbc~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

/// sab_1_2[], sac_1_2[], sbb_1_2[], sbc_1_2[]

    //----------------------------------------------------------
    // Face physsurf_bdh_2_1 (Corner 3 - Corner 4) - sab/tmpab

      If(r == 1 && s == 2)

      ll_bdhabt~{q}~{r}~{s}[] = {};
      ll_bdhabb~{q}~{r}~{s}[] = {}; 

      pbdhabt~{q}~{r}~{s}() = {};
      pbdhabb~{q}~{r}~{s}() = {};

      ll_bdhab~{q}~{r}~{s}[] = {};

        ll_bdhab~{q}~{r}~{s}[] += Boundary{ Surface{sab~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 2)
          ll_bdhabc0~{q}~{r}~{s}[] = {};
          pbdhabc0~{q}~{r}~{s}() = {};
          ll_bdhabc~{q}~{r}~{s}[] = {};

          ll_bdhabc~{q}~{r}~{s}[] += Boundary{ Surface{tmpab~{r}~{s}[t]}; };
          ll_bdhabc0~{q}~{r}~{s}[] = Abs(ll_bdhabc~{q}~{r}~{s}[t]);
          pbdhabc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhabc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhabb~{q}~{r}~{s}[] = Abs(ll_bdhab~{q}~{r}~{s}[t]);
          pbdhabb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhab~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 2)
          ll_bdhabc1~{q}~{r}~{s}[] = {};
          pbdhabc1~{q}~{r}~{s}() = {};

          ll_bdhabc1~{q}~{r}~{s}[] = Abs(ll_bdhabc~{q}~{r}~{s}[t]);
          pbdhabc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhabc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 2)
          ll_bdhab1~{q}~{r}~{s}[] = {}; 
          pbdhab1~{q}~{r}~{s}() = {};

          ll_bdhab1~{q}~{r}~{s}[] = Abs(ll_bdhab~{q}~{r}~{s}[t]);
          pbdhab1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhab~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)
          ll_bdhabt~{q}~{r}~{s}[] = Abs(ll_bdhab~{q}~{r}~{s}[t]);
          pbdhabt~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhab~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

    //----------------------------------------------------------
    // Face physsurf_bdh_2_1 (Corner 3 - Corner 4) - sac/tmpac

      If(r == 1 && s == 2)

      ll_bdhact~{q}~{r}~{s}[] = {};
      ll_bdhacb~{q}~{r}~{s}[] = {}; 

      pbdhact~{q}~{r}~{s}() = {};
      pbdhacb~{q}~{r}~{s}() = {};

      ll_bdhac~{q}~{r}~{s}[] = {};

        ll_bdhac~{q}~{r}~{s}[] += Boundary{ Surface{sac~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 2)
          ll_bdhacc0~{q}~{r}~{s}[] = {};
          pbdhacc0~{q}~{r}~{s}() = {};
          ll_bdhacc~{q}~{r}~{s}[] = {};

          ll_bdhacc~{q}~{r}~{s}[] += Boundary{ Surface{tmpac~{r}~{s}[t]}; };
          ll_bdhacc0~{q}~{r}~{s}[] = Abs(ll_bdhacc~{q}~{r}~{s}[t]);
          pbdhacc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhacc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhacb~{q}~{r}~{s}[] = Abs(ll_bdhac~{q}~{r}~{s}[t]);
          pbdhacb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhac~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 2)
          ll_bdhacc1~{q}~{r}~{s}[] = {};
          pbdhacc1~{q}~{r}~{s}() = {};

          ll_bdhacc1~{q}~{r}~{s}[] = Abs(ll_bdhacc~{q}~{r}~{s}[t]);
          pbdhacc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhacc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 2)
          ll_bdhac1~{q}~{r}~{s}[] = {}; 
          pbdhac1~{q}~{r}~{s}() = {};

          ll_bdhac1~{q}~{r}~{s}[] = Abs(ll_bdhac~{q}~{r}~{s}[t]);
          pbdhac1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhac~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)
          ll_bdhact~{q}~{r}~{s}[] = Abs(ll_bdhac~{q}~{r}~{s}[t]);
          pbdhact~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhac~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

    //----------------------------------------------------------
    // Face physsurf_bdh_1_1 (Corner 1 - Corner 2) - sbb/tmpbb

      If(r == 1 && s == 2)

      ll_bdhbbt~{q}~{r}~{s}[] = {};
      ll_bdhbbb~{q}~{r}~{s}[] = {}; 

      pbdhbbt~{q}~{r}~{s}() = {};
      pbdhbbb~{q}~{r}~{s}() = {};

      ll_bdhbb~{q}~{r}~{s}[] = {};

        ll_bdhbb~{q}~{r}~{s}[] += Boundary{ Surface{sbb~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 2)
          ll_bdhbbc0~{q}~{r}~{s}[] = {};
          pbdhbbc0~{q}~{r}~{s}() = {};
          ll_bdhbbc~{q}~{r}~{s}[] = {};

          ll_bdhbbc~{q}~{r}~{s}[] += Boundary{ Surface{tmpbb~{r}~{s}[t]}; };
          ll_bdhbbc0~{q}~{r}~{s}[] = Abs(ll_bdhbbc~{q}~{r}~{s}[t]);
          pbdhbbc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbbc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhbbb~{q}~{r}~{s}[] = Abs(ll_bdhbb~{q}~{r}~{s}[t]);
          pbdhbbb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbb~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 2)
          ll_bdhbbc1~{q}~{r}~{s}[] = {};
          pbdhbbc1~{q}~{r}~{s}() = {};

          ll_bdhbbc1~{q}~{r}~{s}[] = Abs(ll_bdhbbc~{q}~{r}~{s}[t]);
          pbdhbbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbbc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 2)
          ll_bdhbb1~{q}~{r}~{s}[] = {}; 
          pbdhbb1~{q}~{r}~{s}() = {};

          ll_bdhbb1~{q}~{r}~{s}[] = Abs(ll_bdhbb~{q}~{r}~{s}[t]);
          pbdhbb1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbb~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)
          ll_bdhbbt~{q}~{r}~{s}[] = Abs(ll_bdhbb~{q}~{r}~{s}[t]);
          pbdhbbt~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbb~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

    //----------------------------------------------------------
    // Face physsurf_bdh_1_1 (Corner 1 - Corner 2) - sbc/tmpbc

      If(r == 1 && s == 2)

      ll_bdhbct~{q}~{r}~{s}[] = {};
      ll_bdhbcb~{q}~{r}~{s}[] = {}; 

      pbdhbct~{q}~{r}~{s}() = {};
      pbdhbcb~{q}~{r}~{s}() = {};

      ll_bdhbc~{q}~{r}~{s}[] = {};

        ll_bdhbc~{q}~{r}~{s}[] += Boundary{ Surface{sbc~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 2)
          ll_bdhbcc0~{q}~{r}~{s}[] = {};
          pbdhbcc0~{q}~{r}~{s}() = {};
          ll_bdhbcc~{q}~{r}~{s}[] = {};

          ll_bdhbcc~{q}~{r}~{s}[] += Boundary{ Surface{tmpbc~{r}~{s}[t]}; };
          ll_bdhbcc0~{q}~{r}~{s}[] = Abs(ll_bdhbcc~{q}~{r}~{s}[t]);
          pbdhbcc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbcc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhbcb~{q}~{r}~{s}[] = Abs(ll_bdhbc~{q}~{r}~{s}[t]);
          pbdhbcb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 2)
          ll_bdhbcc1~{q}~{r}~{s}[] = {};
          pbdhbcc1~{q}~{r}~{s}() = {};

          ll_bdhbcc1~{q}~{r}~{s}[] = Abs(ll_bdhbcc~{q}~{r}~{s}[t]);
          pbdhbcc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbcc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 2)
          ll_bdhbc1~{q}~{r}~{s}[] = {}; 
          pbdhbc1~{q}~{r}~{s}() = {};

          ll_bdhbc1~{q}~{r}~{s}[] = Abs(ll_bdhbc~{q}~{r}~{s}[t]);
          pbdhbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)
          ll_bdhbct~{q}~{r}~{s}[] = Abs(ll_bdhbc~{q}~{r}~{s}[t]);
          pbdhbct~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbc~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

/// sab_2_1[], sac_2_1[], sbb_2_1[], sbc_2_1[]

    //----------------------------------------------------------
    // Face physsurf_bdh_1_2 (Corner 2 - Corner 3) - sab/tmpab

      If(r == 2 && s == 1)

      ll_bdhabt~{q}~{r}~{s}[] = {};
      ll_bdhabb~{q}~{r}~{s}[] = {}; 

      pbdhabt~{q}~{r}~{s}() = {};
      pbdhabb~{q}~{r}~{s}() = {};

      ll_bdhab~{q}~{r}~{s}[] = {};

        ll_bdhab~{q}~{r}~{s}[] += Boundary{ Surface{sab~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 1)
          ll_bdhabc0~{q}~{r}~{s}[] = {};
          pbdhabc0~{q}~{r}~{s}() = {};
          ll_bdhabc~{q}~{r}~{s}[] = {};

          ll_bdhabc~{q}~{r}~{s}[] += Boundary{ Surface{tmpab~{r}~{s}[t]}; };
          ll_bdhabc0~{q}~{r}~{s}[] = Abs(ll_bdhabc~{q}~{r}~{s}[t]);
          pbdhabc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhabc~{q}~{r}~{s}[t])}; };
        EndIf
      
        If(t == 3)
          ll_bdhabb~{q}~{r}~{s}[] = Abs(ll_bdhab~{q}~{r}~{s}[t]);
          pbdhabb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhab~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 1)
          ll_bdhab1~{q}~{r}~{s}[] = {};
          pbdhab1~{q}~{r}~{s}() = {};

          ll_bdhab1~{q}~{r}~{s}[] = Abs(ll_bdhab~{q}~{r}~{s}[t]);
          pbdhab1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhab~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhabt~{q}~{r}~{s}[] = Abs(ll_bdhab~{q}~{r}~{s}[t]);
          pbdhabt~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhab~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 1)
          ll_bdhabc1~{q}~{r}~{s}[] = {};
          pbdhabc1~{q}~{r}~{s}() = {};

          ll_bdhabc1~{q}~{r}~{s}[] = Abs(ll_bdhabc~{q}~{r}~{s}[t]);
          pbdhabc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhabc~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

    //----------------------------------------------------------
    // Face physsurf_bdh_1_2 (Corner 2 - Corner 3) - sac/tmpac

      If(r == 2 && s == 1)

      ll_bdhact~{q}~{r}~{s}[] = {};
      ll_bdhacb~{q}~{r}~{s}[] = {}; 

      pbdhact~{q}~{r}~{s}() = {};
      pbdhacb~{q}~{r}~{s}() = {};

      ll_bdhac~{q}~{r}~{s}[] = {};

        ll_bdhac~{q}~{r}~{s}[] += Boundary{ Surface{sac~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 1)
          ll_bdhacc0~{q}~{r}~{s}[] = {};
          pbdhacc0~{q}~{r}~{s}() = {};
          ll_bdhacc~{q}~{r}~{s}[] = {};

          ll_bdhacc~{q}~{r}~{s}[] += Boundary{ Surface{tmpac~{r}~{s}[t]}; };
          ll_bdhacc0~{q}~{r}~{s}[] = Abs(ll_bdhacc~{q}~{r}~{s}[t]);
          pbdhacc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhacc~{q}~{r}~{s}[t])}; };
        EndIf
      
        If(t == 3)
          ll_bdhacb~{q}~{r}~{s}[] = Abs(ll_bdhac~{q}~{r}~{s}[t]);
          pbdhacb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhac~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 1)
          ll_bdhac1~{q}~{r}~{s}[] = {};
          pbdhac1~{q}~{r}~{s}() = {};

          ll_bdhac1~{q}~{r}~{s}[] = Abs(ll_bdhac~{q}~{r}~{s}[t]);
          pbdhac1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhac~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhact~{q}~{r}~{s}[] = Abs(ll_bdhac~{q}~{r}~{s}[t]);
          pbdhact~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhac~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 1)
          ll_bdhacc1~{q}~{r}~{s}[] = {};
          pbdhacc1~{q}~{r}~{s}() = {};

          ll_bdhacc1~{q}~{r}~{s}[] = Abs(ll_bdhacc~{q}~{r}~{s}[t]);
          pbdhacc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhacc~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

    //----------------------------------------------------------
    // Face physsurf_bdh_2_2 (Corner 4 - Corner 1) - sbb/tmpbb

      If(r == 2 && s == 1)

      ll_bdhbbt~{q}~{r}~{s}[] = {};
      ll_bdhbbb~{q}~{r}~{s}[] = {}; 

      pbdhbbt~{q}~{r}~{s}() = {};
      pbdhbbb~{q}~{r}~{s}() = {};

      ll_bdhbb~{q}~{r}~{s}[] = {};

        ll_bdhbb~{q}~{r}~{s}[] += Boundary{ Surface{sbb~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 1)
          ll_bdhbbc0~{q}~{r}~{s}[] = {};
          pbdhbbc0~{q}~{r}~{s}() = {};
          ll_bdhbbc~{q}~{r}~{s}[] = {};

          ll_bdhbbc~{q}~{r}~{s}[] += Boundary{ Surface{tmpbb~{r}~{s}[t]}; };
          ll_bdhbbc0~{q}~{r}~{s}[] = Abs(ll_bdhbbc~{q}~{r}~{s}[t]);
          pbdhbbc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbbc~{q}~{r}~{s}[t])}; };
        EndIf
      
        If(t == 3)
          ll_bdhbbb~{q}~{r}~{s}[] = Abs(ll_bdhbb~{q}~{r}~{s}[t]);
          pbdhbbb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbb~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 1)
          ll_bdhbb1~{q}~{r}~{s}[] = {};
          pbdhbb1~{q}~{r}~{s}() = {};

          ll_bdhbb1~{q}~{r}~{s}[] = Abs(ll_bdhbb~{q}~{r}~{s}[t]);
          pbdhbb1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbb~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhbbt~{q}~{r}~{s}[] = Abs(ll_bdhbb~{q}~{r}~{s}[t]);
          pbdhbbt~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbb~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 1)
          ll_bdhbbc1~{q}~{r}~{s}[] = {};
          pbdhbbc1~{q}~{r}~{s}() = {};

          ll_bdhbbc1~{q}~{r}~{s}[] = Abs(ll_bdhbbc~{q}~{r}~{s}[t]);
          pbdhbbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbbc~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

    //----------------------------------------------------------
    // Face physsurf_bdh_2_2 (Corner 4 - Corner 1) - sbc/tmpbc

      If(r == 2 && s == 1)

      ll_bdhbct~{q}~{r}~{s}[] = {};
      ll_bdhbcb~{q}~{r}~{s}[] = {}; 

      pbdhbct~{q}~{r}~{s}() = {};
      pbdhbcb~{q}~{r}~{s}() = {};

      ll_bdhbc~{q}~{r}~{s}[] = {};

        ll_bdhbc~{q}~{r}~{s}[] += Boundary{ Surface{sbc~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 1)
          ll_bdhbcc0~{q}~{r}~{s}[] = {};
          pbdhbcc0~{q}~{r}~{s}() = {};
          ll_bdhbcc~{q}~{r}~{s}[] = {};

          ll_bdhbcc~{q}~{r}~{s}[] += Boundary{ Surface{tmpbc~{r}~{s}[t]}; };
          ll_bdhbcc0~{q}~{r}~{s}[] = Abs(ll_bdhbcc~{q}~{r}~{s}[t]);
          pbdhbcc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbcc~{q}~{r}~{s}[t])}; };
        EndIf
      
        If(t == 3)
          ll_bdhbcb~{q}~{r}~{s}[] = Abs(ll_bdhbc~{q}~{r}~{s}[t]);
          pbdhbcb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 1)
          ll_bdhbc1~{q}~{r}~{s}[] = {};
          pbdhbc1~{q}~{r}~{s}() = {};

          ll_bdhbc1~{q}~{r}~{s}[] = Abs(ll_bdhbc~{q}~{r}~{s}[t]);
          pbdhbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhbct~{q}~{r}~{s}[] = Abs(ll_bdhbc~{q}~{r}~{s}[t]);
          pbdhbct~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 1)
          ll_bdhbcc1~{q}~{r}~{s}[] = {};
          pbdhbcc1~{q}~{r}~{s}() = {};

          ll_bdhbcc1~{q}~{r}~{s}[] = Abs(ll_bdhbcc~{q}~{r}~{s}[t]);
          pbdhbcc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbcc~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

/// sab_2_2[], sac_2_2[], sbb_2_2[], sbc_2_2[]

    //----------------------------------------------------------
    // Face physsurf_bdh_1_2 (Corner 2 - Corner 3) - sab/tmpab

      If(r == 2 && s == 2)

      ll_bdhabt~{q}~{r}~{s}[] = {};
      ll_bdhabb~{q}~{r}~{s}[] = {};
      pbdhabt~{q}~{r}~{s}() = {};
      pbdhabb~{q}~{r}~{s}() = {};

      ll_bdhab~{q}~{r}~{s}[] = {};

        ll_bdhab~{q}~{r}~{s}[] += Boundary{ Surface{sab~{r}~{s}[2]}; };

      For t In {0:3}
    
        If(t == 0 && s == 2)
          ll_bdhabc0~{q}~{r}~{s}[] = {};
          pbdhabc0~{q}~{r}~{s}() = {};
          ll_bdhabc~{q}~{r}~{s}[] = {};

          ll_bdhabc~{q}~{r}~{s}[] += Boundary{ Surface{tmpab~{r}~{s}[t]}; };
          ll_bdhabc0~{q}~{r}~{s}[] = Abs(ll_bdhabc~{q}~{r}~{s}[t]);
          pbdhabc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhabc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)
          ll_bdhabb~{q}~{r}~{s}[] = Abs(ll_bdhab~{q}~{r}~{s}[t]);
          pbdhabb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhab~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 2)
          ll_bdhab1~{q}~{r}~{s}[] = {};
          pbdhab1~{q}~{r}~{s}() = {};

          ll_bdhab1~{q}~{r}~{s}[] = Abs(ll_bdhab~{q}~{r}~{s}[t]);
          pbdhab1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhab~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)  
          ll_bdhabt~{q}~{r}~{s}[] = Abs(ll_bdhab~{q}~{r}~{s}[t]);
          pbdhabt~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhab~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 2)  
          ll_bdhabc1~{q}~{r}~{s}[] = {};
          pbdhabc1~{q}~{r}~{s}() = {};

          ll_bdhabc1~{q}~{r}~{s}[] = Abs(ll_bdhabc~{q}~{r}~{s}[t]);
          pbdhabc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhabc~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

    //----------------------------------------------------------
    // Face physsurf_bdh_1_2 (Corner 2 - Corner 3) - sac/tmpac

      If(r == 2 && s == 2)

      ll_bdhact~{q}~{r}~{s}[] = {};
      ll_bdhacb~{q}~{r}~{s}[] = {};
      pbdhact~{q}~{r}~{s}() = {};
      pbdhacb~{q}~{r}~{s}() = {};

      ll_bdhac~{q}~{r}~{s}[] = {};

        ll_bdhac~{q}~{r}~{s}[] += Boundary{ Surface{sac~{r}~{s}[2]}; };

      For t In {0:3}
    
        If(t == 0 && s == 2)
          ll_bdhacc0~{q}~{r}~{s}[] = {};
          pbdhacc0~{q}~{r}~{s}() = {};
          ll_bdhacc~{q}~{r}~{s}[] = {};

          ll_bdhacc~{q}~{r}~{s}[] += Boundary{ Surface{tmpac~{r}~{s}[t]}; };
          ll_bdhacc0~{q}~{r}~{s}[] = Abs(ll_bdhacc~{q}~{r}~{s}[t]);
          pbdhacc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhacc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)
          ll_bdhacb~{q}~{r}~{s}[] = Abs(ll_bdhac~{q}~{r}~{s}[t]);
          pbdhacb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhac~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 2)
          ll_bdhac1~{q}~{r}~{s}[] = {};
          pbdhac1~{q}~{r}~{s}() = {};

          ll_bdhac1~{q}~{r}~{s}[] = Abs(ll_bdhac~{q}~{r}~{s}[t]);
          pbdhac1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhac~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)  
          ll_bdhact~{q}~{r}~{s}[] = Abs(ll_bdhac~{q}~{r}~{s}[t]);
          pbdhact~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhac~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 2)  
          ll_bdhacc1~{q}~{r}~{s}[] = {};
          pbdhacc1~{q}~{r}~{s}() = {};

          ll_bdhacc1~{q}~{r}~{s}[] = Abs(ll_bdhacc~{q}~{r}~{s}[t]);
          pbdhacc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhacc~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

    //----------------------------------------------------------
    // Face physsurf_bdh_2_2 (Corner 4 - Corner 1) - sbb/tmpbb

      If(r == 2 && s == 2)

      ll_bdhbbt~{q}~{r}~{s}[] = {};
      ll_bdhbbb~{q}~{r}~{s}[] = {};
      pbdhbbt~{q}~{r}~{s}() = {};
      pbdhbbb~{q}~{r}~{s}() = {};

      ll_bdhbb~{q}~{r}~{s}[] = {};

        ll_bdhbb~{q}~{r}~{s}[] += Boundary{ Surface{sbb~{r}~{s}[2]}; };

      For t In {0:3}
    
        If(t == 0 && s == 2)
          ll_bdhbbc0~{q}~{r}~{s}[] = {};
          pbdhbbc0~{q}~{r}~{s}() = {};
          ll_bdhbbc~{q}~{r}~{s}[] = {};

          ll_bdhbbc~{q}~{r}~{s}[] += Boundary{ Surface{tmpbb~{r}~{s}[t]}; };
          ll_bdhbbc0~{q}~{r}~{s}[] = Abs(ll_bdhbbc~{q}~{r}~{s}[t]);
          pbdhbbc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbbc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)
          ll_bdhbbb~{q}~{r}~{s}[] = Abs(ll_bdhbb~{q}~{r}~{s}[t]);
          pbdhbbb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbb~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 2)
          ll_bdhbb1~{q}~{r}~{s}[] = {};
          pbdhbb1~{q}~{r}~{s}() = {};

          ll_bdhbb1~{q}~{r}~{s}[] = Abs(ll_bdhbb~{q}~{r}~{s}[t]);
          pbdhbb1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbb~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)  
          ll_bdhbbt~{q}~{r}~{s}[] = Abs(ll_bdhbb~{q}~{r}~{s}[t]);
          pbdhbbt~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbb~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 2)  
          ll_bdhbbc1~{q}~{r}~{s}[] = {};
          pbdhbbc1~{q}~{r}~{s}() = {};

          ll_bdhbbc1~{q}~{r}~{s}[] = Abs(ll_bdhbbc~{q}~{r}~{s}[t]);
          pbdhbbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbbc~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

    //----------------------------------------------------------
    // Face physsurf_bdh_2_2 (Corner 4 - Corner 1) - sbc/tmpbc

      If(r == 2 && s == 2)

      ll_bdhbct~{q}~{r}~{s}[] = {};
      ll_bdhbcb~{q}~{r}~{s}[] = {};
      pbdhbct~{q}~{r}~{s}() = {};
      pbdhbcb~{q}~{r}~{s}() = {};

      ll_bdhbc~{q}~{r}~{s}[] = {};

        ll_bdhbc~{q}~{r}~{s}[] += Boundary{ Surface{sbc~{r}~{s}[2]}; };

      For t In {0:3}
    
        If(t == 0 && s == 2)
          ll_bdhbcc0~{q}~{r}~{s}[] = {};
          pbdhbcc0~{q}~{r}~{s}() = {};
          ll_bdhbcc~{q}~{r}~{s}[] = {};

          ll_bdhbcc~{q}~{r}~{s}[] += Boundary{ Surface{tmpbc~{r}~{s}[t]}; };
          ll_bdhbcc0~{q}~{r}~{s}[] = Abs(ll_bdhbcc~{q}~{r}~{s}[t]);
          pbdhbcc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbcc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)
          ll_bdhbcb~{q}~{r}~{s}[] = Abs(ll_bdhbc~{q}~{r}~{s}[t]);
          pbdhbcb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 2)
          ll_bdhbc1~{q}~{r}~{s}[] = {};
          pbdhbc1~{q}~{r}~{s}() = {};

          ll_bdhbc1~{q}~{r}~{s}[] = Abs(ll_bdhbc~{q}~{r}~{s}[t]);
          pbdhbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)  
          ll_bdhbct~{q}~{r}~{s}[] = Abs(ll_bdhbc~{q}~{r}~{s}[t]);
          pbdhbct~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 2)  
          ll_bdhbcc1~{q}~{r}~{s}[] = {};
          pbdhbcc1~{q}~{r}~{s}() = {};

          ll_bdhbcc1~{q}~{r}~{s}[] = Abs(ll_bdhbcc~{q}~{r}~{s}[t]);
          pbdhbcc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbcc~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

    EndFor
  EndFor
EndFor


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// GEOMETRY MODULE

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// EXTERIOR SHELL STRUCTURE

//----------------------------------------------------------
// Corner 1

ptl1c1 = newp; Point(ptl1c1) = {geofx*0+geofx*m1*a, geofy*0+geofy*n1*a, tlgC, lcCopperPlateBdry};       // level 1 - bottom lower layer - bottom lower copper electrode
ptl2c1 = newp; Point(ptl2c1) = {geofx*0+geofx*m1*a, geofy*0+geofy*n1*a, tltC, lcCopperPlateBdry};       // level 2 - bottom upper layer
// ptl3c1 = newp; Point(ptl3c1) = {geofx*0+geofx*m1*a, geofy*0+geofy*n1*a, tubC, lcCopperPlateBdry};    // level 3 - top lower layer
// ptl4c1 = newp; Point(ptl4c1) = {geofx*0+geofx*m1*a, geofy*0+geofy*n1*a, tutC, lcCopperPlateBdry};    // level 4 - top upper layer - top upper copper electrode

//----------------------------------------------------------
// Corner 2

ptl1c2 = newp; Point(ptl1c2) = {geofx*a+geofx*m1*a+2*x1SPWindFac, geofy*0+geofy*n1*a, tlgC, lcCopperPlateBdry};       // level 1 - bottom lower layer - bottom lower copper electrode
ptl2c2 = newp; Point(ptl2c2) = {geofx*a+geofx*m1*a+2*x1SPWindFac, geofy*0+geofy*n1*a, tltC, lcCopperPlateBdry};       // level 2 - bottom upper layer
// ptl3c2 = newp; Point(ptl3c2) = {geofx*a+geofx*m1*a+2*x1SPWindFac, geofy*0+geofy*n1*a, tubC, lcCopperPlateBdry};    // level 3 - top lower layer
// ptl4c2 = newp; Point(ptl4c2) = {geofx*a+geofx*m1*a+2*x1SPWindFac, geofy*0+geofy*n1*a, tutC, lcCopperPlateBdry};    // level 4 - top upper layer - top upper copper electrode

//----------------------------------------------------------
// Corner 3

ptl1c3 = newp; Point(ptl1c3) = {geofx*a+geofx*m1*a+2*x2SPWindFac, geofy*a+geofy*n1*a+2*y1SPWindFac, tlgC, lcCopperPlateBdry};       // level 1 - bottom lower layer - bottom lower copper electrode
ptl2c3 = newp; Point(ptl2c3) = {geofx*a+geofx*m1*a+2*x2SPWindFac, geofy*a+geofy*n1*a+2*y1SPWindFac, tltC, lcCopperPlateBdry};       // level 2 - bottom upper layer
// ptl3c3 = newp; Point(ptl3c3) = {geofx*a+geofx*m1*a+2*x2SPWindFac, geofy*a+geofy*n1*a+2*y1SPWindFac, tubC, lcCopperPlateBdry};    // level 3 - top lower layer
// ptl4c3 = newp; Point(ptl4c3) = {geofx*a+geofx*m1*a+2*x2SPWindFac, geofy*a+geofy*n1*a+2*y1SPWindFac, tutC, lcCopperPlateBdry};    // level 4 - top upper layer - top upper copper electrode

//----------------------------------------------------------
// Corner 4

ptl1c4 = newp; Point(ptl1c4) = {geofx*0+geofx*m1*a, geofy*a+geofy*n1*a+2*y2SPWindFac, tlgC, lcCopperPlateBdry};       // level 1 - bottom lower layer - bottom lower copper electrode
ptl2c4 = newp; Point(ptl2c4) = {geofx*0+geofx*m1*a, geofy*a+geofy*n1*a+2*y2SPWindFac, tltC, lcCopperPlateBdry};       // level 2 - bottom upper layer
// ptl3c4 = newp; Point(ptl3c4) = {geofx*0+geofx*m1*a, geofy*a+geofy*n1*a+2*y2SPWindFac, tubC, lcCopperPlateBdry};    // level 3 - top lower layer
// ptl4c4 = newp; Point(ptl4c4) = {geofx*0+geofx*m1*a, geofy*a+geofy*n1*a+2*y2SPWindFac, tutC, lcCopperPlateBdry};    // level 4 - top upper layer - top upper copper electrode

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// COPPER ELECTRODES

//----------------------------------------------------------
// Points between two half pillars on upper unitCellCurWire

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

// lcptub1a = newl; Line(lcptub1a) = {ptl4c1,ptl4c2};
// Transfinite Line { lcptub1a } = lcptub1a;
// lcptub2a = newl; Line(lcptub2a) = {ptl4c2,ptl4c3};
// Transfinite Line { lcptub2a } = lcptub2a;
// lcptub3a = newl; Line(lcptub3a) = {ptl4c3,ptl4c4};
// Transfinite Line { lcptub3a } = lcptub3a;
// lcptub4a = newl; Line(lcptub4a) = {ptl4c4,ptl4c1};
// Transfinite Line { lcptub4a } = lcptub4a;

//----------------------------------------------------------
// Lower boundary - level 3

// lcptlb5a = newl; Line(lcptlb5a) = {ptl3c1,ptl3c2};
// Transfinite Line { lcptlb5a } = lcptlb5a;
// lcptlb6a = newl; Line(lcptlb6a) = {ptl3c2,ptl3c3};
// Transfinite Line { lcptlb6a } = lcptlb6a;
// lcptlb7a = newl; Line(lcptlb7a) = {ptl3c3,ptl3c4};
// Transfinite Line { lcptlb7a } = lcptlb7a;
// lcptlb8a = newl; Line(lcptlb8a) = {ptl3c4,ptl3c1};
// Transfinite Line { lcptlb8a } = lcptlb8a;

//----------------------------------------------------------
// Connect the upper and lower points with lines to form the plate

// lcptib9 = newl; Line(lcptib9) = {ptl4c1, ptl3c1};
// Transfinite Line { lcptib9 } = lcptib9;
// lcptib10 = newl; Line(lcptib10) = {ptl4c2, ptl3c2};
// Transfinite Line { lcptib10 } = lcptib10;
// lcptib11 = newl; Line(lcptib11) = {ptl4c3, ptl3c3};
// Transfinite Line { lcptib11 } = lcptib11;
// lcptib12 = newl; Line(lcptib12) = {ptl4c4, ptl3c4};
// Transfinite Line { lcptib12 } = lcptib12;

//----------------------------------------------------------
// Points between two half pillars on lower LEM

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

// lcorner1 = newl; Line(lcorner1) = {ptl2c1, ptl3c1};
// Transfinite Line { lcorner1 } = lcorner1;
// lcorner2 = newl; Line(lcorner2) = {ptl2c2, ptl3c2};
// Transfinite Line { lcorner2 } = lcorner2;
// lcorner3 = newl; Line(lcorner3) = {ptl2c3, ptl3c3};
// Transfinite Line { lcorner3 } = lcorner3;
// lcorner4 = newl; Line(lcorner4) = {ptl2c4, ptl3c4};
// Transfinite Line { lcorner4 } = lcorner4;

//----------------------------------------------------------
// Lines splitting the LEM in half

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
// pexet2 = newp; Point(pexet2) = {geofx*a/2+geofx*m1*a, geofy*0+geofy*n1*a, tutC+lE,lcExtElectrodeBdry};
pexet3 = newp; Point(pexet3) = {geofx*a+geofx*m1*a+2*x1SPWindFac, geofy*0+geofy*n1*a, tutC+lE,lcExtElectrodeBdry};
pexet4 = newp; Point(pexet4) = {geofx*a+geofx*m1*a+2*x2SPWindFac, geofy*a+geofy*n1*a+2*y1SPWindFac, tutC+lE,lcExtElectrodeBdry};
// pexet5 = newp; Point(pexet5) = {geofx*a/2+geofx*m1*a, geofy*a+geofy*n1*a, tutC+lE,lcExtElectrodeBdry};
pexet6 = newp; Point(pexet6) = {geofx*0+geofx*m1*a, geofy*a+geofy*n1*a+2*y2SPWindFac, tutC+lE,lcExtElectrodeBdry};

//----------------------------------------------------------
// Top electrode lines

lexet1 = newl; Line(lexet1) = {pexet1, pexet3};
// Transfinite Line { lexet1 } = lexet1;
// lexet2 = newl; Line(lexet2) = {pexet2, pexet3};
// Transfinite Line { lexet2 } = lexet2;
lexet3 = newl; Line(lexet3) = {pexet3, pexet4};
// Transfinite Line { lexet3 } = lexet3;
lexet4 = newl; Line(lexet4) = {pexet4, pexet6};
// Transfinite Line { lexet4 } = lexet4;
// lexet5 = newl; Line(lexet5) = {pexet5, pexet6};
// Transfinite Line { lexet5 } = lexet5;
lexet6 = newl; Line(lexet6) = {pexet6, pexet1};
// Transfinite Line { lexet6 } = lexet6;

//----------------------------------------------------------
// Upper electrode boundary - transfinite

// lexett1 = newl; Line(lexett1) = {pexet1, pexet3};
// Transfinite Line { lexett1 } = lexett1; 
// lexett2 = newl; Line(lexett2) = {pexet3, pexet4};
// Transfinite Line { lexett2 } = lexett2;
// lexett3 = newl; Line(lexett3) = {pexet4, pexet6};
// Transfinite Line { lexett3 } = lexett3;
// lexett4 = newl; Line(lexett4) = {pexet6, pexet1};
// Transfinite Line { lexett4 } = lexett4;

//----------------------------------------------------------
// Connect the top electrode to the LEM.

// lexetc1 = newl; Line(lexetc1) = {pexet1, ptl2c1}; // pc4_1
// Transfinite Line { lexetc1 } = lexetc1;
// lexetc2 = newl; Line(lexetc2) = {pexet2, ptmc1};
// Transfinite Line { lexetc2 } = lexetc2;
// lexetc3 = newl; Line(lexetc3) = {pexet3, ptl2c2}; // pc4_2
// Transfinite Line { lexetc3 } = lexetc3;
// lexetc4 = newl; Line(lexetc4) = {pexet4, ptl2c3}; // pc4_3
// Transfinite Line { lexetc4 } = lexetc4;
// lexetc5 = newl; Line(lexetc5) = {pexet5, ptmc3};
// Transfinite Line { lexetc5 } = lexetc5;
// lexetc6 = newl; Line(lexetc6) = {pexet6, ptl2c4}; // pc4_4
// Transfinite Line { lexetc6 } = lexetc6;

//----------------------------------------------------------
// Bottom electrode

// pexeb1 = newp; Point(pexeb1) = {geofx*0+geofx*m1*a, geofy*0+geofy*n1*a, meshLevel * mm,lcExtElectrodeBdry};
// pexeb2 = newp; Point(pexeb2) = {geofx*a/2+geofx*m1*a, geofy*0+geofy*n1*a, meshLevel * mm,lcExtElectrodeBdry};
// pexeb3 = newp; Point(pexeb3) = {geofx*a+geofx*m1*a, geofy*0+geofy*n1*a, meshLevel * mm,lcExtElectrodeBdry};
// pexeb4 = newp; Point(pexeb4) = {geofx*a+geofx*m1*a, geofy*a+geofy*n1*a, meshLevel * mm,lcExtElectrodeBdry};
// pexeb5 = newp; Point(pexeb5) = {geofx*a/2+geofx*m1*a, geofy*a+geofy*n1*a, meshLevel * mm,lcExtElectrodeBdry};
// pexeb6 = newp; Point(pexeb6) = {geofx*0+geofx*m1*a, geofy*a+geofy*n1*a, meshLevel * mm,lcExtElectrodeBdry};

//----------------------------------------------------------
// Bottom wire level boundary - transfinite

// lexebt1 = newl; Line(lexebt1) = {pexeb1, pexeb3};
// Transfinite Line { lexebt1 } = lexebt1;
// lexebt2 = newl; Line(lexebt2) = {pexeb3, pexeb4};
// Transfinite Line { lexebt2 } = lexebt2;
// lexebt3 = newl; Line(lexebt3) = {pexeb4, pexeb6};
// Transfinite Line { lexebt3 } = lexebt3;
// lexebt4 = newl; Line(lexebt4) = {pexeb6, pexeb1};
// Transfinite Line { lexebt4 } = lexebt4;

//----------------------------------------------------------
// Copper plate surfaces

// llcpUpBorder1 = newreg; Line Loop(llcpUpBorder1) = {lcptlb5a, -lcptib10, -lcptub1a, lcptib9}; // lcptlb5b, -lcptub1b
// pscpUpBorder1 = newreg; Plane Surface(pscpUpBorder1) = {llcpUpBorder1};
// Transfinite Surface { pscpUpBorder1 };
// Recombine Surface { pscpUpBorder1 };

// llcpUpBorder2 = newreg; Line Loop(llcpUpBorder2) = {lcptlb6a, -lcptib11, -lcptub2a, lcptib10}; // lcptlb6b, -lcptub2b
// pscpUpBorder2 = newreg; Plane Surface(pscpUpBorder2) = {llcpUpBorder2};
// Transfinite Surface { pscpUpBorder2 };
// Recombine Surface { pscpUpBorder2 };

// llcpUpBorder3 = newreg; Line Loop(llcpUpBorder3) = {lcptlb7a, -lcptib12, -lcptub3a, lcptib11}; // lcptlb7b, -lcptub3b
// pscpUpBorder3 = newreg; Plane Surface(pscpUpBorder3) = {llcpUpBorder3};
// Transfinite Surface { pscpUpBorder3 };
// Recombine Surface { pscpUpBorder3 };

// llcpUpBorder4 = newreg; Line Loop(llcpUpBorder4) = {lcptlb8a, -lcptib9, -lcptub4a, lcptib12}; // lcptlb8b, -lcptub4b
// pscpUpBorder4 = newreg; Plane Surface(pscpUpBorder4) = {llcpUpBorder4};
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

// llSideGas1a = newreg; Line Loop(llSideGas1a) = {lcptlb5a, -lcorner2, -lcpbub1a, lcorner1}; // lmid1_2,
// psSideGas1a = newreg; Plane Surface(psSideGas1a) = {llSideGas1a};
// Transfinite Surface { psSideGas1a };
// Recombine Surface { psSideGas1a };

// llSideGas2a = newreg; Line Loop(llSideGas2a) = {lcptlb6a, -lcorner3, -lcpbub2a, lcorner2}; // lmid2_2,
// psSideGas2a = newreg; Plane Surface(psSideGas2a) = {llSideGas2a};
// Transfinite Surface { psSideGas2a };
// Recombine Surface { psSideGas2a };

// llSideGas3a = newreg; Line Loop(llSideGas3a) = {lcptlb7a, -lcorner4, -lcpbub3a, lcorner3}; // lmid3_2,
// psSideGas3a = newreg; Plane Surface(psSideGas3a) = {llSideGas3a};
// Transfinite Surface { psSideGas3a };
// Recombine Surface { psSideGas3a };

// llSideGas4a = newreg; Line Loop(llSideGas4a) = {lcptlb8a, -lcorner1, -lcpbub4a, lcorner4}; // lmid4_2,
// psSideGas4a = newreg; Plane Surface(psSideGas4a) = {llSideGas4a};
// Transfinite Surface { psSideGas4a };
// Recombine Surface { psSideGas4a };

// llSideGas1b = newreg; Line Loop(llSideGas1b) = {lcptlb5b, lcorner2, -lcpblb5b, lcorner1}; // -lmid1_2
// psSideGas1b = newreg; Plane Surface(psSideGas1b) = {llSideGas1b};
// llSideGas2b = newreg; Line Loop(llSideGas2b) = {lcptlb6b, lcorner3, -lcpblb6b, lcorner2}; // -lmid2_2
// psSideGas2b = newreg; Plane Surface(psSideGas2b) = {llSideGas2b};
// llSideGas3b = newreg; Line Loop(llSideGas3b) = {lcptlb7b, lcorner4, -lcpblb7b, lcorner3}; // -lmid3_2
// psSideGas3b = newreg; Plane Surface(psSideGas3b) = {llSideGas3b};
// llSideGas4b = newreg; Line Loop(llSideGas4b) = {lcptlb8b, lcorner1, -lcpblb8b, lcorner4}; // -lmid4_2
// psSideGas4b = newreg; Plane Surface(psSideGas4b) = {llSideGas4b};

//----------------------------------------------------------
// Bounding and intersecting surfaces


//----------------------------------------------------------
// Face physsurfBdh_1_1 (Corner 1 - Corner 2)

l1bdh_1_1_bsurft1 = newl; Line(l1bdh_1_1_bsurft1) = {pexet3, pbdhact_1_2_2[1]};                    // top line
l2bdh_1_1_bsurft1 = newl; Line(l2bdh_1_1_bsurft1) = {pexet1, p1b1_3};                              // top circle
l1bdh_1_1_bsurfb1 = newl; Line(l1bdh_1_1_bsurfb1) = {ptl2c2, pbdhbcb_1_1_2[1]};                     // bottom line
l2bdh_1_1_bsurfb1 = newl; Line(l2bdh_1_1_bsurfb1) = {ptl2c1, p2b1_1};                              // bottom circle

llbdh_1_1_bsurf1t = newreg; Line Loop(llbdh_1_1_bsurf1t) = { lexet1, l1bdh_1_1_bsurft1, ll_bdhacc0_1_2_2[0], ll_bdhacc1_1_2_2[0], -ll_bdhbct_1_1_2[0], -ll_bdhbbt_1_1_2[0], -ll_bdhbct_1_1_1[0], -ll_bdhbbt_1_1_1[0], -l2bdh_1_1_bsurft1 };
llbdh_1_1_bsurf1b = newreg; Line Loop(llbdh_1_1_bsurf1b) = { lcpbub1a, l1bdh_1_1_bsurfb1, -ll_bdhbcb_1_1_2[0], -ll_bdhbbb_1_1_2[0], -ll_bdhbcb_1_1_1[0], -ll_bdhbbb_1_1_1[0], -l2b1_1, -l2b1_2, -l2bdh_1_1_bsurfb1 };

psbdh_1_1_bsurf1t = newreg; Plane Surface(psbdh_1_1_bsurf1t) = { llbdh_1_1_bsurf1t };
psbdh_1_1_bsurf1b = newreg; Plane Surface(psbdh_1_1_bsurf1b) = { llbdh_1_1_bsurf1b };


//----------------------------------------------------------
// Face physsurfBdh_1_2 (Corner 2 - Corner 3)

l1bdh_1_2_bsurft1 = newl; Line(l1bdh_1_2_bsurft1) = {pexet4, p1a1_3};                              // top line
l1bdh_1_2_bsurfb1 = newl; Line(l1bdh_1_2_bsurfb1) = {ptl2c3, p2a1_1};                              // bottom line

llbdh_1_2_bsurf3t = newreg; Line Loop(llbdh_1_2_bsurf3t) = { lexet3, l1bdh_1_2_bsurft1, l1a1_2, l1a1_3, ll_bdhabt_1_2_1[0], ll_bdhact_1_2_1[0], ll_bdhabt_1_2_2[0], ll_bdhact_1_2_2[0], -l1bdh_1_1_bsurft1 };
llbdh_1_2_bsurf3b = newreg; Line Loop(llbdh_1_2_bsurf3b) = { lcpbub2a, l1bdh_1_2_bsurfb1, ll_bdhabb_1_2_1[0], ll_bdhacb_1_2_1[0], ll_bdhabb_1_2_2[0], ll_bdhacb_1_2_2[0], -ll_bdhbcc1_1_1_2[0], -ll_bdhbcc0_1_1_2[0], -l1bdh_1_1_bsurfb1 };

psbdh_1_2_bsurf3t = newreg; Plane Surface(psbdh_1_2_bsurf3t) = { llbdh_1_2_bsurf3t };
psbdh_1_2_bsurf3b = newreg; Plane Surface(psbdh_1_2_bsurf3b) = { llbdh_1_2_bsurf3b };


//----------------------------------------------------------
// Face physsurfBdh_2_1 (Corner 3 - Corner 4)

l1bdh_2_1_bsurft4 = newl; Line(l1bdh_2_1_bsurft4) = {pexet6, pbdhbcb_1_2_2[1]};                     // top line, top circle
l1bdh_2_1_bsurfb4 = newl; Line(l1bdh_2_1_bsurfb4) = {ptl2c4, pbdhact_1_1_2[1]};                     // bottom line, bottom circle


llbdh_2_1_bsurf4t = newreg; Line Loop(llbdh_2_1_bsurf4t) = { lexet4, l1bdh_2_1_bsurft4, -ll_bdhbcc1_1_2_2[0], -ll_bdhbcc0_1_2_2[0], -ll_bdhacb_1_1_2[0], -ll_bdhabb_1_1_2[0], -ll_bdhacb_1_1_1[0], -ll_bdhabb_1_1_1[0], -l1bdh_1_2_bsurft1 };
llbdh_2_1_bsurf4b = newreg; Line Loop(llbdh_2_1_bsurf4b) = { lcpbub3a, l1bdh_2_1_bsurfb4, -ll_bdhact_1_1_2[0], -ll_bdhabt_1_1_2[0], -ll_bdhact_1_1_1[0], -ll_bdhabt_1_1_1[0], l2a1_2, l2a1_3, -l1bdh_1_2_bsurfb1 };

psbdh_2_1_bsurf4t = newreg; Plane Surface(psbdh_2_1_bsurf4t) = { llbdh_2_1_bsurf4t };
psbdh_2_1_bsurf4b = newreg; Plane Surface(psbdh_2_1_bsurf4b) = { llbdh_2_1_bsurf4b };


//----------------------------------------------------------
// Face physsurfBdh_2_2 (Corner 4 - Corner 1)

llbdh_2_2_bsurf6t = newreg; Line Loop(llbdh_2_2_bsurf6t) = { lexet6, l2bdh_1_1_bsurft1, -l1b1_1, -l1b1_2, ll_bdhbbb_1_2_1[0], ll_bdhbcb_1_2_1[0], ll_bdhbbb_1_2_2[0], ll_bdhbcb_1_2_2[0], -l1bdh_2_1_bsurft4 };
llbdh_2_2_bsurf6b = newreg; Line Loop(llbdh_2_2_bsurf6b) = { lcpbub4a, l2bdh_1_1_bsurfb1, ll_bdhbbt_1_2_1[0], ll_bdhbct_1_2_1[0], ll_bdhbbt_1_2_2[0], ll_bdhbct_1_2_2[0], ll_bdhacc0_1_1_2[0], ll_bdhacc1_1_1_2[0], -l1bdh_2_1_bsurfb4 };

psbdh_2_2_bsurf6t = newreg; Plane Surface(psbdh_2_2_bsurf6t) = { llbdh_2_2_bsurf6t };
psbdh_2_2_bsurf6b = newreg; Plane Surface(psbdh_2_2_bsurf6b) = { llbdh_2_2_bsurf6b };


//----------------------------------------------------------
// Bounding surfaces

llBsurf7 = newreg; Line Loop ( llBsurf7 ) = { lexet1, lexet3, lexet4, lexet6 }; // lexet2, lexet5,
psBsurf7 = newreg; Plane Surface ( psBsurf7 ) = { llBsurf7 };
// Transfinite Surface { psBsurf7 };
// Recombine Surface { psBsurf7 };

llTopCp1a2 = newreg; Line Loop ( llTopCp1a2 ) = { lcpbub1a, lcpbub2a, lcpbub3a, lcpbub4a }; // lcpbub1b, lcpbub2b, lcpbub3b, lcpbub4b

psTopCp2a = news; Plane Surface ( news ) = { llTopCp1a2 }; // llTopCp2a
surfTopCp[] += { psTopCp2a };
// Transfinite Surface { surfTopCp[] };
// Recombine Surface { surfTopCp[] };

// psBottomDielectric1a1 = news; Plane Surface ( news ) = { llBottomCp2a };
// surfBottomDielectric[] = { psBottomDielectric1a1 };
// Transfinite Surface { surfBottomDielectric[] };
// Recombine Surface { surfBottomDielectric[] };

llBottomCp1a2 = newreg; Line Loop ( llBottomCp1a2 ) = { lcpblb5a, lcpblb6a, lcpblb7a, lcpblb8a }; // lcpblb5b, lcpblb6b, lcpblb7b, lcpblb8b
psBottomCp2a = news; Plane Surface ( news ) = { llBottomCp1a2 }; // llBottomCp2a
surfBottomCp[] += { psBottomCp2a };
// Transfinite Surface { surfBottomCp[] };
// Recombine Surface { surfBottomCp[] };


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// FINAL DEFINITIONS (SURFACES / VOLUMES)


//------------------------------------------------------------------------------------------
/// SURFACE LOOPS


//----------------------------------------------------------
// Wire Gas Interior Surface Loop - interior wire gas surface loop

sl_wire_gas_total_surface = newreg; Surface Loop(sl_wire_gas_total_surface) = { psBsurf7, psbdh_1_1_bsurf1t, psbdh_1_1_bsurf1b, psbdh_1_2_bsurf3t, psbdh_1_2_bsurf3b, psbdh_2_1_bsurf4t, psbdh_2_1_bsurf4b, psbdh_2_2_bsurf6t, psbdh_2_2_bsurf6b, -surfTopCp[], -sbb_1_1[0], -sbb_1_1[1], -sbc_1_1[0], -sbc_1_1[1], -sbb_1_2[0], -sbb_1_2[1], -sbc_1_2[0], -sbc_1_2[1], -sab_1_1[0], -sab_1_1[1], -sac_1_1[0], -sac_1_1[1], -sab_1_2[0], -sab_1_2[1], -sac_1_2[0], -sac_1_2[1], -sab_2_1[0], -sab_2_1[1], -sac_2_1[0], -sac_2_1[1], -sab_2_2[0], -sab_2_2[1], -sac_2_2[0], -sac_2_2[1], -sbb_2_1[0], -sbb_2_1[1], -sbc_2_1[0], -sbc_2_1[1], -sbb_2_2[0], -sbb_2_2[1], -sbc_2_2[0], -sbc_2_2[1] };
// -surfTopGas1[], -surfTopGas2[], -surfTopGas3[], -surfTopGas4[], -surfTopGas5[], -surf_cyl_dielectric1[], -surf_cyl_dielectric2[], -surf_cyl_dielectric3[], -surf_cyl_dielectric4[],
// pscpUpBorder1, pscpUpBorder2, pscpUpBorder3, pscpUpBorder4,
// psSideGas1a, psSideGas2a, psSideGas3a, psSideGas4a,
total_sl_wire_gas_total_surface[] += sl_wire_gas_total_surface;

//----------------------------------------------------------
// Gas Exterior Surface Loop - exterior gas surface loop

// total_sl_gas_exterior_surface[0] = newreg; Surface Loop(total_sl_gas_exterior_surface[0]) = { psSideGas1b, psSideGas2b, psSideGas3b, psSideGas4b, psBsurf2, psBsurf5 };

//----------------------------------------------------------
// Dielectric Surface Loop - dielectric surface loop

// sl_dielectric = newreg; Surface Loop(sl_dielectric) = { surfTopGas1[], surfTopGas2[], surfTopGas3[], surfTopGas4[], surfTopGas5[], surf_cyl_dielectric1[], surf_cyl_dielectric2[], surf_cyl_dielectric3[], surf_cyl_dielectric4[], -surf_lower_cp1[], 
// -surf_lower_cp2[], -surf_lower_cp3[], -surf_lower_cp4[], surfBottomDielectric[] };
// total_sl_dielectric[] += sl_dielectric;

//----------------------------------------------------------
// Wire Volume Surface Loop - wire electrode

// sl_wire = newreg; Surface Loop(sl_wire) = { -sbaf_1_1_1[0], sbb_1_1[], sbc_1_1[], sbb_1_2[], sbc_1_2[], sbcf_1_1_2[0], -saaf_1_1_1[0], sab_1_1[], sac_1_1[], sab_1_2[], sac_1_2[], sacf_1_1_2[0], -saaf_2_2_1[0], sab_2_1[], sac_2_1[], sab_2_2[], sac_2_2[], sacf_2_2_2[0], -sbaf_2_2_1[0], sbb_2_1[], sbc_2_1[], sbb_2_2[], sbc_2_2[], sbcf_2_2_2[0] };
// vol_wire = newreg; Volume(vol_wire) = {sl_wire};

//----------------------------------------------------------
// Lower Electrode Surface Loop - lower electrode surface loop

sl_lower_cp = newreg; Surface Loop(sl_lower_cp) = { surfTopCp[], pscpLowBorder1, pscpLowBorder2, pscpLowBorder3, pscpLowBorder4, surfBottomCp[] }; // surf_lower_cp1[], surf_lower_cp2[], surf_lower_cp3[], surf_lower_cp4[],
total_sl_lower_cp[] += sl_lower_cp;


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


//------------------------------------------------------------------------------------------
/// PHYSICAL SURFACES

//----------------------------------------------------------
// Physical Surfaces - periodic boundary conditions

physsurf_bdh_1_1 = newreg; Physical Surface(physsurf_bdh_1_1) = { psbdh_1_1_bsurf1t, psbdh_1_1_bsurf1b };               // ps_side_gas1b, ps_bsurf2, pscp_up_border1, ps_side_gas1a, sbaf_2_2_1[0], sbb_1_1[2], sbb_1_2[2], sbc_1_1[2], sbc_1_2[2], sacf_2_2_2[0], 
physsurf_bdh_1_2 = newreg; Physical Surface(physsurf_bdh_1_2) = { psbdh_1_2_bsurf3t, psbdh_1_2_bsurf3b };               // ps_side_gas2b, pscp_up_border2, ps_side_gas2a, saaf_1_1_1[0], sab_2_1[2], sab_2_2[2], sac_2_1[2], sac_2_2[2], sbcf_1_1_2[0], 
physsurf_bdh_2_1 = newreg; Physical Surface(physsurf_bdh_2_1) = { psbdh_2_1_bsurf4t, psbdh_2_1_bsurf4b };               // ps_side_gas3b, ps_bsurf5, pscp_up_border3, ps_side_gas3a, saaf_2_2_1[0], sab_1_1[2], sab_1_2[2], sac_1_1[2], sac_1_2[2], sbcf_2_2_2[0], 
physsurf_bdh_2_2 = newreg; Physical Surface(physsurf_bdh_2_2) = { psbdh_2_2_bsurf6t, psbdh_2_2_bsurf6b };               // ps_side_gas4b, pscp_up_border4, ps_side_gas4a, sbaf_1_1_1[0], sbb_2_1[2], sbb_2_2[2], sbc_2_1[2], sbc_2_2[2], sacf_1_1_2[0], 

//----------------------------------------------------------
// Physical surfaces - container surface

// physsurf_container = newreg; Physical Surface(physsurf_container) = { surfTopCp[], psSideGas1a, psSideGas2a, psSideGas3a, psSideGas4a,
// psBsurf1, psBsurf3, psBsurf4, psBsurf6, psBsurf7, pscpUpBorder1, pscpUpBorder2, pscpUpBorder3, pscpUpBorder4, psSideGas1b, psSideGas2b, psSideGas3b, psSideGas4b, psBsurf2, psBsurf5 };

//----------------------------------------------------------
// Physical surfaces - wire surface

// physsurf_wire = newreg; Physical Surface(physsurf_wire) = { -sbaf_1_1_1[0], sbb_1_1[], sbc_1_1[], sbb_1_2[], sbc_1_2[], sbcf_1_1_2[0], -saaf_1_1_1[0], sab_1_1[], sac_1_1[], sab_1_2[], sac_1_2[], sacf_1_1_2[0], -saaf_2_2_1[0], sab_2_1[], sac_2_1[], sab_2_2[], sac_2_2[], sacf_2_2_2[0], -sbaf_2_2_1[0], sbb_2_1[], sbc_2_1[], sbb_2_2[], sbc_2_2[], sbcf_2_2_2[0] };
// physsurf_wire = newreg; Physical Surface(physsurf_wire) = { physsurf_1a_wire, physsurf_1b_wire, physsurf_2a_wire, physsurf_2b_wire };

//----------------------------------------------------------
// Physical surfaces - gas exterior / interior surface

physsurf_gas = newreg; Physical Surface(physsurf_gas) = { psBsurf7, psbdh_1_1_bsurf1t, psbdh_1_1_bsurf1b, psbdh_1_2_bsurf3t, psbdh_1_2_bsurf3b, psbdh_2_1_bsurf4t, psbdh_2_1_bsurf4b, psbdh_2_2_bsurf6t, psbdh_2_2_bsurf6b, -surfTopCp[], -sbb_1_1[0], -sbb_1_1[1], -sbc_1_1[0], -sbc_1_1[1], -sbb_1_2[0], -sbb_1_2[1], -sbc_1_2[0], -sbc_1_2[1], -sab_1_1[0], -sab_1_1[1], -sac_1_1[0], -sac_1_1[1], -sab_1_2[0], -sab_1_2[1], -sac_1_2[0], -sac_1_2[1], -sab_2_1[0], -sab_2_1[1], -sac_2_1[0], -sac_2_1[1], -sab_2_2[0], -sab_2_2[1], -sac_2_2[0], -sac_2_2[1], -sbb_2_1[0], -sbb_2_1[1], -sbc_2_1[0], -sbc_2_1[1], -sbb_2_2[0], -sbb_2_2[1], -sbc_2_2[0], -sbc_2_2[1] };
// Physical Surface(physsurf_gas) = { physsurf_container, -physsurf_x1_wire, -physsurf_x2_wire, -physsurf_y1_wire, -physsurf_y2_wire };

//----------------------------------------------------------
// Physical surfaces - dielectric surface

// physsurf_dielectric = newreg; Physical Surface(physsurf_dielectric) = total_sl_dielectric[];
// physsurf_dielectric = newreg; Physical Surface(physsurf_dielectric) = { surfTopGas1[], surfTopGas2[], surfTopGas3[], surfTopGas4[], surfTopGas5[], surf_cyl_dielectric1[], surf_cyl_dielectric2[], surf_cyl_dielectric3[], surf_cyl_dielectric4[], 
// -surf_lower_cp1[], -surf_lower_cp2[], -surf_lower_cp3[], -surf_lower_cp4[], surfBottomDielectric[] };

//----------------------------------------------------------
// Physical surfaces - lower electrode surface

physsurf_lower_cp = newreg; Physical Surface(physsurf_lower_cp) = { surfTopCp[], pscpLowBorder1, pscpLowBorder2, pscpLowBorder3, pscpLowBorder4, surfBottomCp[] }; // surf_lower_cp1[], surf_lower_cp2[], surf_lower_cp3[], surf_lower_cp4[], 

//----------------------------------------------------------
// Physical surfaces - upper electrode surface

physsurf_upper_el = newreg; Physical Surface(physsurf_upper_el) = { psBsurf7 };


//------------------------------------------------------------------------------------------
/// PHYSICAL VOLUMES

//----------------------------------------------------------
// Physical Volumes - Container Volume

// physvol_container = newreg; Physical Volume(physvol_container) = vol_container;

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


//----------------------------------------------------------
// FEATURE / ELEMENT REMOVAL

// Delete { Volume { vol_gas }; }

// Coherence;
// Geometry.AutoCoherence = 1;


/*
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////// Window Definition

// WINDOWS / PITCH

// --------------------------------------------------------------------------

// *******************************
// Corner 1
// *******************************
pc1_1 = newp; Point(pc1_1) = { geofx*(+rW-p+p+0*spFac1) + geofx*m*(+rW-p+p+0*spFac1), geofy*(+rW-p+p+0*spFac1) + geofy*n*(+rW-p+p+0*spFac1), 0, lcCopperPlateBdry };


// *******************************
// Corner 2
// *******************************
pc1_2 = newp; Point(pc1_2) = { geofx*(-rW+p+p+0*spFac1) + geofx*m*(-rW+p+p+0*spFac1), geofy*(+rW-p+p+0*spFac1) + geofy*n*(+rW-p+p+0*spFac1), 0, lcCopperPlateBdry };


// *******************************
// Corner 3
// *******************************
pc1_3 = newp; Point(pc1_3) = { geofx*(-rW+p+p+0*spFac1) + geofx*m*(-rW+p+p+0*spFac1), geofy*(-rW+p+p+0*spFac1) + geofy*n*(-rW+p+p+0*spFac1), 0, lcCopperPlateBdry }; 


// *******************************
// Corner 4
// *******************************
pc1_4 = newp; Point(pc1_4) = { geofx*(+rW-p+p+0*spFac1) + geofx*m*(+rW-p+p+0*spFac1), geofy*(-rW+p+p+0*spFac1) + geofy*n*(-rW+p+p+0*spFac1), 0, lcCopperPlateBdry };


// UPPER SQUARE

// *******************************
// Corner 1
// *******************************
ptR1_0 = newp; Point(ptR1_0) = {-p+p+1*spFac1, -p+p+1*spFac1, R-rW, lcCopperPlateBdry};


// *******************************
// Corner 1
// *******************************
ptpR1_1 = newp; Point(ptpR1_1) = {-p+p, -p+p+1*spFac1, R-rW, lcCopperPlateBdry};


// *******************************
// Corner 2
// *******************************
ptpR1_2 = newp; Point(ptpR1_2) = {p+p+1*spFac1, -p+p, R-rW, lcCopperPlateBdry};


// *******************************
// Corner 3
// *******************************
ptpR1_3 = newp; Point(ptpR1_3) = {p+p+1*spFac1, p+p+1*spFac1, R-rW, lcCopperPlateBdry};


// *******************************
// Corner 4
// *******************************
ptpR1_4 = newp; Point(ptpR1_4) = {-p+p+1*spFac1, p+p+1*spFac1, R-rW, lcCopperPlateBdry};


// BOTTOM SQUARE

// *******************************
// Corner 1
// *******************************
ptnR1_1 = newp; Point(ptnR1_1) = {-p+p+1*spFac1, -p+p, -R+rW, lcCopperPlateBdry};


// *******************************
// Corner 2
// *******************************
ptnR1_2 = newp; Point(ptnR1_2) = {p+p+1*spFac1, -p+p+1*spFac1, -R+rW, lcCopperPlateBdry};


// *******************************
// Corner 3
// *******************************
ptnR1_3 = newp; Point(ptnR1_3) = {p+p+1*spFac1, p+p+1*spFac1, -R+rW, lcCopperPlateBdry};


// *******************************
// Corner 4
// *******************************
ptnR1_4 = newp; Point(ptnR1_4) = {-p+p, p+p+1*spFac1, -R+rW, lcCopperPlateBdry};


// End
*/
