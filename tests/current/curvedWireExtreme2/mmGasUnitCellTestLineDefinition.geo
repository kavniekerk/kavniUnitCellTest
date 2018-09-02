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


/// sab_1_1[], sac_1_1[], sad_1_1[]

    //----------------------------------------------------------
    // Face physsurf_bdh_1_1 (Corner 1 - Corner 2) - sab/tmpab - sab_1_1[]

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
    // Face physsurf_bdh_2_1 (Corner 3 - Corner 4) - sac/tmpac - sac_1_1[]

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
    // Face physsurf_bdh_2_1 (Corner 3 - Corner 4) - sad/tmpad - sad_1_1[]

      If(r == 1 && s == 1)

      ll_bdhadt~{q}~{r}~{s}[] = {};
      ll_bdhadb~{q}~{r}~{s}[] = {};

      pbdhadt~{q}~{r}~{s}() = {};
      pbdhadb~{q}~{r}~{s}() = {};

      ll_bdhad~{q}~{r}~{s}[] = {};

        ll_bdhad~{q}~{r}~{s}[] += Boundary{ Surface{sad~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 1)
          ll_bdhadc0~{q}~{r}~{s}[] = {};
          pbdhadc0~{q}~{r}~{s}() = {};
          ll_bdhadc~{q}~{r}~{s}[] = {};

          ll_bdhadc~{q}~{r}~{s}[] += Boundary{ Surface{tmpad~{r}~{s}[t]}; };
          ll_bdhadc0~{q}~{r}~{s}[] = Abs(ll_bdhadc~{q}~{r}~{s}[t]);
          pbdhadc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhadc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhadb~{q}~{r}~{s}[] = Abs(ll_bdhad~{q}~{r}~{s}[t]);
          pbdhadb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhad~{q}~{r}~{s}[t])}; };
        EndIf  

        If(t == 1 && s == 1)
          ll_bdhadc1~{q}~{r}~{s}[] = {};
          pbdhadc1~{q}~{r}~{s}() = {};

          ll_bdhadc1~{q}~{r}~{s}[] = Abs(ll_bdhadc~{q}~{r}~{s}[t]);
          pbdhadc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhadc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 1)
          ll_bdhad1~{q}~{r}~{s}[] = {};
          pbdhad1~{q}~{r}~{s}() = {};

          ll_bdhad1~{q}~{r}~{s}[] = Abs(ll_bdhad~{q}~{r}~{s}[t]);
          pbdhad1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhad~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)  
          ll_bdhadt~{q}~{r}~{s}[] = Abs(ll_bdhad~{q}~{r}~{s}[t]);
          pbdhadt~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhad~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf


/// sbb_1_1[], sbc_1_1[], sbd_1_1[]

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
    // Face physsurf_bdh_1_1 (Corner 1 - Corner 2) - sbc/tmpbc

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

    //----------------------------------------------------------
    // Face physsurf_bdh_1_1 (Corner 1 - Corner 2) - sbd/tmpbd

      If(r == 1 && s == 1)

      ll_bdhbdt~{q}~{r}~{s}[] = {};
      ll_bdhbdb~{q}~{r}~{s}[] = {};

      pbdhbdt~{q}~{r}~{s}() = {};
      pbdhbdb~{q}~{r}~{s}() = {};

      ll_bdhbd~{q}~{r}~{s}[] = {};

        ll_bdhbd~{q}~{r}~{s}[] += Boundary{ Surface{sbd~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 1)
          ll_bdhbdc0~{q}~{r}~{s}[] = {};
          pbdhbdc0~{q}~{r}~{s}() = {};
          ll_bdhbdc~{q}~{r}~{s}[] = {};

          ll_bdhbdc~{q}~{r}~{s}[] += Boundary{ Surface{tmpbd~{r}~{s}[t]}; };
          ll_bdhbdc0~{q}~{r}~{s}[] = Abs(ll_bdhbdc~{q}~{r}~{s}[t]);
          pbdhbdc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbdc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhbdb~{q}~{r}~{s}[] = Abs(ll_bdhbd~{q}~{r}~{s}[t]);
          pbdhbdb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbd~{q}~{r}~{s}[t])}; };
        EndIf  

        If(t == 1 && s == 1)
          ll_bdhbdc1~{q}~{r}~{s}[] = {};
          pbdhbdc1~{q}~{r}~{s}() = {};

          ll_bdhbdc1~{q}~{r}~{s}[] = Abs(ll_bdhbdc~{q}~{r}~{s}[t]);
          pbdhbdc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbdc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 1)
          ll_bdhbd1~{q}~{r}~{s}[] = {};
          pbdhbd1~{q}~{r}~{s}() = {};

          ll_bdhbd1~{q}~{r}~{s}[] = Abs(ll_bdhbd~{q}~{r}~{s}[t]);
          pbdhbd1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbd~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)  
          ll_bdhbdt~{q}~{r}~{s}[] = Abs(ll_bdhbd~{q}~{r}~{s}[t]);
          pbdhbdt~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbd~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf


