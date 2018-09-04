//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// MMGASSTRWIRE COMPONENT LABEL MODULE

//----------------------------------------------------------
// SURFACES

//----------------------------------------------------------
// periodic surface boundaries

physsurf_bd1h1 = 700000;       		// + 1000 * i + j - periodic boundary surface - side 1 - continuous boundary
physsurf_bd1h2 = 710000;       		// + 1000 * i + j - periodic boundary surface - side 2 - continuous boundary
physsurf_bd2h1 = 720000;       		// + 1000 * i + j - periodic boundary surface - side 3 - continuous boundary
physsurf_bd2h2 = 730000;       		// + 1000 * i + j - periodic boundary surface - side 4 - continuous boundary

physsurf_container = 740000;   		// + 1000 * i + j - container surface area - container surface area

//----------------------------------------------------------
// wire surfaces

physsurf_1a_wire = 750000;     		// + 1000 * i + j - steel wire surface area - mesh surface area - dirichlet boundary
physsurf_1b_wire = 760000;     		// + 1000 * i + j - steel wire surface area - mesh surface area - dirichlet boundary
physsurf_2a_wire = 770000;     		// + 1000 * i + j - steel wire surface area - mesh surface area - dirichlet boundary
physsurf_2b_wire = 780000;     		// + 1000 * i + j - steel wire surface area - mesh surface area - dirichlet boundary

physsurf_wire = 790000;		   		// + 1000 * i + j - wire surface area - mesh surface area - dirichlet boundary
// physsurf_wire = 800000;			// + 1000 * i + j - wire surface area - mesh surface area - dirichlet boundary

//----------------------------------------------------------
// gas surfaces

physsurf_gas = 810000;         		// + 1000 * i + j - gas surface area
// physsurf_gas = 820000; 	    	// + 1000 * i + j - gas surface area

//----------------------------------------------------------
// dielectric surfaces

physsurf_dielectric = 830000;   	// + 1000 * i + j - layer dielectric surface area
// physsurf_dielectric = 840000; 	// + 1000 * i + j - layer dielectric surface area

//----------------------------------------------------------
// electrode surfaces

physsurf_upper_el = 850000;     	// + 1000 * i + j - upper electrode mesh cathode top boundary surface - dirichlet boundary
physsurf_lower_el = 860000;     	// + 1000 * i + j - lower electrode copper anode boundary surface (not relevant) - dirichlet boundary

//----------------------------------------------------------
// copper surface

physsurf_lower_cp = 870000;     	// + 1000 * i + j - copper plate surface area - bottom electrode - dirichlet boundary
physsurf_high_cp = 880000;     	// + 1000 * i + j - copper plate surface area - upper electrode - dirichlet boundary

//----------------------------------------------------------
// VOLUMES

//----------------------------------------------------------
// container volume

physvol_container = 890000;   		// + 1000 * i + j - container volume

//----------------------------------------------------------
// wire volume

physvol_1a_wire = 900000;      		// + 1000 * i + j - steel wire volume - mesh volume
physvol_1b_wire = 910000;      		// + 1000 * i + j - steel wire volume - mesh volume
physvol_2a_wire = 920000;      		// + 1000 * i + j - steel wire volume - mesh volume
physvol_2b_wire = 930000;      		// + 1000 * i + j - steel wire volume - mesh volume

physvol_wire = 940000;         		// + 1000 * i + j - steel wire volume - mesh volume
// physvol_wire = 950000;       	// + 1000 * i + j - steel wire volume - mesh volume

//----------------------------------------------------------
// gas volume

physvol_gas = 960000;          		// + 1000 * i + j - gas volume - conducting volume
// physvol_gas = 970000;         	// + 1000 * i + j - gas volume

//----------------------------------------------------------
// dielectric volume

physvol_dielectric = 980000;    	// + 1000 * i + j - dielectric material volume - plastic volume

//----------------------------------------------------------
// copper volume

physvol_lower_cp = 990000;      	// + 1000 * i + j - copper plate volume - plate volume
physvol_high_cp = 1000000;    	    // + 1000 * i + j - copper plate volume - plate volume

// + 1000 * i + j for bottom
// + 1100 * i + j for top
// + 1200 * i + j for sides
