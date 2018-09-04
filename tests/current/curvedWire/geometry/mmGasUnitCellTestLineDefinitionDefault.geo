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


//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// MMGASSTRWIRE LINE DEFINITION MODULE
//


For q In {1:2}
  For r In {1:2}
    For s In {1:2}


    // -------------------------------
    //
    // Face physsurf_bdh_1_1 (Corner 1 - Corner 2) - sbb_1_1 / sbb_1_2
    //
    // -------------------------------

    //----------------------------------------------------------
    // Face physsurf_bdh_1_1 (Corner 1 - Corner 2)

      If(q == 1 && r == 1)

      ll_bdhbt~{q}~{r}~{s}[] = {};
      ll_bdhbb~{q}~{r}~{s}[] = {};

      pbdhbt~{q}~{r}~{s}() = {};
      pbdhbb~{q}~{r}~{s}() = {};

      ll_bdhb~{q}~{r}~{s}[] = {};

        ll_bdhb~{q}~{r}~{s}[] += Boundary{ Surface{sbb~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 2)
          ll_bdhbc0~{q}~{r}~{s}[] = {};
          pbdhbc0~{q}~{r}~{s}() = {};
          ll_bdhbc~{q}~{r}~{s}[] = {};

          ll_bdhbc~{q}~{r}~{s}[] += Boundary{ Surface{tmpbb~{r}~{s}[t]}; };
          ll_bdhbc0~{q}~{r}~{s}[] = Abs(ll_bdhbc~{q}~{r}~{s}[t]);
          pbdhbc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhbb~{q}~{r}~{s}[] = Abs(ll_bdhb~{q}~{r}~{s}[t]);
          pbdhbb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhb~{q}~{r}~{s}[t])}; };
        EndIf  

        If(t == 1 && s == 2)
          ll_bdhbc1~{q}~{r}~{s}[] = {};
          pbdhbc1~{q}~{r}~{s}() = {};

          ll_bdhbc1~{q}~{r}~{s}[] = Abs(ll_bdhbc~{q}~{r}~{s}[t]);
          pbdhbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 2)
          ll_bdhb1~{q}~{r}~{s}[] = {};
          pbdhb1~{q}~{r}~{s}() = {};

          ll_bdhb1~{q}~{r}~{s}[] = Abs(ll_bdhb~{q}~{r}~{s}[t]);
          pbdhb1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhb~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)  
          ll_bdhbt~{q}~{r}~{s}[] = Abs(ll_bdhb~{q}~{r}~{s}[t]);
          pbdhbt~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhb~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

    // -------------------------------
    //
    // Face physsurf_bdh_1_2 (Corner 2 - Corner 3) - sab_2_1 / sab_2_2
    //
    // -------------------------------

    //----------------------------------------------------------
    // Face physsurf_bdh_1_2 (Corner 2 - Corner 3)

      If(q == 1 && r == 2)

      ll_bdhat~{q}~{r}~{s}[] = {};
      ll_bdhab~{q}~{r}~{s}[] = {}; 

      pbdhat~{q}~{r}~{s}() = {};
      pbdhab~{q}~{r}~{s}() = {};

      ll_bdha~{q}~{r}~{s}[] = {};

        ll_bdha~{q}~{r}~{s}[] += Boundary{ Surface{sab~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 2)
          ll_bdhac0~{q}~{r}~{s}[] = {};
          pbdhac0~{q}~{r}~{s}() = {};
          ll_bdhac~{q}~{r}~{s}[] = {};

          ll_bdhac~{q}~{r}~{s}[] += Boundary{ Surface{tmpab~{r}~{s}[t]}; };
          ll_bdhac0~{q}~{r}~{s}[] = Abs(ll_bdhac~{q}~{r}~{s}[t]);
          pbdhac0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhac~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhab~{q}~{r}~{s}[] = Abs(ll_bdha~{q}~{r}~{s}[t]);
          pbdhab~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdha~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 2)
          ll_bdhac1~{q}~{r}~{s}[] = {};
          pbdhac1~{q}~{r}~{s}() = {};

          ll_bdhac1~{q}~{r}~{s}[] = Abs(ll_bdhac~{q}~{r}~{s}[t]);
          pbdhac1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhac~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 2)
          ll_bdha1~{q}~{r}~{s}[] = {}; 
          pbdha1~{q}~{r}~{s}() = {};

          ll_bdha1~{q}~{r}~{s}[] = Abs(ll_bdha~{q}~{r}~{s}[t]);
          pbdha1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdha~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)
          ll_bdhat~{q}~{r}~{s}[] = Abs(ll_bdha~{q}~{r}~{s}[t]);
          pbdhat~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdha~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

    // -------------------------------
    //
    // Face physsurf_bdh_2_1 (Corner 3 - Corner 4) - sab_1_1[] / sab_1_2[]
    //
    // -------------------------------

    //----------------------------------------------------------
    // Face physsurf_bdh_2_1 (Corner 3 - Corner 4)

      If(q == 2 && r == 1)

      ll_bdhat~{q}~{r}~{s}[] = {};
      ll_bdhab~{q}~{r}~{s}[] = {}; 

      pbdhat~{q}~{r}~{s}() = {};
      pbdhab~{q}~{r}~{s}() = {};

      ll_bdha~{q}~{r}~{s}[] = {};

        ll_bdha~{q}~{r}~{s}[] += Boundary{ Surface{sab~{r}~{s}[2]}; };

      For t In {0:3}

        If(t == 0 && s == 2)
          ll_bdhac0~{q}~{r}~{s}[] = {};
          pbdhac0~{q}~{r}~{s}() = {};
          ll_bdhac~{q}~{r}~{s}[] = {};

          ll_bdhac~{q}~{r}~{s}[] += Boundary{ Surface{tmpab~{r}~{s}[t]}; };
          ll_bdhac0~{q}~{r}~{s}[] = Abs(ll_bdhac~{q}~{r}~{s}[t]);
          pbdhac0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhac~{q}~{r}~{s}[t])}; };
        EndIf
      
        If(t == 3)
          ll_bdhab~{q}~{r}~{s}[] = Abs(ll_bdha~{q}~{r}~{s}[t]);
          pbdhab~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdha~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 2)
          ll_bdha1~{q}~{r}~{s}[] = {};
          pbdha1~{q}~{r}~{s}() = {};

          ll_bdha1~{q}~{r}~{s}[] = Abs(ll_bdha~{q}~{r}~{s}[t]);
          pbdha1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdha~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)
          ll_bdhat~{q}~{r}~{s}[] = Abs(ll_bdha~{q}~{r}~{s}[t]);
          pbdhat~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdha~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 2)
          ll_bdhac1~{q}~{r}~{s}[] = {};
          pbdhac1~{q}~{r}~{s}() = {};

          ll_bdhac1~{q}~{r}~{s}[] = Abs(ll_bdhac~{q}~{r}~{s}[t]);
          pbdhac1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhac~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

    // -------------------------------
    //
    // Face physsurf_bdh_2_2 (Corner 4 - Corner 1) - sbb_2_1[] / sbb_2_2[]
    //
    // -------------------------------

    //----------------------------------------------------------
    // Face physsurf_bdh_2_2 (Corner 4 - Corner 1)

      If(q == 2 && r == 2) 

      ll_bdhbt~{q}~{r}~{s}[] = {};
      ll_bdhbb~{q}~{r}~{s}[] = {};
      pbdhbt~{q}~{r}~{s}() = {};
      pbdhbb~{q}~{r}~{s}() = {};

      ll_bdhb~{q}~{r}~{s}[] = {};

        ll_bdhb~{q}~{r}~{s}[] += Boundary{ Surface{sbb~{r}~{s}[2]}; };

      For t In {0:3}
    
        If(t == 0 && s == 2)
          ll_bdhbc0~{q}~{r}~{s}[] = {};
          pbdhbc0~{q}~{r}~{s}() = {};
          ll_bdhbc~{q}~{r}~{s}[] = {};

          ll_bdhbc~{q}~{r}~{s}[] += Boundary{ Surface{tmpbb~{r}~{s}[t]}; };
          ll_bdhbc0~{q}~{r}~{s}[] = Abs(ll_bdhbc~{q}~{r}~{s}[t]);
          pbdhbc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbc~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 3)
          ll_bdhbb~{q}~{r}~{s}[] = Abs(ll_bdhb~{q}~{r}~{s}[t]);
          pbdhbb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhb~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 2 && s == 2)
          ll_bdhb1~{q}~{r}~{s}[] = {};
          pbdhb1~{q}~{r}~{s}() = {};

          ll_bdhb1~{q}~{r}~{s}[] = Abs(ll_bdhb~{q}~{r}~{s}[t]);
          pbdhb1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhb~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1)  
          ll_bdhbt~{q}~{r}~{s}[] = Abs(ll_bdhb~{q}~{r}~{s}[t]);
          pbdhbt~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhb~{q}~{r}~{s}[t])}; };
        EndIf

        If(t == 1 && s == 2)  
          ll_bdhbc1~{q}~{r}~{s}[] = {};
          pbdhbc1~{q}~{r}~{s}() = {};

          ll_bdhbc1~{q}~{r}~{s}[] = Abs(ll_bdhbc~{q}~{r}~{s}[t]);
          pbdhbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbc~{q}~{r}~{s}[t])}; };
        EndIf

      EndFor

      EndIf

    EndFor
  EndFor
