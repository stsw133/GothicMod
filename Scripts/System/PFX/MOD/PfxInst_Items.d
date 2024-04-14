///******************************************************************************************
///	Items particles
///******************************************************************************************
instance PFX_CRYSTALGLOW (C_ParticleFx)
{
	ppsvalue = 100;
	ppsscalekeys_s = "1";
	ppsislooping = true;
	ppsfps = 1;
	shptype_s = "MESH";
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "0 0 0";
	shpdistribtype_s = "RANDOM";
	shpdim_s = "7";
	shpscalekeys_s = "1";
	shpscaleislooping = true;
	shpscaleissmooth = true;
	shpscalefps = 2;
	dirmode_s = "NONE";
	velavg = 9.99999996e-012;
	lsppartavg = 300;
	flygravity_s = "0 0 0";
	visname_s = "GLOWWORM_AURA.TGA";
	visorientation_s = "VELO3D";
	vistexisquadpoly = true;
	vistexanifps = 15;
	vistexaniislooping = true;
	vistexcolorstart_s = "128 255 255";
	vistexcolorend_s = "128 255 255";
	vissizestart_s = "2 2";
	vissizeendscale = 10;
	visalphafunc_s = "ADD";
	visalphastart = 255;
	useemittersfor = false;
};

///******************************************************************************************
/// Dust particles
///******************************************************************************************
instance PFX_SOULDUST (C_ParticleFx)
{
	ppsvalue = 2;
	ppsscalekeys_s = "1";
	ppsislooping = true;
	ppsfps = 0.2;
	shptype_s = "MESH";
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "=";
	shpdistribtype_s = "RAND";
	shpdim_s = "7";
	shpscalekeys_s = "1";
	shpscaleislooping = true;
	shpscaleissmooth = true;
	shpscalefps = 2;
	dirmode_s = "MESH";
	dirangleheadvar = 180;
	dirangleelev = 90;
	dirangleelevvar = 20;
	velavg = 0.2;
	lsppartavg = 1500;
	flygravity_s = "0 0 0";
	visname_s = "HUMANBURN_WHITE.TGA";
	visorientation_s = "NONE";
	vistexisquadpoly = true;
	vistexanifps = 15;
	vistexaniislooping = true;
	vistexcolorstart_s = "20 255 160";
	vistexcolorend_s = "20 255 160";
	vissizestart_s = "10 10";
	vissizeendscale = 5;
	visalphafunc_s = "ADD";
	visalphastart = 255;
};

instance PFX_CHAOSDUST (C_ParticleFx)
{
	ppsvalue = 100;
	ppsscalekeys_s = "1.0";
	ppsislooping = true;
	ppsfps = 0.2;
	shptype_s = "MESH";
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "=";
	shpdistribtype_s = "RANDOM";
	shpdim_s = "7";
	shpscalekeys_s = "1";
	shpscaleislooping = true;
	shpscaleissmooth = true;
	shpscalefps = 2;
	dirmode_s = "MESH";
	dirangleheadvar = 180;
	dirangleelev = 90;
	dirangleelevvar = 20;
	velavg = 0.100000001;
	lsppartavg = 300;
	flygravity_s = "0 0.0003 0";
	visname_s = "HUMANBURN_WHITE.TGA";
	visorientation_s = "VELO";
	vistexisquadpoly = true;
	vistexanifps = 3;
	vistexaniislooping = true;
	vistexcolorstart_s = "220 20 255";
	vistexcolorend_s = "110 10 255";
	vissizestart_s = "5 5";
	vissizeendscale = 10;
	visalphafunc_s = "ADD";
	visalphastart = 255;
};

