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


For q In {1:2}
  For r In {1:2}
    For s In {1:2}


    // -------------------------------
    //
    // Face physsurf_bdh_1_1 (Corner 1 - Corner 2) - sbb_1_1 / sbb_1_2
    //
    // -------------------------------

    If(q == 1 && r == 1)

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


    // -------------------------------
    //
    // Face physsurf_bdh_2_2 (Corner 4 - Corner 1) - sbb_2_1[] / sbb_2_2[]
    //
    // -------------------------------

    If(q == 2&& r == 2) 

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


    // -------------------------------
    //
    // Face physsurf_bdh_1_2 (Corner 2 - Corner 3) - sab_2_1 / sab_2_2
    //
    // -------------------------------

    If(q == 1 && r == 2)

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


    // -------------------------------
    //
    // Face physsurf_bdh_2_1 (Corner 3 - Corner 4) - sab_1_1[] / sab_1_2[]
    //
    // -------------------------------

    If(q == 2 && r == 1)

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


    EndFor
  EndFor
EndFor


For q In {2:2}
  For r In {1:2}
    For s In {2:2}

    // -------------------------------
    //
    // End faces - sabf_2_1_2, sabf_2_2_2, sbbf_2_1_2, sbbf_2_2_2
    //
    // -------------------------------

    If(q == 2 && s == 2) 

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

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// CHANGE OVER - HALFWAY
//


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