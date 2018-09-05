
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 
// mmGasUnitCellTestWindowDefinition.geo
//
// Description:
// Geometry file for a MM cell
// This cell can be repeated any number of times within Garfield 
// to construct an arbitrarily large MM
//
//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// MMGASSTRWIRE WINDOW MODULE
//

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// GENERAL INFORMATION
//
// mmGasUnitCellTestWindowDefinition.geo
//
// Description
//
// References
//
// See also
//

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// CONSTANTS

heightWindow = 0.20;


// WINDOWS / PITCH

// --------------------------------------------------------------------------
// Corner 1

pt1c1 = newp; Point(pt1c1) = { geofx*(+rW-p+p+0*spFac1) + geofx*m1*(+rW-p+p+0*spFac1), geofy*(+rW-p+p+0*spFac1) + geofy*n1*(+rW-p+p+0*spFac1), heightWindow, lcCopperPlateBdry };


// --------------------------------------------------------------------------
// Corner 2

pt1c2 = newp; Point(pt1c2) = { geofx*(-rW+p+p+0*spFac1) + geofx*m1*(-rW+p+p+0*spFac1), geofy*(+rW-p+p+0*spFac1) + geofy*n1*(+rW-p+p+0*spFac1), heightWindow, lcCopperPlateBdry };


// --------------------------------------------------------------------------
// Corner 3

pt1c3 = newp; Point(pt1c3) = { geofx*(-rW+p+p+0*spFac1) + geofx*m1*(-rW+p+p+0*spFac1), geofy*(-rW+p+p+0*spFac1) + geofy*n1*(-rW+p+p+0*spFac1), heightWindow, lcCopperPlateBdry }; 


// --------------------------------------------------------------------------
// Corner 4

pt1c4 = newp; Point(pt1c4) = { geofx*(+rW-p+p+0*spFac1) + geofx*m1*(+rW-p+p+0*spFac1), geofy*(-rW+p+p+0*spFac1) + geofy*n1*(-rW+p+p+0*spFac1), heightWindow, lcCopperPlateBdry };


// UPPER SQUARE

// --------------------------------------------------------------------------
// Corner 1

ptR1c0 = newp; Point(ptR1c0) = {-p+p+1*spFac1, -p+p+1*spFac1, R-rW + heightWindow, lcCopperPlateBdry};


// --------------------------------------------------------------------------
// Corner 1

ptpR1c1 = newp; Point(ptpR1c1) = {-p+p, -p+p+1*spFac1, R-rW + heightWindow, lcCopperPlateBdry};


// --------------------------------------------------------------------------
// Corner 2

ptpR1c2 = newp; Point(ptpR1c2) = {p+p+1*spFac1, -p+p, R-rW + heightWindow, lcCopperPlateBdry};


// --------------------------------------------------------------------------
// Corner 3

ptpR1c3 = newp; Point(ptpR1c3) = {p+p+1*spFac1, p+p+1*spFac1, R-rW + heightWindow, lcCopperPlateBdry};


// --------------------------------------------------------------------------
// Corner 4

ptpR1c4 = newp; Point(ptpR1c4) = {-p+p+1*spFac1, p+p+1*spFac1, R-rW + heightWindow, lcCopperPlateBdry};


// BOTTOM SQUARE

// --------------------------------------------------------------------------
// Corner 1

ptnR1c1 = newp; Point(ptnR1c1) = {-p+p+1*spFac1, -p+p, -R+rW + heightWindow, lcCopperPlateBdry};


// --------------------------------------------------------------------------
// Corner 2

ptnR1c2 = newp; Point(ptnR1c2) = {p+p+1*spFac1, -p+p+1*spFac1, -R+rW + heightWindow, lcCopperPlateBdry};


// --------------------------------------------------------------------------
// Corner 3

ptnR1c3 = newp; Point(ptnR1c3) = {p+p+1*spFac1, p+p+1*spFac1, -R+rW + heightWindow, lcCopperPlateBdry};


// --------------------------------------------------------------------------
// Corner 4

ptnR1c4 = newp; Point(ptnR1c4) = {-p+p, p+p+1*spFac1, -R+rW + heightWindow, lcCopperPlateBdry};


// End