instance PFX_TIMEDUST (C_ParticleFx)
{
	ppsvalue = 100;
	ppsscalekeys_s = "1.0";
	ppsislooping = true;
	ppsfps = 0.2;
	shptype_s = "MESH";
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "=";
	shpdistribtype_s = "RANDOM";
	shpdim_s = "7";
	shpscalekeys_s = "1";
	shpscaleislooping = true;
	shpscaleissmooth = true;
	shpscalefps = 2;
	dirmode_s = "MESH";
	dirangleheadvar = 180;
	dirangleelev = 90;
	dirangleelevvar = 20;
	velavg = 0.100000001;
	lsppartavg = 300;
	flygravity_s = "0 0.0003 0";
	visname_s = "HUMANBURN_WHITE.TGA";
	visorientation_s = "VELO";
	vistexisquadpoly = true;
	vistexanifps = 15;
	vistexaniislooping = true;
	vistexcolorstart_s = "255 220 20";
	vistexcolorend_s = "255 110 10";
	vissizestart_s = "5 5";
	vissizeendscale = 10;
	visalphafunc_s = "ADD";
	visalphastart = 255;
};

///******************************************************************************************
/// Magic armor particles
///******************************************************************************************
instance SMELL_MODEL_KAIRO (C_ParticleFx)
{
	ppsvalue = 15;
	ppsscalekeys_s = "1";
	ppsislooping = 1;
	ppsfps = 1;
	shptype_s = "MESH";
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "0 0 0";
	shpdistribtype_s = "RANDOM";
	shpdim_s = "7";
	shpscalekeys_s = "1";
	shpscaleislooping = 1;
	shpscaleissmooth = 1;
	shpscalefps = 2;
	dirmode_s = "DIR";
	dirangleheadvar = 5;
	dirangleelev = -90;
	dirangleelevvar = 5;
	velavg = 0.00039999999;
	lsppartavg = 1500;
	flygravity_s = "0 0.0001 0";
	visname_s = "SHADOWBEAST_SMOKE.TGA";
	visorientation_s = "NONE";
	vistexisquadpoly = 1;
	vistexanifps = 3;
	vistexaniislooping = 2;
	vistexcolorstart_s = "30 150 30";
	vistexcolorend_s = "40 120 40";
	vissizestart_s = "20 40";
	vissizeendscale = 5;
	visalphafunc_s = "BLEND";
	visalphastart = 255;
	flockmode = "ARMOR_XARDAS.ASC";
};

instance MAGICENERGY_MODEL_KAIRO (C_ParticleFx)
{
	ppsvalue = 15;
	ppsscalekeys_s = "1";
	ppsislooping = 1;
	ppsfps = 1;
	shptype_s = "MESH";
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "0 0 0";
	shpdistribtype_s = "RANDOM";
	shpdim_s = "7";
	shpscalekeys_s = "1";
	shpscaleislooping = 1;
	shpscaleissmooth = 1;
	shpscalefps = 2;
	dirmode_s = "DIR";
	dirangleheadvar = 5;
	dirangleelev = -90;
	dirangleelevvar = 5;
	velavg = 0.00039999999;
	lsppartavg = 1500;
	flygravity_s = "0 0.0001 0";
	visname_s = "SHADOWBEAST_SMOKE.TGA";
	visorientation_s = "NONE";
	vistexisquadpoly = 1;
	vistexanifps = 15;
	vistexaniislooping = 2;
	vistexcolorstart_s = "20 20 200";
	vistexcolorend_s = "30 30 170";
	vissizestart_s = "20 40";
	vissizeendscale = 15;
	visalphafunc_s = "BLEND";
	visalphastart = 255;
	flockmode = "ARMOR_XARDAS.ASC";
};

