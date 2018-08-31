//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 
// mmGasUnitCellTestLineDefinition.geo
//
// Description:
// Geometry file for a MM cell
// This cell can be repeated any number of times within Garfield 
// to construct an arbitrarily large MM
//
//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// MMGASSTRWIRE LINE DEFINITION MODULE
//

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// GENERAL INFORMATION
//
// mmGasUnitCellTestLineDefinition.geo
//
// Description
//
// References
//
// See also
//


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


For q In {1:1}
  For r In {1:1}
    For s In {2:2}


    // -------------------------------
    //
    // End faces - sacf_1_1_2[]
    //
    // -------------------------------

    If(r == 1 && s == 2) 

      ll_facesacb~{q}~{r}~{s}[] = {};

        ll_facesacb~{q}~{r}~{s}[] += Boundary{ Surface{sacf~{q}~{r}~{s}[]}; };

        ptsacfmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesacb~{q}~{r}~{s}[0])}; };
        psacfminchz~{q}~{r}~{s}[] = Point{ ptsacfmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesacbc1chz~{q}~{r}~{s}[] = Point{ ptsacfmin~{q}~{r}~{s}[w] };

        If( pfacesacbc1chz~{q}~{r}~{s}[2] < psacfminchz~{q}~{r}~{s}[2] )

          psacfminz[] = pfacesacbc1chz~{q}~{r}~{s}[2];
          ptsacfminz~{q}~{r}~{s}() = ptsacfmin~{q}~{r}~{s}[w];

        Else

          psacfminz[]  = psacfminchz~{q}~{r}~{s}[2];
          ptsacfminz~{q}~{r}~{s}() = ptsacfmin~{q}~{r}~{s}[0];

        EndIf

      EndFor


      For t In {1:2}

        ptfacesacbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesacb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesacbc1chz~{q}~{r}~{s}[] = Point{ ptfacesacbc1~{q}~{r}~{s}[l] };

          If( pfacesacbc1chz~{q}~{r}~{s}[2] < psacfminchz~{q}~{r}~{s}[2] )

            psacfminz[]  = pfacesacbc1chz~{q}~{r}~{s}[2];
            ptsacfminz~{q}~{r}~{s}() = ptfacesacbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesacb~{q}~{r}~{s}[] = {};

        ll_facesacb~{q}~{r}~{s}[] += Boundary{ Surface{sacf~{q}~{r}~{s}[]}; };

        ptsacfmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesacb~{q}~{r}~{s}[0])}; };
        psacfminchz~{q}~{r}~{s}[] = Point{ ptsacfmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesacbc1chz~{q}~{r}~{s}[] = Point{ ptsacfmin~{q}~{r}~{s}[w] };

        If( pfacesacbc1chz~{q}~{r}~{s}[2] < psacfminchz~{q}~{r}~{s}[2] )

          psacfminz[]  = pfacesacbc1chz~{q}~{r}~{s}[2];
          ptsacfminz~{q}~{r}~{s}() = ptsacfmin~{q}~{r}~{s}[w];

        Else

          psacfminz[]  = psacfminchz~{q}~{r}~{s}[2];
          ptsacfminz~{q}~{r}~{s}() = ptsacfmin~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesacbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesacb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesacbc1chz~{q}~{r}~{s}[] = Point{ ptfacesacbc1~{q}~{r}~{s}[l] };
    
          If( pfacesacbc1chz~{q}~{r}~{s}[2] < psacfminchz~{q}~{r}~{s}[2] )

            psacfminz[]  = pfacesacbc1chz~{q}~{r}~{s}[2];
            ptsacfminz~{q}~{r}~{s}() = ptfacesacbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesacb~{q}~{r}~{s}[] = {};

        ll_facesacb~{q}~{r}~{s}[] += Boundary{ Surface{sacf~{q}~{r}~{s}[]}; };

        ptsacfmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesacb~{q}~{r}~{s}[0])}; };
        psacfmaxchz~{q}~{r}~{s}[] = Point{ ptsacfmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesacbc1chz~{q}~{r}~{s}[] = Point{ ptsacfmax~{q}~{r}~{s}[w] };

        If( pfacesacbc1chz~{q}~{r}~{s}[2] > psacfmaxchz~{q}~{r}~{s}[2] )

          psacfmaxz~{q}~{r}~{s}[] = pfacesacbc1chz~{q}~{r}~{s}[2];
          ptsacfmaxz~{q}~{r}~{s}() = ptsacfmax~{q}~{r}~{s}[w];

        Else

          psacfmaxz~{q}~{r}~{s}[] = psacfmaxchz~{q}~{r}~{s}[2];
          ptsacfmaxz~{q}~{r}~{s}() = ptsacfmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesacbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesacb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesacbc1chz~{q}~{r}~{s}[] = Point{ ptfacesacbc1~{q}~{r}~{s}[l] };
    
          If( pfacesacbc1chz~{q}~{r}~{s}[2] > psacfmaxchz~{q}~{r}~{s}[2] )

            psacfmaxz~{q}~{r}~{s}[] = pfacesacbc1chz~{q}~{r}~{s}[2];
            ptsacfmaxz~{q}~{r}~{s}() = ptfacesacbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesacb~{q}~{r}~{s}[] = {};

        ll_facesacb~{q}~{r}~{s}[] += Boundary{ Surface{sacf~{q}~{r}~{s}[]}; };

        ptsacfmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesacb~{q}~{r}~{s}[0])}; };
        psacfmaxchz~{q}~{r}~{s}[] = Point{ ptsacfmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesacbc1chz~{q}~{r}~{s}[] = Point{ ptsacfmax~{q}~{r}~{s}[w] };

        If( pfacesacbc1chz~{q}~{r}~{s}[2] > psacfmaxchz~{q}~{r}~{s}[2] )

          psacfmaxz~{q}~{r}~{s}[] = pfacesacbc1chz~{q}~{r}~{s}[2];
          ptsacfmaxz~{q}~{r}~{s}() = ptsacfmax~{q}~{r}~{s}[w];

        Else

          psacfmaxz~{q}~{r}~{s}[] = psacfmaxchz~{q}~{r}~{s}[2];
          ptsacfmaxz~{q}~{r}~{s}() = ptsacfmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesacbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesacb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesacbc1chz~{q}~{r}~{s}[] = Point{ ptfacesacbc1~{q}~{r}~{s}[l] };
    
          If( pfacesacbc1chz~{q}~{r}~{s}[2] > psacfmaxchz~{q}~{r}~{s}[2] )

            psacfmaxz~{q}~{r}~{s}[] = pfacesacbc1chz~{q}~{r}~{s}[2];
            ptsacfmaxz~{q}~{r}~{s}() = ptfacesacbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor

    EndIf


    // -------------------------------
    //
    // End faces - sbcf_1_1_2[]
    //
    // -------------------------------

    If(r == 1 && s == 2) 

      ll_facesbcb~{q}~{r}~{s}[] = {};

        ll_facesbcb~{q}~{r}~{s}[] += Boundary{ Surface{sbcf~{q}~{r}~{s}[]}; };

        ptsbcfmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbcb~{q}~{r}~{s}[0])}; };
        psbcfminchz~{q}~{r}~{s}[] = Point{ ptsbcfmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbcbc1chz~{q}~{r}~{s}[] = Point{ ptsbcfmin~{q}~{r}~{s}[w] };

        If( pfacesbcbc1chz~{q}~{r}~{s}[2] < psbcfminchz~{q}~{r}~{s}[2] )

          psbcfminz[] = pfacesbcbc1chz~{q}~{r}~{s}[2];
          ptsbcfminz~{q}~{r}~{s}() = ptsbcfmin~{q}~{r}~{s}[w];

        Else

          psbcfminz[]  = psbcfminchz~{q}~{r}~{s}[2];
          ptsbcfminz~{q}~{r}~{s}() = ptsbcfmin~{q}~{r}~{s}[0];

        EndIf

      EndFor


      For t In {1:2}

        ptfacesbcbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbcb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbcbc1chz~{q}~{r}~{s}[] = Point{ ptfacesbcbc1~{q}~{r}~{s}[l] };

          If( pfacesbcbc1chz~{q}~{r}~{s}[2] < psbcfminchz~{q}~{r}~{s}[2] )

            psbcfminz[]  = pfacesbcbc1chz~{q}~{r}~{s}[2];
            ptsbcfminz~{q}~{r}~{s}() = ptfacesbcbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesbcb~{q}~{r}~{s}[] = {};

        ll_facesbcb~{q}~{r}~{s}[] += Boundary{ Surface{sbcf~{q}~{r}~{s}[]}; };

        ptsbcfmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbcb~{q}~{r}~{s}[0])}; };
        psbcfminchz~{q}~{r}~{s}[] = Point{ ptsbcfmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbcbc1chz~{q}~{r}~{s}[] = Point{ ptsbcfmin~{q}~{r}~{s}[w] };

        If( pfacesbcbc1chz~{q}~{r}~{s}[2] < psbcfminchz~{q}~{r}~{s}[2] )

          psbcfminz[]  = pfacesbcbc1chz~{q}~{r}~{s}[2];
          ptsbcfminz~{q}~{r}~{s}() = ptsbcfmin~{q}~{r}~{s}[w];

        Else

          psbcfminz[]  = psbcfminchz~{q}~{r}~{s}[2];
          ptsbcfminz~{q}~{r}~{s}() = ptsbcfmin~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesbcbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbcb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbcbc1chz~{q}~{r}~{s}[] = Point{ ptfacesbcbc1~{q}~{r}~{s}[l] };
    
          If( pfacesbcbc1chz~{q}~{r}~{s}[2] < psbcfminchz~{q}~{r}~{s}[2] )

            psbcfminz[]  = pfacesbcbc1chz~{q}~{r}~{s}[2];
            ptsbcfminz~{q}~{r}~{s}() = ptfacesbcbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesbcb~{q}~{r}~{s}[] = {};

        ll_facesbcb~{q}~{r}~{s}[] += Boundary{ Surface{sbcf~{q}~{r}~{s}[]}; };

        ptsbcfmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbcb~{q}~{r}~{s}[0])}; };
        psbcfmaxchz~{q}~{r}~{s}[] = Point{ ptsbcfmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbcbc1chz~{q}~{r}~{s}[] = Point{ ptsbcfmax~{q}~{r}~{s}[w] };

        If( pfacesbcbc1chz~{q}~{r}~{s}[2] > psbcfmaxchz~{q}~{r}~{s}[2] )

          psbcfmaxz~{q}~{r}~{s}[] = pfacesbcbc1chz~{q}~{r}~{s}[2];
          ptsbcfmaxz~{q}~{r}~{s}() = ptsbcfmax~{q}~{r}~{s}[w];

        Else

          psbcfmaxz~{q}~{r}~{s}[] = psbcfmaxchz~{q}~{r}~{s}[2];
          ptsbcfmaxz~{q}~{r}~{s}() = ptsbcfmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesbcbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbcb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbcbc1chz~{q}~{r}~{s}[] = Point{ ptfacesbcbc1~{q}~{r}~{s}[l] };
    
          If( pfacesbcbc1chz~{q}~{r}~{s}[2] > psbcfmaxchz~{q}~{r}~{s}[2] )

            psbcfmaxz~{q}~{r}~{s}[] = pfacesbcbc1chz~{q}~{r}~{s}[2];
            ptsbcfmaxz~{q}~{r}~{s}() = ptfacesbcbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesbcb~{q}~{r}~{s}[] = {};

        ll_facesbcb~{q}~{r}~{s}[] += Boundary{ Surface{sbcf~{q}~{r}~{s}[]}; };

        ptsbcfmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbcb~{q}~{r}~{s}[0])}; };
        psbcfmaxchz~{q}~{r}~{s}[] = Point{ ptsbcfmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbcbc1chz~{q}~{r}~{s}[] = Point{ ptsbcfmax~{q}~{r}~{s}[w] };

        If( pfacesbcbc1chz~{q}~{r}~{s}[2] > psbcfmaxchz~{q}~{r}~{s}[2] )

          psbcfmaxz~{q}~{r}~{s}[] = pfacesbcbc1chz~{q}~{r}~{s}[2];
          ptsbcfmaxz~{q}~{r}~{s}() = ptsbcfmax~{q}~{r}~{s}[w];

        Else

          psbcfmaxz~{q}~{r}~{s}[] = psbcfmaxchz~{q}~{r}~{s}[2];
          ptsbcfmaxz~{q}~{r}~{s}() = ptsbcfmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesbcbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbcb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbcbc1chz~{q}~{r}~{s}[] = Point{ ptfacesbcbc1~{q}~{r}~{s}[l] };
    
          If( pfacesbcbc1chz~{q}~{r}~{s}[2] > psbcfmaxchz~{q}~{r}~{s}[2] )

            psbcfmaxz~{q}~{r}~{s}[] = pfacesbcbc1chz~{q}~{r}~{s}[2];
            ptsbcfmaxz~{q}~{r}~{s}() = ptfacesbcbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor

    EndIf

    EndFor
  EndFor
EndFor


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// CHANGE OVER - HALFWAY
//


For q In {2:2}
  For r In {2:2}
    For s In {2:2}


    // -------------------------------
    //
    // End faces - sacf_2_2_2[]
    //
    // -------------------------------

    If(r == 2 && s == 2) 

      ll_facesacb~{q}~{r}~{s}[] = {};

        ll_facesacb~{q}~{r}~{s}[] += Boundary{ Surface{sacf~{q}~{r}~{s}[]}; };

        ptsacfmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesacb~{q}~{r}~{s}[0])}; };
        psacfminchz~{q}~{r}~{s}[] = Point{ ptsacfmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesacbc1chz~{q}~{r}~{s}[] = Point{ ptsacfmin~{q}~{r}~{s}[w] };

        If( pfacesacbc1chz~{q}~{r}~{s}[2] < psacfminchz~{q}~{r}~{s}[2] )

          psacfminz~{q}~{r}~{s}[] = pfacesacbc1chz~{q}~{r}~{s}[2];
          ptsacfminz~{q}~{r}~{s}() = ptsacfmin~{q}~{r}~{s}[w];

        Else

          psacfminz~{q}~{r}~{s}[] = psacfminchz~{q}~{r}~{s}[2];
          ptsacfminz~{q}~{r}~{s}() = ptsacfmin~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesacbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesacb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesacbc1chz~{q}~{r}~{s}[] = Point{ ptfacesacbc1~{q}~{r}~{s}[l] };
    
          If( pfacesacbc1chz~{q}~{r}~{s}[2] < psacfminchz~{q}~{r}~{s}[2] )

            psacfminz~{q}~{r}~{s}[] = pfacesacbc1chz~{q}~{r}~{s}[2];
            ptsacfminz~{q}~{r}~{s}() = ptfacesacbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesacb~{q}~{r}~{s}[] = {};

        ll_facesacb~{q}~{r}~{s}[] += Boundary{ Surface{sacf~{q}~{r}~{s}[]}; };

        ptsacfmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesacb~{q}~{r}~{s}[0])}; };
        psacfminchz~{q}~{r}~{s}[] = Point{ ptsacfmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesacbc1chz~{q}~{r}~{s}[] = Point{ ptsacfmin~{q}~{r}~{s}[w] };

        If( pfacesacbc1chz~{q}~{r}~{s}[2] < psacfminchz~{q}~{r}~{s}[2] )

          psacfminz~{q}~{r}~{s}[] = pfacesacbc1chz~{q}~{r}~{s}[2];
          ptsacfminz~{q}~{r}~{s}() = ptsacfmin~{q}~{r}~{s}[w];

        Else

          psacfminz~{q}~{r}~{s}[] = psacfminchz~{q}~{r}~{s}[2];
          ptsacfminz~{q}~{r}~{s}() = ptsacfmin~{q}~{r}~{s}[0];

        EndIf

      EndFor

    
      For t In {1:2}

        ptfacesacbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesacb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesacbc1chz~{q}~{r}~{s}[] = Point{ ptfacesacbc1~{q}~{r}~{s}[l] };
    
          If( pfacesacbc1chz~{q}~{r}~{s}[2] < psacfminchz~{q}~{r}~{s}[2] )

            psacfminz~{q}~{r}~{s}[] = pfacesacbc1chz~{q}~{r}~{s}[2];
            ptsacfminz~{q}~{r}~{s}() = ptfacesacbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesacb~{q}~{r}~{s}[] = {};

        ll_facesacb~{q}~{r}~{s}[] += Boundary{ Surface{sacf~{q}~{r}~{s}[]}; };

        ptsacfmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesacb~{q}~{r}~{s}[0])}; };
        psacfmaxchz~{q}~{r}~{s}[] = Point{ ptsacfmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesacbc1chz~{q}~{r}~{s}[] = Point{ ptsacfmax~{q}~{r}~{s}[w] };

        If( pfacesacbc1chz~{q}~{r}~{s}[2] > psacfmaxchz~{q}~{r}~{s}[2] )

          psacfmaxz~{q}~{r}~{s}[] = pfacesacbc1chz~{q}~{r}~{s}[2];
          ptsacfmaxz~{q}~{r}~{s}() = ptsacfmax~{q}~{r}~{s}[w];

        Else

          psacfmaxz~{q}~{r}~{s}[] = psacfmaxchz~{q}~{r}~{s}[2];
          ptsacfmaxz~{q}~{r}~{s}() = ptsacfmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesacbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesacb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesacbc1chz~{q}~{r}~{s}[] = Point{ ptfacesacbc1~{q}~{r}~{s}[l] };
    
          If( pfacesacbc1chz~{q}~{r}~{s}[2] > psacfmaxchz~{q}~{r}~{s}[2] )

            psacfmaxz~{q}~{r}~{s}[] = pfacesacbc1chz~{q}~{r}~{s}[2];
            ptsacfmaxz~{q}~{r}~{s}() = ptfacesacbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesacb~{q}~{r}~{s}[] = {};

        ll_facesacb~{q}~{r}~{s}[] += Boundary{ Surface{sacf~{q}~{r}~{s}[]}; };

        ptsacfmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesacb~{q}~{r}~{s}[0])}; };
        psacfmaxchz~{q}~{r}~{s}[] = Point{ ptsacfmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesacbc1chz~{q}~{r}~{s}[] = Point{ ptsacfmax~{q}~{r}~{s}[w] };

        If( pfacesacbc1chz~{q}~{r}~{s}[2] > psacfmaxchz~{q}~{r}~{s}[2] )

          psacfmaxz~{q}~{r}~{s}[] = pfacesacbc1chz~{q}~{r}~{s}[2];
          ptsacfmaxz~{q}~{r}~{s}() = ptsacfmax~{q}~{r}~{s}[w];

        Else

          psacfmaxz~{q}~{r}~{s}[] = psacfmaxchz~{q}~{r}~{s}[2];
          ptsacfmaxz~{q}~{r}~{s}() = ptsacfmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesacbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesacb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesacbc1chz~{q}~{r}~{s}[] = Point{ ptfacesacbc1~{q}~{r}~{s}[l] };
    
          If( pfacesacbc1chz~{q}~{r}~{s}[2] > psacfmaxchz~{q}~{r}~{s}[2] )

            psacfmaxz~{q}~{r}~{s}[] = pfacesacbc1chz~{q}~{r}~{s}[2];
            ptsacfmaxz~{q}~{r}~{s}() = ptfacesacbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor

    EndIf


    // -------------------------------
    //
    // End faces - sbcf_2_2_2[]
    //
    // -------------------------------

    If(r == 2 && s == 2) 

      ll_facesbcb~{q}~{r}~{s}[] = {};

        ll_facesbcb~{q}~{r}~{s}[] += Boundary{ Surface{sbcf~{q}~{r}~{s}[]}; };

        ptsbcfmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbcb~{q}~{r}~{s}[0])}; };
        psbcfminchz~{q}~{r}~{s}[] = Point{ ptsbcfmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbcbc1chz~{q}~{r}~{s}[] = Point{ ptsbcfmin~{q}~{r}~{s}[w] };

        If( pfacesbcbc1chz~{q}~{r}~{s}[2] < psbcfminchz~{q}~{r}~{s}[2] )

          psbcfminz~{q}~{r}~{s}[] = pfacesbcbc1chz~{q}~{r}~{s}[2];
          ptsbcfminz~{q}~{r}~{s}() = ptsbcfmin~{q}~{r}~{s}[w];

        Else

          psbcfminz~{q}~{r}~{s}[] = psbcfminchz~{q}~{r}~{s}[2];
          ptsbcfminz~{q}~{r}~{s}() = ptsbcfmin~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesbcbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbcb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbcbc1chz~{q}~{r}~{s}[] = Point{ ptfacesbcbc1~{q}~{r}~{s}[l] };
    
          If( pfacesbcbc1chz~{q}~{r}~{s}[2] < psbcfminchz~{q}~{r}~{s}[2] )

            psbcfminz~{q}~{r}~{s}[] = pfacesbcbc1chz~{q}~{r}~{s}[2];
            ptsbcfminz~{q}~{r}~{s}() = ptfacesbcbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesbcb~{q}~{r}~{s}[] = {};

        ll_facesbcb~{q}~{r}~{s}[] += Boundary{ Surface{sbcf~{q}~{r}~{s}[]}; };

        ptsbcfmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbcb~{q}~{r}~{s}[0])}; };
        psbcfminchz~{q}~{r}~{s}[] = Point{ ptsbcfmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbcbc1chz~{q}~{r}~{s}[] = Point{ ptsbcfmin~{q}~{r}~{s}[w] };

        If( pfacesbcbc1chz~{q}~{r}~{s}[2] < psbcfminchz~{q}~{r}~{s}[2] )

          psbcfminz~{q}~{r}~{s}[] = pfacesbcbc1chz~{q}~{r}~{s}[2];
          ptsbcfminz~{q}~{r}~{s}() = ptsbcfmin~{q}~{r}~{s}[w];

        Else

          psbcfminz~{q}~{r}~{s}[] = psbcfminchz~{q}~{r}~{s}[2];
          ptsbcfminz~{q}~{r}~{s}() = ptsbcfmin~{q}~{r}~{s}[0];

        EndIf

      EndFor

    
      For t In {1:2}

        ptfacesbcbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbcb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbcbc1chz~{q}~{r}~{s}[] = Point{ ptfacesbcbc1~{q}~{r}~{s}[l] };
    
          If( pfacesbcbc1chz~{q}~{r}~{s}[2] < psbcfminchz~{q}~{r}~{s}[2] )

            psbcfminz~{q}~{r}~{s}[] = pfacesbcbc1chz~{q}~{r}~{s}[2];
            ptsbcfminz~{q}~{r}~{s}() = ptfacesbcbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesbcb~{q}~{r}~{s}[] = {};

        ll_facesbcb~{q}~{r}~{s}[] += Boundary{ Surface{sbcf~{q}~{r}~{s}[]}; };

        ptsbcfmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbcb~{q}~{r}~{s}[0])}; };
        psbcfmaxchz~{q}~{r}~{s}[] = Point{ ptsbcfmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbcbc1chz~{q}~{r}~{s}[] = Point{ ptsbcfmax~{q}~{r}~{s}[w] };

        If( pfacesbcbc1chz~{q}~{r}~{s}[2] > psbcfmaxchz~{q}~{r}~{s}[2] )

          psbcfmaxz~{q}~{r}~{s}[] = pfacesbcbc1chz~{q}~{r}~{s}[2];
          ptsbcfmaxz~{q}~{r}~{s}() = ptsbcfmax~{q}~{r}~{s}[w];

        Else

          psbcfmaxz~{q}~{r}~{s}[] = psbcfmaxchz~{q}~{r}~{s}[2];
          ptsbcfmaxz~{q}~{r}~{s}() = ptsbcfmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesbcbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbcb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbcbc1chz~{q}~{r}~{s}[] = Point{ ptfacesbcbc1~{q}~{r}~{s}[l] };
    
          If( pfacesbcbc1chz~{q}~{r}~{s}[2] > psbcfmaxchz~{q}~{r}~{s}[2] )

            psbcfmaxz~{q}~{r}~{s}[] = pfacesbcbc1chz~{q}~{r}~{s}[2];
            ptsbcfmaxz~{q}~{r}~{s}() = ptfacesbcbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesbcb~{q}~{r}~{s}[] = {};

        ll_facesbcb~{q}~{r}~{s}[] += Boundary{ Surface{sbcf~{q}~{r}~{s}[]}; };

        ptsbcfmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbcb~{q}~{r}~{s}[0])}; };
        psbcfmaxchz~{q}~{r}~{s}[] = Point{ ptsbcfmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbcbc1chz~{q}~{r}~{s}[] = Point{ ptsbcfmax~{q}~{r}~{s}[w] };

        If( pfacesbcbc1chz~{q}~{r}~{s}[2] > psbcfmaxchz~{q}~{r}~{s}[2] )

          psbcfmaxz~{q}~{r}~{s}[] = pfacesbcbc1chz~{q}~{r}~{s}[2];
          ptsbcfmaxz~{q}~{r}~{s}() = ptsbcfmax~{q}~{r}~{s}[w];

        Else

          psbcfmaxz~{q}~{r}~{s}[] = psbcfmaxchz~{q}~{r}~{s}[2];
          ptsbcfmaxz~{q}~{r}~{s}() = ptsbcfmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesbcbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbcb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbcbc1chz~{q}~{r}~{s}[] = Point{ ptfacesbcbc1~{q}~{r}~{s}[l] };
    
          If( pfacesbcbc1chz~{q}~{r}~{s}[2] > psbcfmaxchz~{q}~{r}~{s}[2] )

            psbcfmaxz~{q}~{r}~{s}[] = pfacesbcbc1chz~{q}~{r}~{s}[2];
            ptsbcfmaxz~{q}~{r}~{s}() = ptfacesbcbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor

    EndIf

    EndFor
  EndFor
EndFor


// End