EndFor


// sabf_1_1_2[], sbbf_1_1_2[], sabf_2_2_2[], sbbf_2_2_2[]


For q In {1:1}
  For r In {1:1}
    For s In {2:2}


    // -------------------------------
    //
    // End faces - sabf_1_1_2[]
    //
    // -------------------------------

    If(r == 1 && s == 2) 

      ll_facesabb~{q}~{r}~{s}[] = {};

        ll_facesabb~{q}~{r}~{s}[] += Boundary{ Surface{sabf~{q}~{r}~{s}[]}; };

        ptsabfmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesabb~{q}~{r}~{s}[0])}; };
        psabfminchz~{q}~{r}~{s}[] = Point{ ptsabfmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesabbc1chz~{q}~{r}~{s}[] = Point{ ptsabfmin~{q}~{r}~{s}[w] };

        If( pfacesabbc1chz~{q}~{r}~{s}[2] < psabfminchz~{q}~{r}~{s}[2] )

          psabfminz[] = pfacesabbc1chz~{q}~{r}~{s}[2];
          ptsabfminz~{q}~{r}~{s}() = ptsabfmin~{q}~{r}~{s}[w];

        Else

          psabfminz[]  = psabfminchz~{q}~{r}~{s}[2];
          ptsabfminz~{q}~{r}~{s}() = ptsabfmin~{q}~{r}~{s}[0];

        EndIf

      EndFor


      For t In {1:2}

        ptfacesabbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesabb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesabbc1chz~{q}~{r}~{s}[] = Point{ ptfacesabbc1~{q}~{r}~{s}[l] };

          If( pfacesabbc1chz~{q}~{r}~{s}[2] < psabfminchz~{q}~{r}~{s}[2] )

            psabfminz[]  = pfacesabbc1chz~{q}~{r}~{s}[2];
            ptsabfminz~{q}~{r}~{s}() = ptfacesabbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesabb~{q}~{r}~{s}[] = {};

        ll_facesabb~{q}~{r}~{s}[] += Boundary{ Surface{sabf~{q}~{r}~{s}[]}; };

        ptsabfmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesabb~{q}~{r}~{s}[0])}; };
        psabfminchz~{q}~{r}~{s}[] = Point{ ptsabfmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesabbc1chz~{q}~{r}~{s}[] = Point{ ptsabfmin~{q}~{r}~{s}[w] };

        If( pfacesabbc1chz~{q}~{r}~{s}[2] < psabfminchz~{q}~{r}~{s}[2] )

          psabfminz[]  = pfacesabbc1chz~{q}~{r}~{s}[2];
          ptsabfminz~{q}~{r}~{s}() = ptsabfmin~{q}~{r}~{s}[w];

        Else

          psabfminz[]  = psabfminchz~{q}~{r}~{s}[2];
          ptsabfminz~{q}~{r}~{s}() = ptsabfmin~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesabbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesabb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesabbc1chz~{q}~{r}~{s}[] = Point{ ptfacesabbc1~{q}~{r}~{s}[l] };
    
          If( pfacesabbc1chz~{q}~{r}~{s}[2] < psabfminchz~{q}~{r}~{s}[2] )

            psabfminz[]  = pfacesabbc1chz~{q}~{r}~{s}[2];
            ptsabfminz~{q}~{r}~{s}() = ptfacesabbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesabb~{q}~{r}~{s}[] = {};

        ll_facesabb~{q}~{r}~{s}[] += Boundary{ Surface{sabf~{q}~{r}~{s}[]}; };

        ptsabfmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesabb~{q}~{r}~{s}[0])}; };
        psabfmaxchz~{q}~{r}~{s}[] = Point{ ptsabfmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesabbc1chz~{q}~{r}~{s}[] = Point{ ptsabfmax~{q}~{r}~{s}[w] };

        If( pfacesabbc1chz~{q}~{r}~{s}[2] > psabfmaxchz~{q}~{r}~{s}[2] )

          psabfmaxz~{q}~{r}~{s}[] = pfacesabbc1chz~{q}~{r}~{s}[2];
          ptsabfmaxz~{q}~{r}~{s}() = ptsabfmax~{q}~{r}~{s}[w];

        Else

          psabfmaxz~{q}~{r}~{s}[] = psabfmaxchz~{q}~{r}~{s}[2];
          ptsabfmaxz~{q}~{r}~{s}() = ptsabfmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesabbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesabb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesabbc1chz~{q}~{r}~{s}[] = Point{ ptfacesabbc1~{q}~{r}~{s}[l] };
    
          If( pfacesabbc1chz~{q}~{r}~{s}[2] > psabfmaxchz~{q}~{r}~{s}[2] )

            psabfmaxz~{q}~{r}~{s}[] = pfacesabbc1chz~{q}~{r}~{s}[2];
            ptsabfmaxz~{q}~{r}~{s}() = ptfacesabbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesabb~{q}~{r}~{s}[] = {};

        ll_facesabb~{q}~{r}~{s}[] += Boundary{ Surface{sabf~{q}~{r}~{s}[]}; };

        ptsabfmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesabb~{q}~{r}~{s}[0])}; };
        psabfmaxchz~{q}~{r}~{s}[] = Point{ ptsabfmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesabbc1chz~{q}~{r}~{s}[] = Point{ ptsabfmax~{q}~{r}~{s}[w] };

        If( pfacesabbc1chz~{q}~{r}~{s}[2] > psabfmaxchz~{q}~{r}~{s}[2] )

          psabfmaxz~{q}~{r}~{s}[] = pfacesabbc1chz~{q}~{r}~{s}[2];
          ptsabfmaxz~{q}~{r}~{s}() = ptsabfmax~{q}~{r}~{s}[w];

        Else

          psabfmaxz~{q}~{r}~{s}[] = psabfmaxchz~{q}~{r}~{s}[2];
          ptsabfmaxz~{q}~{r}~{s}() = ptsabfmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesabbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesabb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesabbc1chz~{q}~{r}~{s}[] = Point{ ptfacesabbc1~{q}~{r}~{s}[l] };
    
          If( pfacesabbc1chz~{q}~{r}~{s}[2] > psabfmaxchz~{q}~{r}~{s}[2] )

            psabfmaxz~{q}~{r}~{s}[] = pfacesabbc1chz~{q}~{r}~{s}[2];
            ptsabfmaxz~{q}~{r}~{s}() = ptfacesabbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor

    EndIf


    // -------------------------------
    //
    // End faces - sbbf_1_1_2[]
    //
    // -------------------------------

    If(r == 1 && s == 2) 

      ll_facesbbb~{q}~{r}~{s}[] = {};

        ll_facesbbb~{q}~{r}~{s}[] += Boundary{ Surface{sbbf~{q}~{r}~{s}[]}; };

        ptsbbfmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbbb~{q}~{r}~{s}[0])}; };
        psbbfminchz~{q}~{r}~{s}[] = Point{ ptsbbfmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbbbc1chz~{q}~{r}~{s}[] = Point{ ptsbbfmin~{q}~{r}~{s}[w] };

        If( pfacesbbbc1chz~{q}~{r}~{s}[2] < psbbfminchz~{q}~{r}~{s}[2] )

          psbbfminz[] = pfacesbbbc1chz~{q}~{r}~{s}[2];
          ptsbbfminz~{q}~{r}~{s}() = ptsbbfmin~{q}~{r}~{s}[w];

        Else

          psbbfminz[]  = psbbfminchz~{q}~{r}~{s}[2];
          ptsbbfminz~{q}~{r}~{s}() = ptsbbfmin~{q}~{r}~{s}[0];

        EndIf

      EndFor


      For t In {1:2}

        ptfacesbbbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbbb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbbbc1chz~{q}~{r}~{s}[] = Point{ ptfacesbbbc1~{q}~{r}~{s}[l] };

          If( pfacesbbbc1chz~{q}~{r}~{s}[2] < psbbfminchz~{q}~{r}~{s}[2] )

            psbbfminz[]  = pfacesbbbc1chz~{q}~{r}~{s}[2];
            ptsbbfminz~{q}~{r}~{s}() = ptfacesbbbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesbbb~{q}~{r}~{s}[] = {};

        ll_facesbbb~{q}~{r}~{s}[] += Boundary{ Surface{sbbf~{q}~{r}~{s}[]}; };

        ptsbbfmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbbb~{q}~{r}~{s}[0])}; };
        psbbfminchz~{q}~{r}~{s}[] = Point{ ptsbbfmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbbbc1chz~{q}~{r}~{s}[] = Point{ ptsbbfmin~{q}~{r}~{s}[w] };

        If( pfacesbbbc1chz~{q}~{r}~{s}[2] < psbbfminchz~{q}~{r}~{s}[2] )

          psbbfminz[]  = pfacesbbbc1chz~{q}~{r}~{s}[2];
          ptsbbfminz~{q}~{r}~{s}() = ptsbbfmin~{q}~{r}~{s}[w];

        Else

          psbbfminz[]  = psbbfminchz~{q}~{r}~{s}[2];
          ptsbbfminz~{q}~{r}~{s}() = ptsbbfmin~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesbbbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbbb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbbbc1chz~{q}~{r}~{s}[] = Point{ ptfacesbbbc1~{q}~{r}~{s}[l] };
    
          If( pfacesbbbc1chz~{q}~{r}~{s}[2] < psbbfminchz~{q}~{r}~{s}[2] )

            psbbfminz[]  = pfacesbbbc1chz~{q}~{r}~{s}[2];
            ptsbbfminz~{q}~{r}~{s}() = ptfacesbbbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesbbb~{q}~{r}~{s}[] = {};

        ll_facesbbb~{q}~{r}~{s}[] += Boundary{ Surface{sbbf~{q}~{r}~{s}[]}; };

        ptsbbfmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbbb~{q}~{r}~{s}[0])}; };
        psbbfmaxchz~{q}~{r}~{s}[] = Point{ ptsbbfmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbbbc1chz~{q}~{r}~{s}[] = Point{ ptsbbfmax~{q}~{r}~{s}[w] };

        If( pfacesbbbc1chz~{q}~{r}~{s}[2] > psbbfmaxchz~{q}~{r}~{s}[2] )

          psbbfmaxz~{q}~{r}~{s}[] = pfacesbbbc1chz~{q}~{r}~{s}[2];
          ptsbbfmaxz~{q}~{r}~{s}() = ptsbbfmax~{q}~{r}~{s}[w];

        Else

          psbbfmaxz~{q}~{r}~{s}[] = psbbfmaxchz~{q}~{r}~{s}[2];
          ptsbbfmaxz~{q}~{r}~{s}() = ptsbbfmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesbbbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbbb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbbbc1chz~{q}~{r}~{s}[] = Point{ ptfacesbbbc1~{q}~{r}~{s}[l] };
    
          If( pfacesbbbc1chz~{q}~{r}~{s}[2] > psbbfmaxchz~{q}~{r}~{s}[2] )

            psbbfmaxz~{q}~{r}~{s}[] = pfacesbbbc1chz~{q}~{r}~{s}[2];
            ptsbbfmaxz~{q}~{r}~{s}() = ptfacesbbbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesbbb~{q}~{r}~{s}[] = {};

        ll_facesbbb~{q}~{r}~{s}[] += Boundary{ Surface{sbbf~{q}~{r}~{s}[]}; };

        ptsbbfmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbbb~{q}~{r}~{s}[0])}; };
        psbbfmaxchz~{q}~{r}~{s}[] = Point{ ptsbbfmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbbbc1chz~{q}~{r}~{s}[] = Point{ ptsbbfmax~{q}~{r}~{s}[w] };

        If( pfacesbbbc1chz~{q}~{r}~{s}[2] > psbbfmaxchz~{q}~{r}~{s}[2] )

          psbbfmaxz~{q}~{r}~{s}[] = pfacesbbbc1chz~{q}~{r}~{s}[2];
          ptsbbfmaxz~{q}~{r}~{s}() = ptsbbfmax~{q}~{r}~{s}[w];

        Else

          psbbfmaxz~{q}~{r}~{s}[] = psbbfmaxchz~{q}~{r}~{s}[2];
          ptsbbfmaxz~{q}~{r}~{s}() = ptsbbfmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesbbbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbbb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbbbc1chz~{q}~{r}~{s}[] = Point{ ptfacesbbbc1~{q}~{r}~{s}[l] };
    
          If( pfacesbbbc1chz~{q}~{r}~{s}[2] > psbbfmaxchz~{q}~{r}~{s}[2] )

            psbbfmaxz~{q}~{r}~{s}[] = pfacesbbbc1chz~{q}~{r}~{s}[2];
            ptsbbfmaxz~{q}~{r}~{s}() = ptfacesbbbc1~{q}~{r}~{s}[l];

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
    // End faces - sabf_2_2_2[]
    //
    // -------------------------------

    If(r == 2 && s == 2) 

      ll_facesabb~{q}~{r}~{s}[] = {};

        ll_facesabb~{q}~{r}~{s}[] += Boundary{ Surface{sabf~{q}~{r}~{s}[]}; };

        ptsabfmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesabb~{q}~{r}~{s}[0])}; };
        psabfminchz~{q}~{r}~{s}[] = Point{ ptsabfmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesabbc1chz~{q}~{r}~{s}[] = Point{ ptsabfmin~{q}~{r}~{s}[w] };

        If( pfacesabbc1chz~{q}~{r}~{s}[2] < psabfminchz~{q}~{r}~{s}[2] )

          psabfminz~{q}~{r}~{s}[] = pfacesabbc1chz~{q}~{r}~{s}[2];
          ptsabfminz~{q}~{r}~{s}() = ptsabfmin~{q}~{r}~{s}[w];

        Else

          psabfminz~{q}~{r}~{s}[] = psabfminchz~{q}~{r}~{s}[2];
          ptsabfminz~{q}~{r}~{s}() = ptsabfmin~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesabbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesabb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesabbc1chz~{q}~{r}~{s}[] = Point{ ptfacesabbc1~{q}~{r}~{s}[l] };
    
          If( pfacesabbc1chz~{q}~{r}~{s}[2] < psabfminchz~{q}~{r}~{s}[2] )

            psabfminz~{q}~{r}~{s}[] = pfacesabbc1chz~{q}~{r}~{s}[2];
            ptsabfminz~{q}~{r}~{s}() = ptfacesabbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesabb~{q}~{r}~{s}[] = {};

        ll_facesabb~{q}~{r}~{s}[] += Boundary{ Surface{sabf~{q}~{r}~{s}[]}; };

        ptsabfmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesabb~{q}~{r}~{s}[0])}; };
        psabfminchz~{q}~{r}~{s}[] = Point{ ptsabfmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesabbc1chz~{q}~{r}~{s}[] = Point{ ptsabfmin~{q}~{r}~{s}[w] };

        If( pfacesabbc1chz~{q}~{r}~{s}[2] < psabfminchz~{q}~{r}~{s}[2] )

          psabfminz~{q}~{r}~{s}[] = pfacesabbc1chz~{q}~{r}~{s}[2];
          ptsabfminz~{q}~{r}~{s}() = ptsabfmin~{q}~{r}~{s}[w];

        Else

          psabfminz~{q}~{r}~{s}[] = psabfminchz~{q}~{r}~{s}[2];
          ptsabfminz~{q}~{r}~{s}() = ptsabfmin~{q}~{r}~{s}[0];

        EndIf

      EndFor

    
      For t In {1:2}

        ptfacesabbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesabb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesabbc1chz~{q}~{r}~{s}[] = Point{ ptfacesabbc1~{q}~{r}~{s}[l] };
    
          If( pfacesabbc1chz~{q}~{r}~{s}[2] < psabfminchz~{q}~{r}~{s}[2] )

            psabfminz~{q}~{r}~{s}[] = pfacesabbc1chz~{q}~{r}~{s}[2];
            ptsabfminz~{q}~{r}~{s}() = ptfacesabbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesabb~{q}~{r}~{s}[] = {};

        ll_facesabb~{q}~{r}~{s}[] += Boundary{ Surface{sabf~{q}~{r}~{s}[]}; };

        ptsabfmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesabb~{q}~{r}~{s}[0])}; };
        psabfmaxchz~{q}~{r}~{s}[] = Point{ ptsabfmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesabbc1chz~{q}~{r}~{s}[] = Point{ ptsabfmax~{q}~{r}~{s}[w] };

        If( pfacesabbc1chz~{q}~{r}~{s}[2] > psabfmaxchz~{q}~{r}~{s}[2] )

          psabfmaxz~{q}~{r}~{s}[] = pfacesabbc1chz~{q}~{r}~{s}[2];
          ptsabfmaxz~{q}~{r}~{s}() = ptsabfmax~{q}~{r}~{s}[w];

        Else

          psabfmaxz~{q}~{r}~{s}[] = psabfmaxchz~{q}~{r}~{s}[2];
          ptsabfmaxz~{q}~{r}~{s}() = ptsabfmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesabbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesabb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesabbc1chz~{q}~{r}~{s}[] = Point{ ptfacesabbc1~{q}~{r}~{s}[l] };
    
          If( pfacesabbc1chz~{q}~{r}~{s}[2] > psabfmaxchz~{q}~{r}~{s}[2] )

            psabfmaxz~{q}~{r}~{s}[] = pfacesabbc1chz~{q}~{r}~{s}[2];
            ptsabfmaxz~{q}~{r}~{s}() = ptfacesabbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesabb~{q}~{r}~{s}[] = {};

        ll_facesabb~{q}~{r}~{s}[] += Boundary{ Surface{sabf~{q}~{r}~{s}[]}; };

        ptsabfmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesabb~{q}~{r}~{s}[0])}; };
        psabfmaxchz~{q}~{r}~{s}[] = Point{ ptsabfmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesabbc1chz~{q}~{r}~{s}[] = Point{ ptsabfmax~{q}~{r}~{s}[w] };

        If( pfacesabbc1chz~{q}~{r}~{s}[2] > psabfmaxchz~{q}~{r}~{s}[2] )

          psabfmaxz~{q}~{r}~{s}[] = pfacesabbc1chz~{q}~{r}~{s}[2];
          ptsabfmaxz~{q}~{r}~{s}() = ptsabfmax~{q}~{r}~{s}[w];

        Else

          psabfmaxz~{q}~{r}~{s}[] = psabfmaxchz~{q}~{r}~{s}[2];
          ptsabfmaxz~{q}~{r}~{s}() = ptsabfmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesabbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesabb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesabbc1chz~{q}~{r}~{s}[] = Point{ ptfacesabbc1~{q}~{r}~{s}[l] };
    
          If( pfacesabbc1chz~{q}~{r}~{s}[2] > psabfmaxchz~{q}~{r}~{s}[2] )

            psabfmaxz~{q}~{r}~{s}[] = pfacesabbc1chz~{q}~{r}~{s}[2];
            ptsabfmaxz~{q}~{r}~{s}() = ptfacesabbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor

    EndIf


    // -------------------------------
    //
    // End faces - sbbf_2_2_2[]
    //
    // -------------------------------

    If(r == 2 && s == 2) 

      ll_facesbbb~{q}~{r}~{s}[] = {};

        ll_facesbbb~{q}~{r}~{s}[] += Boundary{ Surface{sbbf~{q}~{r}~{s}[]}; };

        ptsbbfmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbbb~{q}~{r}~{s}[0])}; };
        psbbfminchz~{q}~{r}~{s}[] = Point{ ptsbbfmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbbbc1chz~{q}~{r}~{s}[] = Point{ ptsbbfmin~{q}~{r}~{s}[w] };

        If( pfacesbbbc1chz~{q}~{r}~{s}[2] < psbbfminchz~{q}~{r}~{s}[2] )

          psbbfminz~{q}~{r}~{s}[] = pfacesbbbc1chz~{q}~{r}~{s}[2];
          ptsbbfminz~{q}~{r}~{s}() = ptsbbfmin~{q}~{r}~{s}[w];

        Else

          psbbfminz~{q}~{r}~{s}[] = psbbfminchz~{q}~{r}~{s}[2];
          ptsbbfminz~{q}~{r}~{s}() = ptsbbfmin~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesbbbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbbb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbbbc1chz~{q}~{r}~{s}[] = Point{ ptfacesbbbc1~{q}~{r}~{s}[l] };
    
          If( pfacesbbbc1chz~{q}~{r}~{s}[2] < psbbfminchz~{q}~{r}~{s}[2] )

            psbbfminz~{q}~{r}~{s}[] = pfacesbbbc1chz~{q}~{r}~{s}[2];
            ptsbbfminz~{q}~{r}~{s}() = ptfacesbbbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesbbb~{q}~{r}~{s}[] = {};

        ll_facesbbb~{q}~{r}~{s}[] += Boundary{ Surface{sbbf~{q}~{r}~{s}[]}; };

        ptsbbfmin~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbbb~{q}~{r}~{s}[0])}; };
        psbbfminchz~{q}~{r}~{s}[] = Point{ ptsbbfmin~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbbbc1chz~{q}~{r}~{s}[] = Point{ ptsbbfmin~{q}~{r}~{s}[w] };

        If( pfacesbbbc1chz~{q}~{r}~{s}[2] < psbbfminchz~{q}~{r}~{s}[2] )

          psbbfminz~{q}~{r}~{s}[] = pfacesbbbc1chz~{q}~{r}~{s}[2];
          ptsbbfminz~{q}~{r}~{s}() = ptsbbfmin~{q}~{r}~{s}[w];

        Else

          psbbfminz~{q}~{r}~{s}[] = psbbfminchz~{q}~{r}~{s}[2];
          ptsbbfminz~{q}~{r}~{s}() = ptsbbfmin~{q}~{r}~{s}[0];

        EndIf

      EndFor

    
      For t In {1:2}

        ptfacesbbbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbbb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbbbc1chz~{q}~{r}~{s}[] = Point{ ptfacesbbbc1~{q}~{r}~{s}[l] };
    
          If( pfacesbbbc1chz~{q}~{r}~{s}[2] < psbbfminchz~{q}~{r}~{s}[2] )

            psbbfminz~{q}~{r}~{s}[] = pfacesbbbc1chz~{q}~{r}~{s}[2];
            ptsbbfminz~{q}~{r}~{s}() = ptfacesbbbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesbbb~{q}~{r}~{s}[] = {};

        ll_facesbbb~{q}~{r}~{s}[] += Boundary{ Surface{sbbf~{q}~{r}~{s}[]}; };

        ptsbbfmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbbb~{q}~{r}~{s}[0])}; };
        psbbfmaxchz~{q}~{r}~{s}[] = Point{ ptsbbfmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbbbc1chz~{q}~{r}~{s}[] = Point{ ptsbbfmax~{q}~{r}~{s}[w] };

        If( pfacesbbbc1chz~{q}~{r}~{s}[2] > psbbfmaxchz~{q}~{r}~{s}[2] )

          psbbfmaxz~{q}~{r}~{s}[] = pfacesbbbc1chz~{q}~{r}~{s}[2];
          ptsbbfmaxz~{q}~{r}~{s}() = ptsbbfmax~{q}~{r}~{s}[w];

        Else

          psbbfmaxz~{q}~{r}~{s}[] = psbbfmaxchz~{q}~{r}~{s}[2];
          ptsbbfmaxz~{q}~{r}~{s}() = ptsbbfmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesbbbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbbb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbbbc1chz~{q}~{r}~{s}[] = Point{ ptfacesbbbc1~{q}~{r}~{s}[l] };
    
          If( pfacesbbbc1chz~{q}~{r}~{s}[2] > psbbfmaxchz~{q}~{r}~{s}[2] )

            psbbfmaxz~{q}~{r}~{s}[] = pfacesbbbc1chz~{q}~{r}~{s}[2];
            ptsbbfmaxz~{q}~{r}~{s}() = ptfacesbbbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor


      ll_facesbbb~{q}~{r}~{s}[] = {};

        ll_facesbbb~{q}~{r}~{s}[] += Boundary{ Surface{sbbf~{q}~{r}~{s}[]}; };

        ptsbbfmax~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbbb~{q}~{r}~{s}[0])}; };
        psbbfmaxchz~{q}~{r}~{s}[] = Point{ ptsbbfmax~{q}~{r}~{s}[0] };

      For w In {1:1}

        pfacesbbbc1chz~{q}~{r}~{s}[] = Point{ ptsbbfmax~{q}~{r}~{s}[w] };

        If( pfacesbbbc1chz~{q}~{r}~{s}[2] > psbbfmaxchz~{q}~{r}~{s}[2] )

          psbbfmaxz~{q}~{r}~{s}[] = pfacesbbbc1chz~{q}~{r}~{s}[2];
          ptsbbfmaxz~{q}~{r}~{s}() = ptsbbfmax~{q}~{r}~{s}[w];

        Else

          psbbfmaxz~{q}~{r}~{s}[] = psbbfmaxchz~{q}~{r}~{s}[2];
          ptsbbfmaxz~{q}~{r}~{s}() = ptsbbfmax~{q}~{r}~{s}[0];

        EndIf

      EndFor

      
      For t In {1:2}

        ptfacesbbbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_facesbbb~{q}~{r}~{s}[t])}; };

        For l In {0:1}

          pfacesbbbc1chz~{q}~{r}~{s}[] = Point{ ptfacesbbbc1~{q}~{r}~{s}[l] };
    
          If( pfacesbbbc1chz~{q}~{r}~{s}[2] > psbbfmaxchz~{q}~{r}~{s}[2] )

            psbbfmaxz~{q}~{r}~{s}[] = pfacesbbbc1chz~{q}~{r}~{s}[2];
            ptsbbfmaxz~{q}~{r}~{s}() = ptfacesbbbc1~{q}~{r}~{s}[l];

          EndIf

        EndFor

      EndFor

    EndIf

    EndFor
  EndFor
EndFor


// End