instance WHITE_MODEL_KAIRO (C_ParticleFx)
{
	ppsvalue = 180;
	ppsscalekeys_s = "1";
	ppsislooping = 1;
	ppsfps = 0.200000000;
	shptype_s = "MESH";
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "0 0 0";
	shpdistribtype_s = "RANDOM";
	shpdim_s = "7";
	shpscalekeys_s = "1";
	shpscaleislooping = 1;
	shpscaleissmooth = 1;
	shpscalefps = 2;
	dirmode_s = "RAND";
	velavg = 0.00999999978;
	lsppartavg = 1200;
	lsppartvar = 200;
	flygravity_s = "0 0 0";
	visname_s = "SMOKE_WHITE.TGA";
	visorientation_s = "VELO";
	vistexanifps = 15;
	vistexaniislooping = 2;
	vistexcolorstart_s = "255 255 255";
	vistexcolorend_s = "255 255 255";
	vissizestart_s = "20 20";
	vissizeendscale = 5;
	visalphafunc_s = "ADD";
	visalphastart = 255;
};

///******************************************************************************************
instance URIZIEL_ENERGY (C_ParticleFx)
{
	ppsvalue = 100;
	ppsscalekeys_s = "1.0";
	ppsislooping = 1;
	ppsfps = 1;
	shptype_s = "MESH";
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "0 0 0";
	shpdistribtype_s = "RANDOM";
	shpdim_s = "7";
//	shpmesh_s = "HUMANS.MDS";
	shpscalekeys_s = "1";
	shpscaleislooping = 1;
	shpscaleissmooth = 1;
	shpscalefps = 2;
	dirmode_s = "NONE";
	velavg = 9.99999996e-012;
	lsppartavg = 300;
	flygravity_s = "0 0.000 0";
	visname_s = "LIGHTNING_BIG_A0.TGA";
	visorientation_s = "VELO3D";
	vistexisquadpoly = 1;
	vistexanifps = 15;
	vistexaniislooping = 1;
	vistexcolorstart_s = "255 255 255";
	vistexcolorend_s = "128 0 255";
	vissizestart_s = "5 5";
	vissizeendscale = 10;
	visalphafunc_s = "ADD";
	visalphastart = 255;
	useemittersfor = 0;
};

///******************************************************************************************
/// Potion particles
///******************************************************************************************
instance PFX_NIGHTVISION_LEFT (C_ParticleFx)
{
	ppsvalue = 150;
	ppsscalekeys_s = "1 1 1";
	ppsislooping = true;
	ppsissmooth = true;
	ppsfps = 1;
	shptype_s = "POINT";
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "10 4 10";
	shpdistribtype_s = "UNIFORM";
	shpisvolume = true;
	shpdim_s = "4";
	shpscalekeys_s = "1";
	shpscaleissmooth = true;
	dirmode_s = "RAND";
	dirfor_s = "WORLD";
	dirmodetargetfor_s = "OBJECT";
	dirmodetargetpos_s = "0 0 0";
	velavg = 9.99999975e-005;
	lsppartavg = 300;
	lsppartvar = 100;
	flygravity_s = "0 0 0";
	visname_s = "ZFLARE1.TGA";
	visorientation_s = "VELO";
	vistexisquadpoly = true;
	vistexcolorstart_s = "200 200 200";
	vistexcolorend_s = "200 200 200";
	vissizestart_s = "1 1";
	vissizeendscale = 5;
	visalphafunc_s = "ADD";
	visalphastart = 255;
	useemittersfor = true;
};

instance PFX_NIGHTVISION_RIGHT (C_ParticleFx)
{
	ppsvalue = 150;
	ppsscalekeys_s = "1 1 1";
	ppsislooping = true;
	ppsissmooth = true;
	ppsfps = 1;
	shptype_s = "POINT";
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "10 -4 10";
	shpdistribtype_s = "UNIFORM";
	shpisvolume = true;
	shpdim_s = "4";
	shpscalekeys_s = "1";
	shpscaleissmooth = true;
	dirmode_s = "RAND";
	dirfor_s = "WORLD";
	dirmodetargetfor_s = "OBJECT";
	dirmodetargetpos_s = "0 0 0";
	velavg = 9.99999975e-005;
	lsppartavg = 300;
	lsppartvar = 100;
	flygravity_s = "0 0 0";
	visname_s = "ZFLARE1.TGA";
	visorientation_s = "VELO";
	vistexisquadpoly = true;
	vistexcolorstart_s = "200 200 200";
	vistexcolorend_s = "200 200 200";
	vissizestart_s = "1 1";
	vissizeendscale = 5;
	visalphafunc_s = "ADD";
	visalphastart = 255;
	useemittersfor = true;
};