/// sac_1_2[], sad_1_2[], sae_1_2[]

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
    // Face physsurf_bdh_2_1 (Corner 3 - Corner 4) - sad/tmpad

      If(r == 1 && s == 2)

      ll_bdhadt~{q}~{r}~{s}[] = {};
      ll_bdhadb~{q}~{r}~{s}[] = {}; 

      pbdhadt~{q}~{r}~{s}() = {};
      pbdhadb~{q}~{r}~{s}() = {};

      ll_bdhad~{q}~{r}~{s}[] = {};

        ll_bdhad~{q}~{r}~{s}[] += Boundary{ Surface{sad~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 2)
          ll_bdhadc0~{q}~{r}~{s}[] = {};
          pbdhadc0~{q}~{r}~{s}() = {};
          ll_bdhadc~{q}~{r}~{s}[] = {};

          ll_bdhadc~{q}~{r}~{s}[] += Boundary{ Surface{tmpad~{r}~{s}[t]}; };
          ll_bdhadc0~{q}~{r}~{s}[] = Abs(ll_bdhadc~{q}~{r}~{s}[t]);
          pbdhadc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhadc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhadb~{q}~{r}~{s}[] = Abs(ll_bdhad~{q}~{r}~{s}[t]);
          pbdhadb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhad~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 2)
          ll_bdhadc1~{q}~{r}~{s}[] = {};
          pbdhadc1~{q}~{r}~{s}() = {};

          ll_bdhadc1~{q}~{r}~{s}[] = Abs(ll_bdhadc~{q}~{r}~{s}[t]);
          pbdhadc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhadc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 2)
          ll_bdhad1~{q}~{r}~{s}[] = {}; 
          pbdhad1~{q}~{r}~{s}() = {};

          ll_bdhad1~{q}~{r}~{s}[] = Abs(ll_bdhad~{q}~{r}~{s}[t]);
          pbdhad1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhad~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)
          ll_bdhadt~{q}~{r}~{s}[] = Abs(ll_bdhad~{q}~{r}~{s}[t]);
          pbdhadt~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhad~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

    //----------------------------------------------------------
    // Face physsurf_bdh_2_1 (Corner 3 - Corner 4) - sae/tmpae

      If(r == 1 && s == 2)

      ll_bdhaet~{q}~{r}~{s}[] = {};
      ll_bdhaeb~{q}~{r}~{s}[] = {}; 

      pbdhaet~{q}~{r}~{s}() = {};
      pbdhaeb~{q}~{r}~{s}() = {};

      ll_bdhae~{q}~{r}~{s}[] = {};

        ll_bdhae~{q}~{r}~{s}[] += Boundary{ Surface{sae~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 2)
          ll_bdhaec0~{q}~{r}~{s}[] = {};
          pbdhaec0~{q}~{r}~{s}() = {};
          ll_bdhaec~{q}~{r}~{s}[] = {};

          ll_bdhaec~{q}~{r}~{s}[] += Boundary{ Surface{tmpae~{r}~{s}[t]}; };
          ll_bdhaec0~{q}~{r}~{s}[] = Abs(ll_bdhaec~{q}~{r}~{s}[t]);
          pbdhaec0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhaec~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhaeb~{q}~{r}~{s}[] = Abs(ll_bdhae~{q}~{r}~{s}[t]);
          pbdhaeb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhae~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 2)
          ll_bdhaec1~{q}~{r}~{s}[] = {};
          pbdhaec1~{q}~{r}~{s}() = {};

          ll_bdhaec1~{q}~{r}~{s}[] = Abs(ll_bdhaec~{q}~{r}~{s}[t]);
          pbdhaec1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhaec~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 2)
          ll_bdhae1~{q}~{r}~{s}[] = {}; 
          pbdhae1~{q}~{r}~{s}() = {};

          ll_bdhae1~{q}~{r}~{s}[] = Abs(ll_bdhae~{q}~{r}~{s}[t]);
          pbdhae1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhae~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)
          ll_bdhaet~{q}~{r}~{s}[] = Abs(ll_bdhae~{q}~{r}~{s}[t]);
          pbdhaet~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhae~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf


/// sbc_1_2[], sbd_1_2[], sbe_1_2[]

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

    //----------------------------------------------------------
    // Face physsurf_bdh_1_1 (Corner 1 - Corner 2) - sbd/tmpbd

      If(r == 1 && s == 2)

      ll_bdhbdt~{q}~{r}~{s}[] = {};
      ll_bdhbdb~{q}~{r}~{s}[] = {}; 

      pbdhbdt~{q}~{r}~{s}() = {};
      pbdhbdb~{q}~{r}~{s}() = {};

      ll_bdhbd~{q}~{r}~{s}[] = {};

        ll_bdhbd~{q}~{r}~{s}[] += Boundary{ Surface{sbd~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 2)
          ll_bdhbdc0~{q}~{r}~{s}[] = {};
          pbdhbdc0~{q}~{r}~{s}() = {};
          ll_bdhbdc~{q}~{r}~{s}[] = {};

          ll_bdhbdc~{q}~{r}~{s}[] += Boundary{ Surface{tmpbd~{r}~{s}[t]}; };
          ll_bdhbdc0~{q}~{r}~{s}[] = Abs(ll_bdhbdc~{q}~{r}~{s}[t]);
          pbdhbdc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbdc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhbdb~{q}~{r}~{s}[] = Abs(ll_bdhbd~{q}~{r}~{s}[t]);
          pbdhbdb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbd~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 2)
          ll_bdhbdc1~{q}~{r}~{s}[] = {};
          pbdhbdc1~{q}~{r}~{s}() = {};

          ll_bdhbdc1~{q}~{r}~{s}[] = Abs(ll_bdhbdc~{q}~{r}~{s}[t]);
          pbdhbdc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbdc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 2)
          ll_bdhbd1~{q}~{r}~{s}[] = {}; 
          pbdhbd1~{q}~{r}~{s}() = {};

          ll_bdhbd1~{q}~{r}~{s}[] = Abs(ll_bdhbd~{q}~{r}~{s}[t]);
          pbdhbd1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbd~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)
          ll_bdhbdt~{q}~{r}~{s}[] = Abs(ll_bdhbd~{q}~{r}~{s}[t]);
          pbdhbdt~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbd~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

    //----------------------------------------------------------
    // Face physsurf_bdh_1_1 (Corner 1 - Corner 2) - sbe/tmpbe

      If(r == 1 && s == 2)

      ll_bdhbet~{q}~{r}~{s}[] = {};
      ll_bdhbeb~{q}~{r}~{s}[] = {}; 

      pbdhbet~{q}~{r}~{s}() = {};
      pbdhbeb~{q}~{r}~{s}() = {};

      ll_bdhbe~{q}~{r}~{s}[] = {};

        ll_bdhbe~{q}~{r}~{s}[] += Boundary{ Surface{sbe~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 2)
          ll_bdhbec0~{q}~{r}~{s}[] = {};
          pbdhbec0~{q}~{r}~{s}() = {};
          ll_bdhbec~{q}~{r}~{s}[] = {};

          ll_bdhbec~{q}~{r}~{s}[] += Boundary{ Surface{tmpbe~{r}~{s}[t]}; };
          ll_bdhbec0~{q}~{r}~{s}[] = Abs(ll_bdhbec~{q}~{r}~{s}[t]);
          pbdhbec0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbec~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhbeb~{q}~{r}~{s}[] = Abs(ll_bdhbe~{q}~{r}~{s}[t]);
          pbdhbeb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbe~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 2)
          ll_bdhbec1~{q}~{r}~{s}[] = {};
          pbdhbec1~{q}~{r}~{s}() = {};

          ll_bdhbec1~{q}~{r}~{s}[] = Abs(ll_bdhbec~{q}~{r}~{s}[t]);
          pbdhbec1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbec~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 2)
          ll_bdhbe1~{q}~{r}~{s}[] = {}; 
          pbdhbe1~{q}~{r}~{s}() = {};

          ll_bdhbe1~{q}~{r}~{s}[] = Abs(ll_bdhbe~{q}~{r}~{s}[t]);
          pbdhbe1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbe~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)
          ll_bdhbet~{q}~{r}~{s}[] = Abs(ll_bdhbe~{q}~{r}~{s}[t]);
          pbdhbet~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbe~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf


/// sab_2_1[], sac_2_1[], sad_2_1[]

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
    // Face physsurf_bdh_1_2 (Corner 2 - Corner 3) - sad/tmpad

      If(r == 2 && s == 1)

      ll_bdhadt~{q}~{r}~{s}[] = {};
      ll_bdhadb~{q}~{r}~{s}[] = {}; 

      pbdhadt~{q}~{r}~{s}() = {};
      pbdhadb~{q}~{r}~{s}() = {};

      ll_bdhad~{q}~{r}~{s}[] = {};

        ll_bdhad~{q}~{r}~{s}[] += Boundary{ Surface{sad~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 1)
          ll_bdhadc0~{q}~{r}~{s}[] = {};
          pbdhadc0~{q}~{r}~{s}() = {};
          ll_bdhadc~{q}~{r}~{s}[] = {};

          ll_bdhadc~{q}~{r}~{s}[] += Boundary{ Surface{tmpad~{r}~{s}[t]}; };
          ll_bdhadc0~{q}~{r}~{s}[] = Abs(ll_bdhadc~{q}~{r}~{s}[t]);
          pbdhadc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhadc~{q}~{r}~{s}[t])}; };
        EndIf
      
        If(t == 3)
          ll_bdhadb~{q}~{r}~{s}[] = Abs(ll_bdhad~{q}~{r}~{s}[t]);
          pbdhadb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhad~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 1)
          ll_bdhad1~{q}~{r}~{s}[] = {};
          pbdhad1~{q}~{r}~{s}() = {};

          ll_bdhad1~{q}~{r}~{s}[] = Abs(ll_bdhad~{q}~{r}~{s}[t]);
          pbdhad1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhad~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhadt~{q}~{r}~{s}[] = Abs(ll_bdhad~{q}~{r}~{s}[t]);
          pbdhadt~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhad~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 1)
          ll_bdhadc1~{q}~{r}~{s}[] = {};
          pbdhadc1~{q}~{r}~{s}() = {};

          ll_bdhadc1~{q}~{r}~{s}[] = Abs(ll_bdhadc~{q}~{r}~{s}[t]);
          pbdhadc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhadc~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf


/// sbb_2_1[], sbc_2_1[], sbd_2_1[]

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

    //----------------------------------------------------------
    // Face physsurf_bdh_2_2 (Corner 4 - Corner 1) - sbd/tmpbd

      If(r == 2 && s == 1)

      ll_bdhbdt~{q}~{r}~{s}[] = {};
      ll_bdhbdb~{q}~{r}~{s}[] = {}; 

      pbdhbdt~{q}~{r}~{s}() = {};
      pbdhbdb~{q}~{r}~{s}() = {};

      ll_bdhbd~{q}~{r}~{s}[] = {};

        ll_bdhbd~{q}~{r}~{s}[] += Boundary{ Surface{sbd~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 1)
          ll_bdhbdc0~{q}~{r}~{s}[] = {};
          pbdhbdc0~{q}~{r}~{s}() = {};
          ll_bdhbdc~{q}~{r}~{s}[] = {};

          ll_bdhbdc~{q}~{r}~{s}[] += Boundary{ Surface{tmpbd~{r}~{s}[t]}; };
          ll_bdhbdc0~{q}~{r}~{s}[] = Abs(ll_bdhbdc~{q}~{r}~{s}[t]);
          pbdhbdc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbdc~{q}~{r}~{s}[t])}; };
        EndIf
      
        If(t == 3)
          ll_bdhbdb~{q}~{r}~{s}[] = Abs(ll_bdhbd~{q}~{r}~{s}[t]);
          pbdhbdb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbd~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 1)
          ll_bdhbd1~{q}~{r}~{s}[] = {};
          pbdhbd1~{q}~{r}~{s}() = {};

          ll_bdhbd1~{q}~{r}~{s}[] = Abs(ll_bdhbd~{q}~{r}~{s}[t]);
          pbdhbd1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbd~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhbdt~{q}~{r}~{s}[] = Abs(ll_bdhbd~{q}~{r}~{s}[t]);
          pbdhbdt~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbd~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 1)
          ll_bdhbdc1~{q}~{r}~{s}[] = {};
          pbdhbdc1~{q}~{r}~{s}() = {};

          ll_bdhbdc1~{q}~{r}~{s}[] = Abs(ll_bdhbdc~{q}~{r}~{s}[t]);
          pbdhbdc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbdc~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf


/// sac_2_2[], sad_2_2[], sae_2_2[]

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
    // Face physsurf_bdh_1_2 (Corner 2 - Corner 3) - sad/tmpad

      If(r == 2 && s == 2)

      ll_bdhadt~{q}~{r}~{s}[] = {};
      ll_bdhadb~{q}~{r}~{s}[] = {};
      pbdhadt~{q}~{r}~{s}() = {};
      pbdhadb~{q}~{r}~{s}() = {};

      ll_bdhad~{q}~{r}~{s}[] = {};

        ll_bdhad~{q}~{r}~{s}[] += Boundary{ Surface{sad~{r}~{s}[2]}; };

      For t In {0:3}
    
        If(t == 0 && s == 2)
          ll_bdhadc0~{q}~{r}~{s}[] = {};
          pbdhadc0~{q}~{r}~{s}() = {};
          ll_bdhadc~{q}~{r}~{s}[] = {};

          ll_bdhadc~{q}~{r}~{s}[] += Boundary{ Surface{tmpad~{r}~{s}[t]}; };
          ll_bdhadc0~{q}~{r}~{s}[] = Abs(ll_bdhadc~{q}~{r}~{s}[t]);
          pbdhadc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhadc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)
          ll_bdhadb~{q}~{r}~{s}[] = Abs(ll_bdhad~{q}~{r}~{s}[t]);
          pbdhadb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhad~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 2)
          ll_bdhad1~{q}~{r}~{s}[] = {};
          pbdhad1~{q}~{r}~{s}() = {};

          ll_bdhad1~{q}~{r}~{s}[] = Abs(ll_bdhad~{q}~{r}~{s}[t]);
          pbdhad1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhad~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)  
          ll_bdhadt~{q}~{r}~{s}[] = Abs(ll_bdhad~{q}~{r}~{s}[t]);
          pbdhadt~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhad~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 2)  
          ll_bdhadc1~{q}~{r}~{s}[] = {};
          pbdhadc1~{q}~{r}~{s}() = {};

          ll_bdhadc1~{q}~{r}~{s}[] = Abs(ll_bdhadc~{q}~{r}~{s}[t]);
          pbdhadc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhadc~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

      //----------------------------------------------------------
    // Face physsurf_bdh_1_2 (Corner 2 - Corner 3) - sae/tmpae

      If(r == 2 && s == 2)

      ll_bdhaet~{q}~{r}~{s}[] = {};
      ll_bdhaeb~{q}~{r}~{s}[] = {};
      pbdhaet~{q}~{r}~{s}() = {};
      pbdhaeb~{q}~{r}~{s}() = {};

      ll_bdhae~{q}~{r}~{s}[] = {};

        ll_bdhae~{q}~{r}~{s}[] += Boundary{ Surface{sae~{r}~{s}[2]}; };

      For t In {0:3}
    
        If(t == 0 && s == 2)
          ll_bdhaec0~{q}~{r}~{s}[] = {};
          pbdhaec0~{q}~{r}~{s}() = {};
          ll_bdhaec~{q}~{r}~{s}[] = {};

          ll_bdhaec~{q}~{r}~{s}[] += Boundary{ Surface{tmpae~{r}~{s}[t]}; };
          ll_bdhaec0~{q}~{r}~{s}[] = Abs(ll_bdhaec~{q}~{r}~{s}[t]);
          pbdhaec0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhaec~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)
          ll_bdhaeb~{q}~{r}~{s}[] = Abs(ll_bdhae~{q}~{r}~{s}[t]);
          pbdhaeb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhae~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 2)
          ll_bdhae1~{q}~{r}~{s}[] = {};
          pbdhae1~{q}~{r}~{s}() = {};

          ll_bdhae1~{q}~{r}~{s}[] = Abs(ll_bdhae~{q}~{r}~{s}[t]);
          pbdhae1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhae~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)  
          ll_bdhaet~{q}~{r}~{s}[] = Abs(ll_bdhae~{q}~{r}~{s}[t]);
          pbdhaet~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhae~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 2)  
          ll_bdhaec1~{q}~{r}~{s}[] = {};
          pbdhaec1~{q}~{r}~{s}() = {};

          ll_bdhaec1~{q}~{r}~{s}[] = Abs(ll_bdhaec~{q}~{r}~{s}[t]);
          pbdhaec1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhaec~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf


/// sbc_2_2[], sbd_2_2[], sbe_2_2[]

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

    //----------------------------------------------------------
    // Face physsurf_bdh_2_2 (Corner 4 - Corner 1) - sbd/tmpbd

      If(r == 2 && s == 2)

      ll_bdhbdt~{q}~{r}~{s}[] = {};
      ll_bdhbdb~{q}~{r}~{s}[] = {};
      pbdhbdt~{q}~{r}~{s}() = {};
      pbdhbdb~{q}~{r}~{s}() = {};

      ll_bdhbd~{q}~{r}~{s}[] = {};

        ll_bdhbd~{q}~{r}~{s}[] += Boundary{ Surface{sbd~{r}~{s}[2]}; };

      For t In {0:3}
    
        If(t == 0 && s == 2)
          ll_bdhbdc0~{q}~{r}~{s}[] = {};
          pbdhbdc0~{q}~{r}~{s}() = {};
          ll_bdhbdc~{q}~{r}~{s}[] = {};

          ll_bdhbdc~{q}~{r}~{s}[] += Boundary{ Surface{tmpbd~{r}~{s}[t]}; };
          ll_bdhbdc0~{q}~{r}~{s}[] = Abs(ll_bdhbdc~{q}~{r}~{s}[t]);
          pbdhbdc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbdc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)
          ll_bdhbdb~{q}~{r}~{s}[] = Abs(ll_bdhbd~{q}~{r}~{s}[t]);
          pbdhbdb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbd~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 2)
          ll_bdhbd1~{q}~{r}~{s}[] = {};
          pbdhbd1~{q}~{r}~{s}() = {};

          ll_bdhbd1~{q}~{r}~{s}[] = Abs(ll_bdhbd~{q}~{r}~{s}[t]);
          pbdhbd1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbd~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)  
          ll_bdhbdt~{q}~{r}~{s}[] = Abs(ll_bdhbd~{q}~{r}~{s}[t]);
          pbdhbdt~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbd~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 2)  
          ll_bdhbdc1~{q}~{r}~{s}[] = {};
          pbdhbdc1~{q}~{r}~{s}() = {};

          ll_bdhbdc1~{q}~{r}~{s}[] = Abs(ll_bdhbdc~{q}~{r}~{s}[t]);
          pbdhbdc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbdc~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

   //----------------------------------------------------------
    // Face physsurf_bdh_2_2 (Corner 4 - Corner 1) - sbe/tmpbe

      If(r == 2 && s == 2)

      ll_bdhbet~{q}~{r}~{s}[] = {};
      ll_bdhbeb~{q}~{r}~{s}[] = {};
      pbdhbet~{q}~{r}~{s}() = {};
      pbdhbeb~{q}~{r}~{s}() = {};

      ll_bdhbe~{q}~{r}~{s}[] = {};

        ll_bdhbe~{q}~{r}~{s}[] += Boundary{ Surface{sbe~{r}~{s}[2]}; };

      For t In {0:3}
    
        If(t == 0 && s == 2)
          ll_bdhbec0~{q}~{r}~{s}[] = {};
          pbdhbec0~{q}~{r}~{s}() = {};
          ll_bdhbec~{q}~{r}~{s}[] = {};

          ll_bdhbec~{q}~{r}~{s}[] += Boundary{ Surface{tmpbe~{r}~{s}[t]}; };
          ll_bdhbec0~{q}~{r}~{s}[] = Abs(ll_bdhbec~{q}~{r}~{s}[t]);
          pbdhbec0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbec~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)
          ll_bdhbeb~{q}~{r}~{s}[] = Abs(ll_bdhbe~{q}~{r}~{s}[t]);
          pbdhbeb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbe~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 2)
          ll_bdhbe1~{q}~{r}~{s}[] = {};
          pbdhbe1~{q}~{r}~{s}() = {};

          ll_bdhbe1~{q}~{r}~{s}[] = Abs(ll_bdhbe~{q}~{r}~{s}[t]);
          pbdhbe1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbe~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)  
          ll_bdhbet~{q}~{r}~{s}[] = Abs(ll_bdhbe~{q}~{r}~{s}[t]);
          pbdhbet~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbe~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 2)  
          ll_bdhbec1~{q}~{r}~{s}[] = {};
          pbdhbec1~{q}~{r}~{s}() = {};

          ll_bdhbec1~{q}~{r}~{s}[] = Abs(ll_bdhbec~{q}~{r}~{s}[t]);
          pbdhbec1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbec~{q}~{r}~{s}[t])}; };
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
    // End faces - saef_1_1_2[]
    //
    // -------------------------------

    If(r == 1 && s == 2) 

      ll_facesaeb~{q}~{r}~{s}[] = {};

        ll_facesaeb~{q}~{r}~{s}[] += Boundary{ Surface{saef~{q}~{r}~{s}[]}; };

        ptsaefmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesaeb~{q}~{r}~{s}[0])}; };
        psaefminchz~{q}~{r}~{s}[] = Point{ ptsaefmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesaebc1chz~{q}~{r}~{s}[] = Point{ ptsaefmin~{q}~{r}~{s}[w] };

        If( pfacesaebc1chz~{q}~{r}~{s}[2] < psaefminchz~{q}~{r}~{s}[2] )

          psaefminz[] = pfacesaebc1chz~{q}~{r}~{s}[2];
          ptsaefminz~{q}~{r}~{s}() = ptsaefmin~{q}~{r}~{s}[w];

        Else

          psaefminz[]  = psaefminchz~{q}~{r}~{s}[2];
          ptsaefminz~{q}~{r}~{s}() = ptsaefmin~{q}~{r}~{s}[0];

        EndIf

      EndFor


      For t In {1:2}

        ptfacesaebc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesaeb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesaebc1chz~{q}~{r}~{s}[] = Point{ ptfacesaebc1~{q}~{r}~{s}[l] };

          If( pfacesaebc1chz~{q}~{r}~{s}[2] < psaefminchz~{q}~{r}~{s}[2] )

            psaefminz[]  = pfacesaebc1chz~{q}~{r}~{s}[2];
            ptsaefminz~{q}~{r}~{s}() = ptfacesaebc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesaeb~{q}~{r}~{s}[] = {};

        ll_facesaeb~{q}~{r}~{s}[] += Boundary{ Surface{saef~{q}~{r}~{s}[]}; };

        ptsaefmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesaeb~{q}~{r}~{s}[0])}; };
        psaefminchz~{q}~{r}~{s}[] = Point{ ptsaefmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesaebc1chz~{q}~{r}~{s}[] = Point{ ptsaefmin~{q}~{r}~{s}[w] };

        If( pfacesaebc1chz~{q}~{r}~{s}[2] < psaefminchz~{q}~{r}~{s}[2] )

          psaefminz[]  = pfacesaebc1chz~{q}~{r}~{s}[2];
          ptsaefminz~{q}~{r}~{s}() = ptsaefmin~{q}~{r}~{s}[w];

        Else

          psaefminz[]  = psaefminchz~{q}~{r}~{s}[2];
          ptsaefminz~{q}~{r}~{s}() = ptsaefmin~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesaebc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesaeb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesaebc1chz~{q}~{r}~{s}[] = Point{ ptfacesaebc1~{q}~{r}~{s}[l] };
    
          If( pfacesaebc1chz~{q}~{r}~{s}[2] < psaefminchz~{q}~{r}~{s}[2] )

            psaefminz[]  = pfacesaebc1chz~{q}~{r}~{s}[2];
            ptsaefminz~{q}~{r}~{s}() = ptfacesaebc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesaeb~{q}~{r}~{s}[] = {};

        ll_facesaeb~{q}~{r}~{s}[] += Boundary{ Surface{saef~{q}~{r}~{s}[]}; };

        ptsaefmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesaeb~{q}~{r}~{s}[0])}; };
        psaefmaxchz~{q}~{r}~{s}[] = Point{ ptsaefmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesaebc1chz~{q}~{r}~{s}[] = Point{ ptsaefmax~{q}~{r}~{s}[w] };

        If( pfacesaebc1chz~{q}~{r}~{s}[2] > psaefmaxchz~{q}~{r}~{s}[2] )

          psaefmaxz~{q}~{r}~{s}[] = pfacesaebc1chz~{q}~{r}~{s}[2];
          ptsaefmaxz~{q}~{r}~{s}() = ptsaefmax~{q}~{r}~{s}[w];

        Else

          psaefmaxz~{q}~{r}~{s}[] = psaefmaxchz~{q}~{r}~{s}[2];
          ptsaefmaxz~{q}~{r}~{s}() = ptsaefmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesaebc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesaeb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesaebc1chz~{q}~{r}~{s}[] = Point{ ptfacesaebc1~{q}~{r}~{s}[l] };
    
          If( pfacesaebc1chz~{q}~{r}~{s}[2] > psaefmaxchz~{q}~{r}~{s}[2] )

            psaefmaxz~{q}~{r}~{s}[] = pfacesaebc1chz~{q}~{r}~{s}[2];
            ptsaefmaxz~{q}~{r}~{s}() = ptfacesaebc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesaeb~{q}~{r}~{s}[] = {};

        ll_facesaeb~{q}~{r}~{s}[] += Boundary{ Surface{saef~{q}~{r}~{s}[]}; };

        ptsaefmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesaeb~{q}~{r}~{s}[0])}; };
        psaefmaxchz~{q}~{r}~{s}[] = Point{ ptsaefmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesaebc1chz~{q}~{r}~{s}[] = Point{ ptsaefmax~{q}~{r}~{s}[w] };

        If( pfacesaebc1chz~{q}~{r}~{s}[2] > psaefmaxchz~{q}~{r}~{s}[2] )

          psaefmaxz~{q}~{r}~{s}[] = pfacesaebc1chz~{q}~{r}~{s}[2];
          ptsaefmaxz~{q}~{r}~{s}() = ptsaefmax~{q}~{r}~{s}[w];

        Else

          psaefmaxz~{q}~{r}~{s}[] = psaefmaxchz~{q}~{r}~{s}[2];
          ptsaefmaxz~{q}~{r}~{s}() = ptsaefmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesaebc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesaeb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesaebc1chz~{q}~{r}~{s}[] = Point{ ptfacesaebc1~{q}~{r}~{s}[l] };
    
          If( pfacesaebc1chz~{q}~{r}~{s}[2] > psaefmaxchz~{q}~{r}~{s}[2] )

            psaefmaxz~{q}~{r}~{s}[] = pfacesaebc1chz~{q}~{r}~{s}[2];
            ptsaefmaxz~{q}~{r}~{s}() = ptfacesaebc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor

    EndIf


    // -------------------------------
    //
    // End faces - sbef_1_1_2[]
    //
    // -------------------------------

    If(r == 1 && s == 2) 

      ll_facesbeb~{q}~{r}~{s}[] = {};

        ll_facesbeb~{q}~{r}~{s}[] += Boundary{ Surface{sbef~{q}~{r}~{s}[]}; };

        ptsbefmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbeb~{q}~{r}~{s}[0])}; };
        psbefminchz~{q}~{r}~{s}[] = Point{ ptsbefmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbebc1chz~{q}~{r}~{s}[] = Point{ ptsbefmin~{q}~{r}~{s}[w] };

        If( pfacesbebc1chz~{q}~{r}~{s}[2] < psbefminchz~{q}~{r}~{s}[2] )

          psbefminz[] = pfacesbebc1chz~{q}~{r}~{s}[2];
          ptsbefminz~{q}~{r}~{s}() = ptsbefmin~{q}~{r}~{s}[w];

        Else

          psbefminz[]  = psbefminchz~{q}~{r}~{s}[2];
          ptsbefminz~{q}~{r}~{s}() = ptsbefmin~{q}~{r}~{s}[0];

        EndIf

      EndFor


      For t In {1:2}

        ptfacesbebc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbeb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbebc1chz~{q}~{r}~{s}[] = Point{ ptfacesbebc1~{q}~{r}~{s}[l] };

          If( pfacesbebc1chz~{q}~{r}~{s}[2] < psbefminchz~{q}~{r}~{s}[2] )

            psbefminz[]  = pfacesbebc1chz~{q}~{r}~{s}[2];
            ptsbefminz~{q}~{r}~{s}() = ptfacesbebc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesbeb~{q}~{r}~{s}[] = {};

        ll_facesbeb~{q}~{r}~{s}[] += Boundary{ Surface{sbef~{q}~{r}~{s}[]}; };

        ptsbefmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbeb~{q}~{r}~{s}[0])}; };
        psbefminchz~{q}~{r}~{s}[] = Point{ ptsbefmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbebc1chz~{q}~{r}~{s}[] = Point{ ptsbefmin~{q}~{r}~{s}[w] };

        If( pfacesbebc1chz~{q}~{r}~{s}[2] < psbefminchz~{q}~{r}~{s}[2] )

          psbefminz[]  = pfacesbebc1chz~{q}~{r}~{s}[2];
          ptsbefminz~{q}~{r}~{s}() = ptsbefmin~{q}~{r}~{s}[w];

        Else

          psbefminz[]  = psbefminchz~{q}~{r}~{s}[2];
          ptsbefminz~{q}~{r}~{s}() = ptsbefmin~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesbebc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbeb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbebc1chz~{q}~{r}~{s}[] = Point{ ptfacesbebc1~{q}~{r}~{s}[l] };
    
          If( pfacesbebc1chz~{q}~{r}~{s}[2] < psbefminchz~{q}~{r}~{s}[2] )

            psbefminz[]  = pfacesbebc1chz~{q}~{r}~{s}[2];
            ptsbefminz~{q}~{r}~{s}() = ptfacesbebc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesbeb~{q}~{r}~{s}[] = {};

        ll_facesbeb~{q}~{r}~{s}[] += Boundary{ Surface{sbef~{q}~{r}~{s}[]}; };

        ptsbefmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbeb~{q}~{r}~{s}[0])}; };
        psbefmaxchz~{q}~{r}~{s}[] = Point{ ptsbefmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbebc1chz~{q}~{r}~{s}[] = Point{ ptsbefmax~{q}~{r}~{s}[w] };

        If( pfacesbebc1chz~{q}~{r}~{s}[2] > psbefmaxchz~{q}~{r}~{s}[2] )

          psbefmaxz~{q}~{r}~{s}[] = pfacesbebc1chz~{q}~{r}~{s}[2];
          ptsbefmaxz~{q}~{r}~{s}() = ptsbefmax~{q}~{r}~{s}[w];

        Else

          psbefmaxz~{q}~{r}~{s}[] = psbefmaxchz~{q}~{r}~{s}[2];
          ptsbefmaxz~{q}~{r}~{s}() = ptsbefmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesbebc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbeb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbebc1chz~{q}~{r}~{s}[] = Point{ ptfacesbebc1~{q}~{r}~{s}[l] };
    
          If( pfacesbebc1chz~{q}~{r}~{s}[2] > psbefmaxchz~{q}~{r}~{s}[2] )

            psbefmaxz~{q}~{r}~{s}[] = pfacesbebc1chz~{q}~{r}~{s}[2];
            ptsbefmaxz~{q}~{r}~{s}() = ptfacesbebc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesbeb~{q}~{r}~{s}[] = {};

        ll_facesbeb~{q}~{r}~{s}[] += Boundary{ Surface{sbef~{q}~{r}~{s}[]}; };

        ptsbefmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbeb~{q}~{r}~{s}[0])}; };
        psbefmaxchz~{q}~{r}~{s}[] = Point{ ptsbefmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbebc1chz~{q}~{r}~{s}[] = Point{ ptsbefmax~{q}~{r}~{s}[w] };

        If( pfacesbebc1chz~{q}~{r}~{s}[2] > psbefmaxchz~{q}~{r}~{s}[2] )

          psbefmaxz~{q}~{r}~{s}[] = pfacesbebc1chz~{q}~{r}~{s}[2];
          ptsbefmaxz~{q}~{r}~{s}() = ptsbefmax~{q}~{r}~{s}[w];

        Else

          psbefmaxz~{q}~{r}~{s}[] = psbefmaxchz~{q}~{r}~{s}[2];
          ptsbefmaxz~{q}~{r}~{s}() = ptsbefmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesbebc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbeb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbebc1chz~{q}~{r}~{s}[] = Point{ ptfacesbebc1~{q}~{r}~{s}[l] };
    
          If( pfacesbebc1chz~{q}~{r}~{s}[2] > psbefmaxchz~{q}~{r}~{s}[2] )

            psbefmaxz~{q}~{r}~{s}[] = pfacesbebc1chz~{q}~{r}~{s}[2];
            ptsbefmaxz~{q}~{r}~{s}() = ptfacesbebc1~{q}~{r}~{s}[l];

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
    // End faces - saef_2_2_2[]
    //
    // -------------------------------

    If(r == 2 && s == 2) 

      ll_facesaeb~{q}~{r}~{s}[] = {};

        ll_facesaeb~{q}~{r}~{s}[] += Boundary{ Surface{saef~{q}~{r}~{s}[]}; };

        ptsaefmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesaeb~{q}~{r}~{s}[0])}; };
        psaefminchz~{q}~{r}~{s}[] = Point{ ptsaefmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesaebc1chz~{q}~{r}~{s}[] = Point{ ptsaefmin~{q}~{r}~{s}[w] };

        If( pfacesaebc1chz~{q}~{r}~{s}[2] < psaefminchz~{q}~{r}~{s}[2] )

          psaefminz~{q}~{r}~{s}[] = pfacesaebc1chz~{q}~{r}~{s}[2];
          ptsaefminz~{q}~{r}~{s}() = ptsaefmin~{q}~{r}~{s}[w];

        Else

          psaefminz~{q}~{r}~{s}[] = psaefminchz~{q}~{r}~{s}[2];
          ptsaefminz~{q}~{r}~{s}() = ptsaefmin~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesaebc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesaeb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesaebc1chz~{q}~{r}~{s}[] = Point{ ptfacesaebc1~{q}~{r}~{s}[l] };
    
          If( pfacesaebc1chz~{q}~{r}~{s}[2] < psaefminchz~{q}~{r}~{s}[2] )

            psaefminz~{q}~{r}~{s}[] = pfacesaebc1chz~{q}~{r}~{s}[2];
            ptsaefminz~{q}~{r}~{s}() = ptfacesaebc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesaeb~{q}~{r}~{s}[] = {};

        ll_facesaeb~{q}~{r}~{s}[] += Boundary{ Surface{saef~{q}~{r}~{s}[]}; };

        ptsaefmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesaeb~{q}~{r}~{s}[0])}; };
        psaefminchz~{q}~{r}~{s}[] = Point{ ptsaefmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesaebc1chz~{q}~{r}~{s}[] = Point{ ptsaefmin~{q}~{r}~{s}[w] };

        If( pfacesaebc1chz~{q}~{r}~{s}[2] < psaefminchz~{q}~{r}~{s}[2] )

          psaefminz~{q}~{r}~{s}[] = pfacesaebc1chz~{q}~{r}~{s}[2];
          ptsaefminz~{q}~{r}~{s}() = ptsaefmin~{q}~{r}~{s}[w];

        Else

          psaefminz~{q}~{r}~{s}[] = psaefminchz~{q}~{r}~{s}[2];
          ptsaefminz~{q}~{r}~{s}() = ptsaefmin~{q}~{r}~{s}[0];

        EndIf

      EndFor

    
      For t In {1:2}

        ptfacesaebc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesaeb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesaebc1chz~{q}~{r}~{s}[] = Point{ ptfacesaebc1~{q}~{r}~{s}[l] };
    
          If( pfacesaebc1chz~{q}~{r}~{s}[2] < psaefminchz~{q}~{r}~{s}[2] )

            psaefminz~{q}~{r}~{s}[] = pfacesaebc1chz~{q}~{r}~{s}[2];
            ptsaefminz~{q}~{r}~{s}() = ptfacesaebc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesaeb~{q}~{r}~{s}[] = {};

        ll_facesaeb~{q}~{r}~{s}[] += Boundary{ Surface{saef~{q}~{r}~{s}[]}; };

        ptsaefmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesaeb~{q}~{r}~{s}[0])}; };
        psaefmaxchz~{q}~{r}~{s}[] = Point{ ptsaefmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesaebc1chz~{q}~{r}~{s}[] = Point{ ptsaefmax~{q}~{r}~{s}[w] };

        If( pfacesaebc1chz~{q}~{r}~{s}[2] > psaefmaxchz~{q}~{r}~{s}[2] )

          psaefmaxz~{q}~{r}~{s}[] = pfacesaebc1chz~{q}~{r}~{s}[2];
          ptsaefmaxz~{q}~{r}~{s}() = ptsaefmax~{q}~{r}~{s}[w];

        Else

          psaefmaxz~{q}~{r}~{s}[] = psaefmaxchz~{q}~{r}~{s}[2];
          ptsaefmaxz~{q}~{r}~{s}() = ptsaefmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesaebc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesaeb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesaebc1chz~{q}~{r}~{s}[] = Point{ ptfacesaebc1~{q}~{r}~{s}[l] };
    
          If( pfacesaebc1chz~{q}~{r}~{s}[2] > psaefmaxchz~{q}~{r}~{s}[2] )

            psaefmaxz~{q}~{r}~{s}[] = pfacesaebc1chz~{q}~{r}~{s}[2];
            ptsaefmaxz~{q}~{r}~{s}() = ptfacesaebc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesaeb~{q}~{r}~{s}[] = {};

        ll_facesaeb~{q}~{r}~{s}[] += Boundary{ Surface{saef~{q}~{r}~{s}[]}; };

        ptsaefmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesaeb~{q}~{r}~{s}[0])}; };
        psaefmaxchz~{q}~{r}~{s}[] = Point{ ptsaefmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesaebc1chz~{q}~{r}~{s}[] = Point{ ptsaefmax~{q}~{r}~{s}[w] };

        If( pfacesaebc1chz~{q}~{r}~{s}[2] > psaefmaxchz~{q}~{r}~{s}[2] )

          psaefmaxz~{q}~{r}~{s}[] = pfacesaebc1chz~{q}~{r}~{s}[2];
          ptsaefmaxz~{q}~{r}~{s}() = ptsaefmax~{q}~{r}~{s}[w];

        Else

          psaefmaxz~{q}~{r}~{s}[] = psaefmaxchz~{q}~{r}~{s}[2];
          ptsaefmaxz~{q}~{r}~{s}() = ptsaefmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesaebc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesaeb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesaebc1chz~{q}~{r}~{s}[] = Point{ ptfacesaebc1~{q}~{r}~{s}[l] };
    
          If( pfacesaebc1chz~{q}~{r}~{s}[2] > psaefmaxchz~{q}~{r}~{s}[2] )

            psaefmaxz~{q}~{r}~{s}[] = pfacesaebc1chz~{q}~{r}~{s}[2];
            ptsaefmaxz~{q}~{r}~{s}() = ptfacesaebc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor

    EndIf


    // -------------------------------
    //
    // End faces - sbef_2_2_2[]
    //
    // -------------------------------

    If(r == 2 && s == 2) 

      ll_facesbeb~{q}~{r}~{s}[] = {};

        ll_facesbeb~{q}~{r}~{s}[] += Boundary{ Surface{sbef~{q}~{r}~{s}[]}; };

        ptsbefmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbeb~{q}~{r}~{s}[0])}; };
        psbefminchz~{q}~{r}~{s}[] = Point{ ptsbefmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbebc1chz~{q}~{r}~{s}[] = Point{ ptsbefmin~{q}~{r}~{s}[w] };

        If( pfacesbebc1chz~{q}~{r}~{s}[2] < psbefminchz~{q}~{r}~{s}[2] )

          psbefminz~{q}~{r}~{s}[] = pfacesbebc1chz~{q}~{r}~{s}[2];
          ptsbefminz~{q}~{r}~{s}() = ptsbefmin~{q}~{r}~{s}[w];

        Else

          psbefminz~{q}~{r}~{s}[] = psbefminchz~{q}~{r}~{s}[2];
          ptsbefminz~{q}~{r}~{s}() = ptsbefmin~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesbebc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbeb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbebc1chz~{q}~{r}~{s}[] = Point{ ptfacesbebc1~{q}~{r}~{s}[l] };
    
          If( pfacesbebc1chz~{q}~{r}~{s}[2] < psbefminchz~{q}~{r}~{s}[2] )

            psbefminz~{q}~{r}~{s}[] = pfacesbebc1chz~{q}~{r}~{s}[2];
            ptsbefminz~{q}~{r}~{s}() = ptfacesbebc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesbeb~{q}~{r}~{s}[] = {};

        ll_facesbeb~{q}~{r}~{s}[] += Boundary{ Surface{sbef~{q}~{r}~{s}[]}; };

        ptsbefmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbeb~{q}~{r}~{s}[0])}; };
        psbefminchz~{q}~{r}~{s}[] = Point{ ptsbefmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbebc1chz~{q}~{r}~{s}[] = Point{ ptsbefmin~{q}~{r}~{s}[w] };

        If( pfacesbebc1chz~{q}~{r}~{s}[2] < psbefminchz~{q}~{r}~{s}[2] )

          psbefminz~{q}~{r}~{s}[] = pfacesbebc1chz~{q}~{r}~{s}[2];
          ptsbefminz~{q}~{r}~{s}() = ptsbefmin~{q}~{r}~{s}[w];

        Else

          psbefminz~{q}~{r}~{s}[] = psbefminchz~{q}~{r}~{s}[2];
          ptsbefminz~{q}~{r}~{s}() = ptsbefmin~{q}~{r}~{s}[0];

        EndIf

      EndFor

    
      For t In {1:2}

        ptfacesbebc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbeb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbebc1chz~{q}~{r}~{s}[] = Point{ ptfacesbebc1~{q}~{r}~{s}[l] };
    
          If( pfacesbebc1chz~{q}~{r}~{s}[2] < psbefminchz~{q}~{r}~{s}[2] )

            psbefminz~{q}~{r}~{s}[] = pfacesbebc1chz~{q}~{r}~{s}[2];
            ptsbefminz~{q}~{r}~{s}() = ptfacesbebc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesbeb~{q}~{r}~{s}[] = {};

        ll_facesbeb~{q}~{r}~{s}[] += Boundary{ Surface{sbef~{q}~{r}~{s}[]}; };

        ptsbefmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbeb~{q}~{r}~{s}[0])}; };
        psbefmaxchz~{q}~{r}~{s}[] = Point{ ptsbefmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbebc1chz~{q}~{r}~{s}[] = Point{ ptsbefmax~{q}~{r}~{s}[w] };

        If( pfacesbebc1chz~{q}~{r}~{s}[2] > psbefmaxchz~{q}~{r}~{s}[2] )

          psbefmaxz~{q}~{r}~{s}[] = pfacesbebc1chz~{q}~{r}~{s}[2];
          ptsbefmaxz~{q}~{r}~{s}() = ptsbefmax~{q}~{r}~{s}[w];

        Else

          psbefmaxz~{q}~{r}~{s}[] = psbefmaxchz~{q}~{r}~{s}[2];
          ptsbefmaxz~{q}~{r}~{s}() = ptsbefmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesbebc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbeb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbebc1chz~{q}~{r}~{s}[] = Point{ ptfacesbebc1~{q}~{r}~{s}[l] };
    
          If( pfacesbebc1chz~{q}~{r}~{s}[2] > psbefmaxchz~{q}~{r}~{s}[2] )

            psbefmaxz~{q}~{r}~{s}[] = pfacesbebc1chz~{q}~{r}~{s}[2];
            ptsbefmaxz~{q}~{r}~{s}() = ptfacesbebc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesbeb~{q}~{r}~{s}[] = {};

        ll_facesbeb~{q}~{r}~{s}[] += Boundary{ Surface{sbef~{q}~{r}~{s}[]}; };

        ptsbefmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbeb~{q}~{r}~{s}[0])}; };
        psbefmaxchz~{q}~{r}~{s}[] = Point{ ptsbefmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbebc1chz~{q}~{r}~{s}[] = Point{ ptsbefmax~{q}~{r}~{s}[w] };

        If( pfacesbebc1chz~{q}~{r}~{s}[2] > psbefmaxchz~{q}~{r}~{s}[2] )

          psbefmaxz~{q}~{r}~{s}[] = pfacesbebc1chz~{q}~{r}~{s}[2];
          ptsbefmaxz~{q}~{r}~{s}() = ptsbefmax~{q}~{r}~{s}[w];

        Else

          psbefmaxz~{q}~{r}~{s}[] = psbefmaxchz~{q}~{r}~{s}[2];
          ptsbefmaxz~{q}~{r}~{s}() = ptsbefmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesbebc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbeb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbebc1chz~{q}~{r}~{s}[] = Point{ ptfacesbebc1~{q}~{r}~{s}[l] };
    
          If( pfacesbebc1chz~{q}~{r}~{s}[2] > psbefmaxchz~{q}~{r}~{s}[2] )

            psbefmaxz~{q}~{r}~{s}[] = pfacesbebc1chz~{q}~{r}~{s}[2];
            ptsbefmaxz~{q}~{r}~{s}() = ptfacesbebc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor

    EndIf

    EndFor
  EndFor
EndFor


// End