///******************************************************************************************
/// Buff particles
///******************************************************************************************
instance PFX_DRAGONSKILLGOLD (C_ParticleFx)
{
	ppsvalue = 50;
	ppsscalekeys_s = "1 1 1";
	ppsislooping = true;
	ppsissmooth = true;
	ppsfps = 1;
	shptype_s = "POINT";
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "10 4 10";
	shpdistribtype_s = "UNIFORM";
	shpisvolume = true;
	shpdim_s = "4";
	shpscalekeys_s = "1";
	shpscaleissmooth = true;
	dirmode_s = "RAND";
	dirfor_s = "WORLD";
	dirmodetargetfor_s = "OBJECT";
	dirmodetargetpos_s = "0 0 0";
	velavg = 9.99999975e-005;
	lsppartavg = 300;
	lsppartvar = 100;
	flygravity_s = "0 0 0";
	visname_s = "MFX_LIGHT_SINGLERAY.TGA";
	visorientation_s = "VELO";
	vistexisquadpoly = true;
	vistexcolorstart_s = "200 200 200";
	vistexcolorend_s = "200 200 0";
	vissizestart_s = "1 1";
	vissizeendscale = 1;
	visalphafunc_s = "ADD";
	visalphastart = 255;
	useemittersfor = true;
};

///******************************************************************************************
/// Learning particles
///******************************************************************************************
instance PFX_LEARNHP (C_ParticleFx)
{
	ppsvalue = 200;
	ppsscalekeys_s = "1";
	ppsfps = 5;
	shptype_s = "SPHERE";
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "0 0 0";
	shpdistribtype_s = "RAND";
	shpisvolume = true;
	shpdim_s = "20";
	shpscalekeys_s = "1";
	shpscaleislooping = true;
	shpscaleissmooth = true;
	shpscalefps = 2;
	dirmode_s = "RAND";
	dirfor_s = "OBJECT";
	dirmodetargetfor_s = "OBJECT";
	dirmodetargetpos_s = "0 0 0";
	dirangleheadvar = 180;
	dirangleelevvar = 180;
	velavg = 0.4;
	lsppartavg = 1000;
	flygravity_s = "0 -0.001 0";
	flycolldet_b = 3;
	visname_s = "MFX_SLEEP_STAR.TGA";
	visorientation_s = "NONE";
	vistexisquadpoly = true;
	vistexanifps = 18;
	vistexaniislooping = true;
	vistexcolorstart_s = "255 64 64";
	vistexcolorend_s = "255 64 64";
	vissizestart_s = "50 50";
	vissizeendscale = 1;
	visalphafunc_s = "ADD";
	visalphastart = 255;
};

instance PFX_LEARNMP (C_ParticleFx)
{
	ppsvalue = 200;
	ppsscalekeys_s = "1";
	ppsfps = 5;
	shptype_s = "SPHERE";
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "0 0 0";
	shpdistribtype_s = "RAND";
	shpisvolume = true;
	shpdim_s = "20";
	shpscalekeys_s = "1";
	shpscaleislooping = true;
	shpscaleissmooth = true;
	shpscalefps = 2;
	dirmode_s = "RAND";
	dirfor_s = "OBJECT";
	dirmodetargetfor_s = "OBJECT";
	dirmodetargetpos_s = "0 0 0";
	dirangleheadvar = 180;
	dirangleelevvar = 180;
	velavg = 0.4;
	lsppartavg = 1000;
	flygravity_s = "0 -0.001 0";
	flycolldet_b = 3;
	visname_s = "MFX_SLEEP_STAR.TGA";
	visorientation_s = "NONE";
	vistexisquadpoly = true;
	vistexanifps = 18;
	vistexaniislooping = true;
	vistexcolorstart_s = "64 64 255";
	vistexcolorend_s = "64 64 255";
	vissizestart_s = "50 50";
	vissizeendscale = 1;
	visalphafunc_s = "ADD";
	visalphastart = 255;
};

instance PFX_LEARNSP (C_ParticleFx)
{
	ppsvalue = 200;
	ppsscalekeys_s = "1";
	ppsfps = 5;
	shptype_s = "SPHERE";
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "0 0 0";
	shpdistribtype_s = "RAND";
	shpisvolume = true;
	shpdim_s = "20";
	shpscalekeys_s = "1";
	shpscaleislooping = true;
	shpscaleissmooth = true;
	shpscalefps = 2;
	dirmode_s = "RAND";
	dirfor_s = "OBJECT";
	dirmodetargetfor_s = "OBJECT";
	dirmodetargetpos_s = "0 0 0";
	dirangleheadvar = 180;
	dirangleelevvar = 180;
	velavg = 0.4;
	lsppartavg = 1000;
	flygravity_s = "0 -0.001 0";
	flycolldet_b = 3;
	visname_s = "MFX_SLEEP_STAR.TGA";
	visorientation_s = "NONE";
	vistexisquadpoly = true;
	vistexanifps = 18;
	vistexaniislooping = true;
	vistexcolorstart_s = "255 255 64";
	vistexcolorend_s = "255 255 64";
	vissizestart_s = "50 50";
	vissizeendscale = 1;
	visalphafunc_s = "ADD";
	visalphastart = 255;
};

instance PFX_LEARNSTR (C_ParticleFx)
{
	ppsvalue = 200;
	ppsscalekeys_s = "1";
	ppsfps = 5;
	shptype_s = "SPHERE";
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "0 0 0";
	shpdistribtype_s = "RAND";
	shpisvolume = true;
	shpdim_s = "20";
	shpscalekeys_s = "1";
	shpscaleislooping = true;
	shpscaleissmooth = true;
	shpscalefps = 2;
	dirmode_s = "RAND";
	dirfor_s = "OBJECT";
	dirmodetargetfor_s = "OBJECT";
	dirmodetargetpos_s = "0 0 0";
	dirangleheadvar = 180;
	dirangleelevvar = 180;
	velavg = 0.4;
	lsppartavg = 1000;
	flygravity_s = "0 -0.001 0";
	flycolldet_b = 3;
	visname_s = "MFX_SLEEP_STAR.TGA";
	visorientation_s = "NONE";
	vistexisquadpoly = true;
	vistexanifps = 18;
	vistexaniislooping = true;
	vistexcolorstart_s = "255 128 64";
	vistexcolorend_s = "255 128 64";
	vissizestart_s = "50 50";
	vissizeendscale = 1;
	visalphafunc_s = "ADD";
	visalphastart = 255;
};

instance PFX_LEARNDEX (C_ParticleFx)
{
	ppsvalue = 200;
	ppsscalekeys_s = "1";
	ppsfps = 5;
	shptype_s = "SPHERE";
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "0 0 0";
	shpdistribtype_s = "RAND";
	shpisvolume = true;
	shpdim_s = "20";
	shpscalekeys_s = "1";
	shpscaleislooping = true;
	shpscaleissmooth = true;
	shpscalefps = 2;
	dirmode_s = "RAND";
	dirfor_s = "OBJECT";
	dirmodetargetfor_s = "OBJECT";
	dirmodetargetpos_s = "0 0 0";
	dirangleheadvar = 180;
	dirangleelevvar = 180;
	velavg = 0.4;
	lsppartavg = 1000;
	flygravity_s = "0 -0.001 0";
	flycolldet_b = 3;
	visname_s = "MFX_SLEEP_STAR.TGA";
	visorientation_s = "NONE";
	vistexisquadpoly = true;
	vistexanifps = 18;
	vistexaniislooping = true;
	vistexcolorstart_s = "64 255 64";
	vistexcolorend_s = "64 255 64";
	vissizestart_s = "50 50";
	vissizeendscale = 1;
	visalphafunc_s = "ADD";
	visalphastart = 255;
};

instance PFX_LEARNPOW (C_ParticleFx)
{
	ppsvalue = 200;
	ppsscalekeys_s = "1";
	ppsfps = 5;
	shptype_s = "SPHERE";
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "0 0 0";
	shpdistribtype_s = "RAND";
	shpisvolume = true;
	shpdim_s = "20";
	shpscalekeys_s = "1";
	shpscaleislooping = true;
	shpscaleissmooth = true;
	shpscalefps = 2;
	dirmode_s = "RAND";
	dirfor_s = "OBJECT";
	dirmodetargetfor_s = "OBJECT";
	dirmodetargetpos_s = "0 0 0";
	dirangleheadvar = 180;
	dirangleelevvar = 180;
	velavg = 0.4;
	lsppartavg = 1000;
	flygravity_s = "0 -0.001 0";
	flycolldet_b = 3;
	visname_s = "MFX_SLEEP_STAR.TGA";
	visorientation_s = "NONE";
	vistexisquadpoly = true;
	vistexanifps = 18;
	vistexaniislooping = true;
	vistexcolorstart_s = "192 64 255";
	vistexcolorend_s = "192 64 255";
	vissizestart_s = "50 50";
	vissizeendscale = 1;
	visalphafunc_s = "ADD";
	visalphastart = 255;
};

///******************************************************************************************
/// Chaos armor particles
///******************************************************************************************
instance PFX_ACHAOS_BLUE (C_ParticleFx)
{
	ppsvalue = 15;
	ppsscalekeys_s = "1";
	ppsislooping = true;
	ppsfps = 2;
	shptype_s = "BOX"; //MESH
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "0 0 0";
	shpdistribtype_s = "RAND";
	shpdim_s = "7";
	shpscalekeys_s = "1";
	shpscaleislooping = true;
	shpscaleissmooth = true;
	shpscalefps = 2;
	dirmode_s = "DIR";
	dirmodetargetfor_s = "OBJECT"; //
	dirmodetargetpos_s = "0 0 400"; //
	dirangleheadvar = 5;
	dirangleelev = -90;
	dirangleelevvar = 5;
	velavg = 0.00039999999;
	lsppartavg = 1500;
	flygravity_s = "0 0.0001 0";
	visname_s = "mfx_white_smoke.TGA";
	visorientation_s = "VELO"; //NONE
	vistexisquadpoly = true;
	vistexanifps = 15;
	vistexaniislooping = 2;
	vistexcolorstart_s = "64 64 255";
	vistexcolorend_s = "64 64 255";
	vissizestart_s = "20 40";
	vissizeendscale = 1.5;
	visalphafunc_s = "ADD"; //BLEND
	visalphastart = 255;
//	flockmode = "ARMOR_XARDAS.ASC";
};

instance PFX_ACHAOS_RED (C_ParticleFx)
{
	ppsvalue = 15;
	ppsscalekeys_s = "1";
	ppsislooping = true;
	ppsfps = 2;
	shptype_s = "BOX"; //MESH
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "0 0 0";
	shpdistribtype_s = "RAND";
	shpdim_s = "7";
	shpscalekeys_s = "1";
	shpscaleislooping = true;
	shpscaleissmooth = true;
	shpscalefps = 2;
	dirmode_s = "DIR";
	dirmodetargetfor_s = "OBJECT"; //
	dirmodetargetpos_s = "0 0 400"; //
	dirangleheadvar = 5;
	dirangleelev = -90;
	dirangleelevvar = 5;
	velavg = 0.00039999999;
	lsppartavg = 1500;
	flygravity_s = "0 0.0001 0";
	visname_s = "mfx_white_smoke.TGA";
	visorientation_s = "VELO"; //NONE
	vistexisquadpoly = true;
	vistexanifps = 15;
	vistexaniislooping = 2;
	vistexcolorstart_s = "255 64 64";
	vistexcolorend_s = "255 64 64";
	vissizestart_s = "20 40";
	vissizeendscale = 1.5;
	visalphafunc_s = "ADD"; //BLEND
	visalphastart = 255;
//	flockmode = "ARMOR_XARDAS.ASC";
};

instance PFX_ACHAOS_GREEN (C_ParticleFx)
{
	ppsvalue = 15;
	ppsscalekeys_s = "1";
	ppsislooping = true;
	ppsfps = 2;
	shptype_s = "BOX"; //MESH
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "0 0 0";
	shpdistribtype_s = "RAND";
	shpdim_s = "7";
	shpscalekeys_s = "1";
	shpscaleislooping = true;
	shpscaleissmooth = true;
	shpscalefps = 2;
	dirmode_s = "DIR";
	dirmodetargetfor_s = "OBJECT"; //
	dirmodetargetpos_s = "0 0 400"; //
	dirangleheadvar = 5;
	dirangleelev = -90;
	dirangleelevvar = 5;
	velavg = 0.00039999999;
	lsppartavg = 1500;
	flygravity_s = "0 0.0001 0";
	visname_s = "mfx_white_smoke.TGA";
	visorientation_s = "VELO"; //NONE
	vistexisquadpoly = true;
	vistexanifps = 15;
	vistexaniislooping = 2;
	vistexcolorstart_s = "64 255 64";
	vistexcolorend_s = "64 255 64";
	vissizestart_s = "20 40";
	vissizeendscale = 1.5;
	visalphafunc_s = "ADD"; //BLEND
	visalphastart = 255;
//	flockmode = "ARMOR_XARDAS.ASC";
};

instance PFX_ACHAOS_YELLOW (C_ParticleFx)
{
	ppsvalue = 15;
	ppsscalekeys_s = "1";
	ppsislooping = true;
	ppsfps = 2;
	shptype_s = "BOX"; //MESH
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "0 0 0";
	shpdistribtype_s = "RAND";
	shpdim_s = "7";
	shpscalekeys_s = "1";
	shpscaleislooping = true;
	shpscaleissmooth = true;
	shpscalefps = 2;
	dirmode_s = "DIR";
	dirmodetargetfor_s = "OBJECT"; //
	dirmodetargetpos_s = "0 0 400"; //
	dirangleheadvar = 5;
	dirangleelev = -90;
	dirangleelevvar = 5;
	velavg = 0.00039999999;
	lsppartavg = 1500;
	flygravity_s = "0 0.0001 0";
	visname_s = "mfx_white_smoke.TGA";
	visorientation_s = "VELO"; //NONE
	vistexisquadpoly = true;
	vistexanifps = 15;
	vistexaniislooping = 2;
	vistexcolorstart_s = "255 255 64";
	vistexcolorend_s = "255 255 64";
	vissizestart_s = "20 40";
	vissizeendscale = 1.5;
	visalphafunc_s = "ADD"; //BLEND
	visalphastart = 255;
//	flockmode = "ARMOR_XARDAS.ASC";
};

instance PFX_ACHAOS_MAGENTA (C_ParticleFx)
{
	ppsvalue = 15;
	ppsscalekeys_s = "1";
	ppsislooping = true;
	ppsfps = 2;
	shptype_s = "BOX"; //MESH
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "0 0 0";
	shpdistribtype_s = "RAND";
	shpdim_s = "7";
	shpscalekeys_s = "1";
	shpscaleislooping = true;
	shpscaleissmooth = true;
	shpscalefps = 2;
	dirmode_s = "DIR";
	dirmodetargetfor_s = "OBJECT"; //
	dirmodetargetpos_s = "0 0 400"; //
	dirangleheadvar = 5;
	dirangleelev = -90;
	dirangleelevvar = 5;
	velavg = 0.00039999999;
	lsppartavg = 1500;
	flygravity_s = "0 0.0001 0";
	visname_s = "mfx_white_smoke.TGA";
	visorientation_s = "VELO"; //NONE
	vistexisquadpoly = true;
	vistexanifps = 15;
	vistexaniislooping = 2;
	vistexcolorstart_s = "255 64 255";
	vistexcolorend_s = "255 64 255";
	vissizestart_s = "20 40";
	vissizeendscale = 1.5;
	visalphafunc_s = "ADD"; //BLEND
	visalphastart = 255;
//	flockmode = "ARMOR_XARDAS.ASC";
};

instance PFX_ACHAOS_CYAN (C_ParticleFx)
{
	ppsvalue = 15;
	ppsscalekeys_s = "1";
	ppsislooping = true;
	ppsfps = 2;
	shptype_s = "BOX"; //MESH
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "0 0 0";
	shpdistribtype_s = "RAND";
	shpdim_s = "7";
	shpscalekeys_s = "1";
	shpscaleislooping = true;
	shpscaleissmooth = true;
	shpscalefps = 2;
	dirmode_s = "DIR";
	dirmodetargetfor_s = "OBJECT"; //
	dirmodetargetpos_s = "0 0 400"; //
	dirangleheadvar = 5;
	dirangleelev = -90;
	dirangleelevvar = 5;
	velavg = 0.00039999999;
	lsppartavg = 1500;
	flygravity_s = "0 0.0001 0";
	visname_s = "mfx_white_smoke.TGA";
	visorientation_s = "VELO"; //NONE
	vistexisquadpoly = true;
	vistexanifps = 15;
	vistexaniislooping = 2;
	vistexcolorstart_s = "64 255 255";
	vistexcolorend_s = "64 255 255";
	vissizestart_s = "20 40";
	vissizeendscale = 1.5;
	visalphafunc_s = "ADD"; //BLEND
	visalphastart = 255;
//	flockmode = "ARMOR_XARDAS.ASC";
};

instance PFX_ACHAOS_PINK (C_ParticleFx)
{
	ppsvalue = 125;
	ppsscalekeys_s = "1";
	ppsislooping = true;
	ppsfps = 1;
	shptype_s = "BOX"; //MESH
	shpfor_s = "OBJECT";
	shpoffsetvec_s = "0 0 0";
	shpdistribtype_s = "RANDOM";
	shpdim_s = "7";
	shpscalekeys_s = "1";
	shpscaleislooping = true;
	shpscaleissmooth = true;
	shpscalefps = 2;
	dirmode_s = "DIR";
	dirmodetargetfor_s = "OBJECT"; //
	dirmodetargetpos_s = "0 0 400"; //
	dirangleheadvar = 5;
	dirangleelev = -90;
	dirangleelevvar = 5;
	velavg = 0.00039999999;
	lsppartavg = 1500;
	flygravity_s = "0 0.0001 0";
	visname_s = "vfx_magic_glow_heart.TGA";
	visorientation_s = "VELO"; //NONE
	vistexisquadpoly = true;
	vistexanifps = 15;
	vistexaniislooping = 2;
	vistexcolorstart_s = "255 255 255";
	vistexcolorend_s = "255 255 255";
	vissizestart_s = "10 10";
	vissizeendscale = 0.25;
	visalphafunc_s = "BLEND";
	visalphastart = 255;
//	flockmode = "ARMOR_XARDAS.ASC";
};

///******************************************************************************************
/// Special items particles
///******************************************************************************************
instance PFX_IPENTA_BLUE (ITEM_GLIMMER_PROTO)
{
	ppsvalue			= 2500;
	visname_s			= "vfx_magic_bigglow_white.TGA";
	vistexcolorstart_s	= "32 32 255";
	vistexcolorend_s	= "32 32 255";
	vissizeendscale		= 5;
};
