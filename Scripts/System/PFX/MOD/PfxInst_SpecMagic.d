///******************************************************************************************
///	Chaos Mages Spells
///******************************************************************************************
INSTANCE MFX_cB_Fireball_INIT (C_PARTICLEFX)
{
    ppsvalue = 80.000000000;
    ppsscalekeys_s = "1";
    ppsislooping = 1;
    ppsissmooth = 1;
    shptype_s = "SPHERE";
    shpfor_s = "object";
    shpoffsetvec_s = "0 7 0";
    shpdistribtype_s = "RAND";
    shpdim_s = "10";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    dirmode_s = "TARGET";
    dirfor_s = "object";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 7 0";
    dirangleheadvar = 180.000000000;
    dirangleelevvar = 180.000000000;
    velavg = 0.001000000;
    lsppartavg = 300.000000000;
    flygravity_s = "0 0 0";
    flycolldet_b = 0;
    visname_s = "FIREFLARE_WHITE.TGA";
    visorientation_s = "NONE";
    vistexanifps = 18.000000000;
    vistexaniislooping = 1;
    vistexcolorstart_s = "100 100 255";
    vistexcolorend_s = "0 0 255";
    vissizestart_s = "8 8";
    vissizeendscale = 8.000000000;
    visalphafunc_s = "ADD";
    visalphastart = 255.000000000;
};

PROTOTYPE MFX_cB_Fireball_COLLIDE_PROTO (C_PARTICLEFX)
{
    ppsvalue = 40.000000000;
    ppsfps = 10.000000000;
    ppscreateem_s = "MFX_cB_Fireball_COLLIDE_WALLGLOW";
    shptype_s = "SPHERE";
    shpfor_s = "object";
    shpoffsetvec_s = "0 0 0";
    shpdistribtype_s = "RAND";
    shpisvolume = 1;
    shpdim_s = "8";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2.000000000;
    dirmode_s = "TARGET";
    dirfor_s = "object";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 0 0";
    dirangleheadvar = 180.000000000;
    dirangleelevvar = 180.000000000;
    velavg = 0.079999998;
    velvar = 0.020000000;
    lsppartavg = 2000.000000000;
    flygravity_s = "0 0 0";
    flycolldet_b = 1;
    visname_s = "FIREFLARE_WHITE.TGA";
    visorientation_s = "NONE";
    vistexanifps = 18.000000000;
    vistexaniislooping = 1;
    vistexcolorstart_s = "100 100 255";
    vistexcolorend_s = "0 0 255";
    vissizestart_s = "10 10";
    vissizeendscale = 15.000000000;
    visalphafunc_s = "ADD";
    visalphastart = 255.000000000;
};

INSTANCE MFX_cB_Fireball_COLLIDE1 (MFX_cB_Fireball_COLLIDE_PROTO)
{
    ppsvalue = 10.000000000;
    lsppartavg = 1400.000000000;
    vissizeendscale = 10.000000000;
    visalphastart = 130.000000000;
};

INSTANCE MFX_cB_Fireball_COLLIDE_WALLGLOW (C_PARTICLEFX)
{
    ppsvalue = 3.000000000;
    ppsscalekeys_s = "5 5 4 4 3 3 2 2 1 1";
    ppsissmooth = 1;
    ppsfps = 2.000000000;
    shptype_s = "CIRCLE";
    shpfor_s = "OBJECT";
    shpoffsetvec_s = "0 0 0";
    shpdistribtype_s = "RAND";
    shpisvolume = 1;
    shpdim_s = "50";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2.000000000;
    dirmode_s = "TARGET";
    dirfor_s = "object";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 0 0";
    dirangleheadvar = 180.000000000;
    dirangleelevvar = 180.000000000;
    lsppartavg = 1500.000000000;
    flygravity_s = "0 0.00004 0";
    flycolldet_b = 1;
    visname_s = "HUMANBURN_WHITE.TGA";
    visorientation_s = "VELO";
    vistexisquadpoly = 1;
    vistexanifps = 18.000000000;
    vistexaniislooping = 1;
    vistexcolorstart_s = "100 100 255";
    vistexcolorend_s = "0 0 255";
    vissizestart_s = "2 2";
    vissizeendscale = 20.000000000;
    visalphafunc_s = "ADD";
};

INSTANCE MFX_cB_Fireball_CAST (C_PARTICLEFX)
{
    ppsvalue = 20;
    ppsscalekeys_s = "5";
    ppsislooping = 1;
    ppsissmooth = 1;
    ppsfps = 2;
    shptype_s = "SPHERE";
    shpfor_s = "object";
    shpoffsetvec_s = "0 0 0";
    shpdistribtype_s = "RAND";
    shpdim_s = "14";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2;
    dirmode_s = "RAND";
    dirfor_s = "object";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 0 0";
    dirangleheadvar = 180;
    dirangleelevvar = 180;
    velavg = 0.00800000038;
    velvar = 0.0299999993;
    lsppartavg = 500;
    flygravity_s = "0 0 0";
    visname_s = "FIREFLARE_WHITE.TGA";
    visorientation_s = "VELO3D";
    vistexanifps = 18;
    vistexaniislooping = 1;
    vistexcolorstart_s = "100 100 255";
    vistexcolorend_s = "0 0 255";
    vissizestart_s = "25 25";
    vissizeendscale = 3;
    visalphafunc_s = "ADD";
    visalphastart = 255;
};

INSTANCE MFX_cB_Fireball_PFXTRAIL (C_PARTICLEFX)
{
    ppsvalue = 5;
    ppsscalekeys_s = "5";
    ppsislooping = 1;
    ppsissmooth = 1;
    ppsfps = 2;
    shptype_s = "SPHERE";
    shpfor_s = "object";
    shpoffsetvec_s = "0 0 0";
    shpdistribtype_s = "RAND";
    shpdim_s = "20";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2;
    dirmode_s = "RAND";
    dirfor_s = "object";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 0 0";
    dirangleheadvar = 180;
    dirangleelevvar = 180;
    velavg = 0.00800000038;
    velvar = 0.0299999993;
    lsppartavg = 700;
    flygravity_s = "0 0.0003 0";
    visname_s = "FIREFLARE_WHITE.TGA";
    visorientation_s = "NONE";
    vistexanifps = 18;
    vistexaniislooping = 1;
    vistexcolorstart_s = "100 100 255";
    vistexcolorend_s = "0 0 255";
    vissizestart_s = "25 25";
    vissizeendscale = 3;
    visalphafunc_s = "ADD";
    visalphastart = 255;
};

INSTANCE MFX_cB_Fireball_HUMANBURN (C_PARTICLEFX)
{
    ppsvalue = 10;
    ppsscalekeys_s = "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1";
    ppsissmooth = 1;
    ppsfps = 6;
    shptype_s = "BOX";
    shpfor_s = "object";
    shpoffsetvec_s = "0 0 0";
    shpdistribtype_s = "RAND";
    shpdim_s = "15 5 5";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2;
    dirmode_s = "DIR";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 0 400";
    dirangleelev = 90;
    velavg = 0.100000001;
    lsppartavg = 500;
    flygravity_s = "0 0 0";
    visname_s = "HUMANBURN_WHITE.TGA";
    visorientation_s = "VELO";
    vistexisquadpoly = 1;
    vistexanifps = 5;
    vistexaniislooping = 1;
    vistexcolorstart_s = "100 100 255";
    vistexcolorend_s = "0 0 255";
    vissizestart_s = "10 10";
    vissizeendscale = 5;
    visalphafunc_s = "ADD";
    visalphastart = 255;
    visalphaend = 100;
};

INSTANCE MFX_cB_Fireball_HUMANSMOKE (C_PARTICLEFX)
{
    ppsvalue = 3.000000000;
    ppsscalekeys_s = "1 2 3 4 3 2 2 2 2 1 1 1 1 1 1";
    ppsissmooth = 1;
    ppsfps = 1;
    shptype_s = "CIRCLE";
    shpfor_s = "object";
    shpoffsetvec_s = "0 1 0";
    shpdistribtype_s = "RAND";
    shpisvolume = 1;
    shpdim_s = "25";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2.000000000;
    dirmode_s = "DIR";
    dirangleheadvar = 50.000000000;
    dirangleelev = 90.000000000;
    dirangleelevvar = 20.000000000;
    velavg = 0.039999999;
    lsppartavg = 5500.000000000;
    lsppartvar = 400.000000000;
    flygravity_s = "0 0 0";
    visname_s = "FIRESMOKE.TGA";
    visorientation_s = "NONE";
    vistexisquadpoly = 1;
    vistexanifps = 5.000000000;
    vistexaniislooping = 1;
    vistexcolorstart_s = "140 140 140";
    vistexcolorend_s = "255 255 255";
    vissizestart_s = "20 20";
    vissizeendscale = 2.000000000;
    visalphafunc_s = "BLEND";
    visalphastart = 150.000000000;
};

///******************************************************************************************
INSTANCE MFX_cR_Fireball_INIT (C_PARTICLEFX)
{
    ppsvalue = 80.000000000;
    ppsscalekeys_s = "1";
    ppsislooping = 1;
    ppsissmooth = 1;
    shptype_s = "SPHERE";
    shpfor_s = "object";
    shpoffsetvec_s = "0 7 0";
    shpdistribtype_s = "RAND";
    shpdim_s = "10";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    dirmode_s = "TARGET";
    dirfor_s = "object";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 7 0";
    dirangleheadvar = 180.000000000;
    dirangleelevvar = 180.000000000;
    velavg = 0.001000000;
    lsppartavg = 300.000000000;
    flygravity_s = "0 0 0";
    flycolldet_b = 0;
    visname_s = "FIREFLARE_WHITE.TGA";
    visorientation_s = "NONE";
    vistexanifps = 18.000000000;
    vistexaniislooping = 1;
    vistexcolorstart_s = "255 100 100";
    vistexcolorend_s = "255 0 0";
    vissizestart_s = "8 8";
    vissizeendscale = 8.000000000;
    visalphafunc_s = "ADD";
    visalphastart = 255.000000000;
};

PROTOTYPE MFX_cR_Fireball_COLLIDE_PROTO (C_PARTICLEFX)
{
    ppsvalue = 40.000000000;
    ppsfps = 10.000000000;
    ppscreateem_s = "MFX_cR_Fireball_COLLIDE_WALLGLOW";
    shptype_s = "SPHERE";
    shpfor_s = "object";
    shpoffsetvec_s = "0 0 0";
    shpdistribtype_s = "RAND";
    shpisvolume = 1;
    shpdim_s = "8";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2.000000000;
    dirmode_s = "TARGET";
    dirfor_s = "object";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 0 0";
    dirangleheadvar = 180.000000000;
    dirangleelevvar = 180.000000000;
    velavg = 0.079999998;
    velvar = 0.020000000;
    lsppartavg = 2000.000000000;
    flygravity_s = "0 0 0";
    flycolldet_b = 1;
    visname_s = "FIREFLARE_WHITE.TGA";
    visorientation_s = "NONE";
    vistexanifps = 18.000000000;
    vistexaniislooping = 1;
    vistexcolorstart_s = "255 100 100";
    vistexcolorend_s = "255 0 0";
    vissizestart_s = "10 10";
    vissizeendscale = 15.000000000;
    visalphafunc_s = "ADD";
    visalphastart = 255.000000000;
};

INSTANCE MFX_cR_Fireball_COLLIDE1 (MFX_cR_Fireball_COLLIDE_PROTO)
{
    ppsvalue = 10.000000000;
    lsppartavg = 1400.000000000;
    vissizeendscale = 10.000000000;
    visalphastart = 130.000000000;
};

INSTANCE MFX_cR_Fireball_COLLIDE_WALLGLOW (C_PARTICLEFX)
{
    ppsvalue = 3.000000000;
    ppsscalekeys_s = "5 5 4 4 3 3 2 2 1 1";
    ppsissmooth = 1;
    ppsfps = 2.000000000;
    shptype_s = "CIRCLE";
    shpfor_s = "OBJECT";
    shpoffsetvec_s = "0 0 0";
    shpdistribtype_s = "RAND";
    shpisvolume = 1;
    shpdim_s = "50";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2.000000000;
    dirmode_s = "TARGET";
    dirfor_s = "object";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 0 0";
    dirangleheadvar = 180.000000000;
    dirangleelevvar = 180.000000000;
    lsppartavg = 1500.000000000;
    flygravity_s = "0 0.00004 0";
    flycolldet_b = 1;
    visname_s = "HUMANBURN_WHITE.TGA";
    visorientation_s = "VELO";
    vistexisquadpoly = 1;
    vistexanifps = 18.000000000;
    vistexaniislooping = 1;
    vistexcolorstart_s = "255 100 100";
    vistexcolorend_s = "255 0 0";
    vissizestart_s = "2 2";
    vissizeendscale = 20.000000000;
    visalphafunc_s = "ADD";
};

INSTANCE MFX_cR_Fireball_CAST (C_PARTICLEFX)
{
    ppsvalue = 20;
    ppsscalekeys_s = "5";
    ppsislooping = 1;
    ppsissmooth = 1;
    ppsfps = 2;
    shptype_s = "SPHERE";
    shpfor_s = "object";
    shpoffsetvec_s = "0 0 0";
    shpdistribtype_s = "RAND";
    shpdim_s = "14";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2;
    dirmode_s = "RAND";
    dirfor_s = "object";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 0 0";
    dirangleheadvar = 180;
    dirangleelevvar = 180;
    velavg = 0.00800000038;
    velvar = 0.0299999993;
    lsppartavg = 500;
    flygravity_s = "0 0 0";
    visname_s = "FIREFLARE_WHITE.TGA";
    visorientation_s = "VELO3D";
    vistexanifps = 18;
    vistexaniislooping = 1;
    vistexcolorstart_s = "255 100 100";
    vistexcolorend_s = "255 0 0";
    vissizestart_s = "25 25";
    vissizeendscale = 3;
    visalphafunc_s = "ADD";
    visalphastart = 255;
};

INSTANCE MFX_cR_Fireball_PFXTRAIL (C_PARTICLEFX)
{
    ppsvalue = 5;
    ppsscalekeys_s = "5";
    ppsislooping = 1;
    ppsissmooth = 1;
    ppsfps = 2;
    shptype_s = "SPHERE";
    shpfor_s = "object";
    shpoffsetvec_s = "0 0 0";
    shpdistribtype_s = "RAND";
    shpdim_s = "20";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2;
    dirmode_s = "RAND";
    dirfor_s = "object";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 0 0";
    dirangleheadvar = 180;
    dirangleelevvar = 180;
    velavg = 0.00800000038;
    velvar = 0.0299999993;
    lsppartavg = 700;
    flygravity_s = "0 0.0003 0";
    visname_s = "FIREFLARE_WHITE.TGA";
    visorientation_s = "NONE";
    vistexanifps = 18;
    vistexaniislooping = 1;
    vistexcolorstart_s = "255 100 100";
    vistexcolorend_s = "255 0 0";
    vissizestart_s = "25 25";
    vissizeendscale = 3;
    visalphafunc_s = "ADD";
    visalphastart = 255;
};

INSTANCE MFX_cR_Fireball_HUMANBURN (C_PARTICLEFX)
{
    ppsvalue = 10;
    ppsscalekeys_s = "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1";
    ppsissmooth = 1;
    ppsfps = 6;
    shptype_s = "BOX";
    shpfor_s = "object";
    shpoffsetvec_s = "0 0 0";
    shpdistribtype_s = "RAND";
    shpdim_s = "15 5 5";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2;
    dirmode_s = "DIR";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 0 400";
    dirangleelev = 90;
    velavg = 0.100000001;
    lsppartavg = 500;
    flygravity_s = "0 0 0";
    visname_s = "HUMANBURN_WHITE.TGA";
    visorientation_s = "VELO";
    vistexisquadpoly = 1;
    vistexanifps = 5;
    vistexaniislooping = 1;
    vistexcolorstart_s = "255 100 100";
    vistexcolorend_s = "255 0 0";
    vissizestart_s = "10 10";
    vissizeendscale = 5;
    visalphafunc_s = "ADD";
    visalphastart = 255;
    visalphaend = 100;
};

INSTANCE MFX_cR_Fireball_HUMANSMOKE (C_PARTICLEFX)
{
    ppsvalue = 3.000000000;
    ppsscalekeys_s = "1 2 3 4 3 2 2 2 2 1 1 1 1 1 1";
    ppsissmooth = 1;
    ppsfps = 1;
    shptype_s = "CIRCLE";
    shpfor_s = "object";
    shpoffsetvec_s = "0 1 0";
    shpdistribtype_s = "RAND";
    shpisvolume = 1;
    shpdim_s = "25";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2.000000000;
    dirmode_s = "DIR";
    dirangleheadvar = 50.000000000;
    dirangleelev = 90.000000000;
    dirangleelevvar = 20.000000000;
    velavg = 0.039999999;
    lsppartavg = 5500.000000000;
    lsppartvar = 400.000000000;
    flygravity_s = "0 0 0";
    visname_s = "FIRESMOKE.TGA";
    visorientation_s = "NONE";
    vistexisquadpoly = 1;
    vistexanifps = 5.000000000;
    vistexaniislooping = 1;
    vistexcolorstart_s = "140 140 140";
    vistexcolorend_s = "255 255 255";
    vissizestart_s = "20 20";
    vissizeendscale = 2.000000000;
    visalphafunc_s = "BLEND";
    visalphastart = 150.000000000;
};

///******************************************************************************************
INSTANCE MFX_cG_Fireball_INIT (C_PARTICLEFX)
{
    ppsvalue = 80.000000000;
    ppsscalekeys_s = "1";
    ppsislooping = 1;
    ppsissmooth = 1;
    shptype_s = "SPHERE";
    shpfor_s = "object";
    shpoffsetvec_s = "0 7 0";
    shpdistribtype_s = "RAND";
    shpdim_s = "10";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    dirmode_s = "TARGET";
    dirfor_s = "object";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 7 0";
    dirangleheadvar = 180.000000000;
    dirangleelevvar = 180.000000000;
    velavg = 0.001000000;
    lsppartavg = 300.000000000;
    flygravity_s = "0 0 0";
    flycolldet_b = 0;
    visname_s = "FIREFLARE_WHITE.TGA";
    visorientation_s = "NONE";
    vistexanifps = 18.000000000;
    vistexaniislooping = 1;
    vistexcolorstart_s = "100 255 100";
    vistexcolorend_s = "0 255 100";
    vissizestart_s = "8 8";
    vissizeendscale = 8.000000000;
    visalphafunc_s = "ADD";
    visalphastart = 255.000000000;
};

PROTOTYPE MFX_cG_Fireball_COLLIDE_PROTO (C_PARTICLEFX)
{
    ppsvalue = 40.000000000;
    ppsfps = 10.000000000;
    ppscreateem_s = "MFX_cG_Fireball_COLLIDE_WALLGLOW";
    shptype_s = "SPHERE";
    shpfor_s = "object";
    shpoffsetvec_s = "0 0 0";
    shpdistribtype_s = "RAND";
    shpisvolume = 1;
    shpdim_s = "8";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2.000000000;
    dirmode_s = "TARGET";
    dirfor_s = "object";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 0 0";
    dirangleheadvar = 180.000000000;
    dirangleelevvar = 180.000000000;
    velavg = 0.079999998;
    velvar = 0.020000000;
    lsppartavg = 2000.000000000;
    flygravity_s = "0 0 0";
    flycolldet_b = 1;
    visname_s = "FIREFLARE_WHITE.TGA";
    visorientation_s = "NONE";
    vistexanifps = 18.000000000;
    vistexaniislooping = 1;
    vistexcolorstart_s = "100 255 100";
    vistexcolorend_s = "0 255 100";
    vissizestart_s = "10 10";
    vissizeendscale = 15.000000000;
    visalphafunc_s = "ADD";
    visalphastart = 255.000000000;
};

INSTANCE MFX_cG_Fireball_COLLIDE1 (MFX_cG_Fireball_COLLIDE_PROTO)
{
    ppsvalue = 10.000000000;
    lsppartavg = 1400.000000000;
    vissizeendscale = 10.000000000;
    visalphastart = 130.000000000;
};

INSTANCE MFX_cG_Fireball_COLLIDE_WALLGLOW (C_PARTICLEFX)
{
    ppsvalue = 3.000000000;
    ppsscalekeys_s = "5 5 4 4 3 3 2 2 1 1";
    ppsissmooth = 1;
    ppsfps = 2.000000000;
    shptype_s = "CIRCLE";
    shpfor_s = "OBJECT";
    shpoffsetvec_s = "0 0 0";
    shpdistribtype_s = "RAND";
    shpisvolume = 1;
    shpdim_s = "50";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2.000000000;
    dirmode_s = "TARGET";
    dirfor_s = "object";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 0 0";
    dirangleheadvar = 180.000000000;
    dirangleelevvar = 180.000000000;
    lsppartavg = 1500.000000000;
    flygravity_s = "0 0.00004 0";
    flycolldet_b = 1;
    visname_s = "HUMANBURN_WHITE.TGA";
    visorientation_s = "VELO";
    vistexisquadpoly = 1;
    vistexanifps = 18.000000000;
    vistexaniislooping = 1;
    vistexcolorstart_s = "100 255 100";
    vistexcolorend_s = "0 255 100";
    vissizestart_s = "2 2";
    vissizeendscale = 20.000000000;
    visalphafunc_s = "ADD";
};

INSTANCE MFX_cG_Fireball_CAST (C_PARTICLEFX)
{
    ppsvalue = 20;
    ppsscalekeys_s = "5";
    ppsislooping = 1;
    ppsissmooth = 1;
    ppsfps = 2;
    shptype_s = "SPHERE";
    shpfor_s = "object";
    shpoffsetvec_s = "0 0 0";
    shpdistribtype_s = "RAND";
    shpdim_s = "14";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2;
    dirmode_s = "RAND";
    dirfor_s = "object";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 0 0";
    dirangleheadvar = 180;
    dirangleelevvar = 180;
    velavg = 0.00800000038;
    velvar = 0.0299999993;
    lsppartavg = 500;
    flygravity_s = "0 0 0";
    visname_s = "FIREFLARE_WHITE.TGA";
    visorientation_s = "VELO3D";
    vistexanifps = 18;
    vistexaniislooping = 1;
    vistexcolorstart_s = "100 255 100";
    vistexcolorend_s = "0 255 100";
    vissizestart_s = "25 25";
    vissizeendscale = 3;
    visalphafunc_s = "ADD";
    visalphastart = 255;
};

INSTANCE MFX_cG_Fireball_PFXTRAIL (C_PARTICLEFX)
{
    ppsvalue = 5;
    ppsscalekeys_s = "5";
    ppsislooping = 1;
    ppsissmooth = 1;
    ppsfps = 2;
    shptype_s = "SPHERE";
    shpfor_s = "object";
    shpoffsetvec_s = "0 0 0";
    shpdistribtype_s = "RAND";
    shpdim_s = "20";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2;
    dirmode_s = "RAND";
    dirfor_s = "object";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 0 0";
    dirangleheadvar = 180;
    dirangleelevvar = 180;
    velavg = 0.00800000038;
    velvar = 0.0299999993;
    lsppartavg = 700;
    flygravity_s = "0 0.0003 0";
    visname_s = "FIREFLARE_WHITE.TGA";
    visorientation_s = "NONE";
    vistexanifps = 18;
    vistexaniislooping = 1;
    vistexcolorstart_s = "100 255 100";
    vistexcolorend_s = "0 255 100";
    vissizestart_s = "25 25";
    vissizeendscale = 3;
    visalphafunc_s = "ADD";
    visalphastart = 255;
};

INSTANCE MFX_cG_Fireball_HUMANBURN (C_PARTICLEFX)
{
    ppsvalue = 10;
    ppsscalekeys_s = "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1";
    ppsissmooth = 1;
    ppsfps = 6;
    shptype_s = "BOX";
    shpfor_s = "object";
    shpoffsetvec_s = "0 0 0";
    shpdistribtype_s = "RAND";
    shpdim_s = "15 5 5";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2;
    dirmode_s = "DIR";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 0 400";
    dirangleelev = 90;
    velavg = 0.100000001;
    lsppartavg = 500;
    flygravity_s = "0 0 0";
    visname_s = "HUMANBURN_WHITE.TGA";
    visorientation_s = "VELO";
    vistexisquadpoly = 1;
    vistexanifps = 5;
    vistexaniislooping = 1;
    vistexcolorstart_s = "100 255 100";
    vistexcolorend_s = "0 255 100";
    vissizestart_s = "10 10";
    vissizeendscale = 5;
    visalphafunc_s = "ADD";
    visalphastart = 255;
    visalphaend = 100;
};

INSTANCE MFX_cG_Fireball_HUMANSMOKE (C_PARTICLEFX)
{
    ppsvalue = 3.000000000;
    ppsscalekeys_s = "1 2 3 4 3 2 2 2 2 1 1 1 1 1 1";
    ppsissmooth = 1;
    ppsfps = 1;
    shptype_s = "CIRCLE";
    shpfor_s = "object";
    shpoffsetvec_s = "0 1 0";
    shpdistribtype_s = "RAND";
    shpisvolume = 1;
    shpdim_s = "25";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2.000000000;
    dirmode_s = "DIR";
    dirangleheadvar = 50.000000000;
    dirangleelev = 90.000000000;
    dirangleelevvar = 20.000000000;
    velavg = 0.039999999;
    lsppartavg = 5500.000000000;
    lsppartvar = 400.000000000;
    flygravity_s = "0 0 0";
    visname_s = "FIRESMOKE.TGA";
    visorientation_s = "NONE";
    vistexisquadpoly = 1;
    vistexanifps = 5.000000000;
    vistexaniislooping = 1;
    vistexcolorstart_s = "140 140 140";
    vistexcolorend_s = "255 255 255";
    vissizestart_s = "20 20";
    vissizeendscale = 2.000000000;
    visalphafunc_s = "BLEND";
    visalphastart = 150.000000000;
};

///******************************************************************************************
INSTANCE MFX_cY_Fireball_INIT (C_PARTICLEFX)
{
    ppsvalue = 80.000000000;
    ppsscalekeys_s = "1";
    ppsislooping = 1;
    ppsissmooth = 1;
    shptype_s = "SPHERE";
    shpfor_s = "object";
    shpoffsetvec_s = "0 7 0";
    shpdistribtype_s = "RAND";
    shpdim_s = "10";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    dirmode_s = "TARGET";
    dirfor_s = "object";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 7 0";
    dirangleheadvar = 180.000000000;
    dirangleelevvar = 180.000000000;
    velavg = 0.001000000;
    lsppartavg = 300.000000000;
    flygravity_s = "0 0 0";
    flycolldet_b = 0;
    visname_s = "FIREFLARE_WHITE.TGA";
    visorientation_s = "NONE";
    vistexanifps = 18.000000000;
    vistexaniislooping = 1;
    vistexcolorstart_s = "255 255 100";
    vistexcolorend_s = "255 255 0";
    vissizestart_s = "8 8";
    vissizeendscale = 8.000000000;
    visalphafunc_s = "ADD";
    visalphastart = 255.000000000;
};

PROTOTYPE MFX_cY_Fireball_COLLIDE_PROTO (C_PARTICLEFX)
{
    ppsvalue = 40.000000000;
    ppsfps = 10.000000000;
    ppscreateem_s = "MFX_cY_Fireball_COLLIDE_WALLGLOW";
    shptype_s = "SPHERE";
    shpfor_s = "object";
    shpoffsetvec_s = "0 0 0";
    shpdistribtype_s = "RAND";
    shpisvolume = 1;
    shpdim_s = "8";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2.000000000;
    dirmode_s = "TARGET";
    dirfor_s = "object";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 0 0";
    dirangleheadvar = 180.000000000;
    dirangleelevvar = 180.000000000;
    velavg = 0.079999998;
    velvar = 0.020000000;
    lsppartavg = 2000.000000000;
    flygravity_s = "0 0 0";
    flycolldet_b = 1;
    visname_s = "FIREFLARE_WHITE.TGA";
    visorientation_s = "NONE";
    vistexanifps = 18.000000000;
    vistexaniislooping = 1;
    vistexcolorstart_s = "255 255 100";
    vistexcolorend_s = "255 255 0";
    vissizestart_s = "10 10";
    vissizeendscale = 15.000000000;
    visalphafunc_s = "ADD";
    visalphastart = 255.000000000;
};

INSTANCE MFX_cY_Fireball_COLLIDE1 (MFX_cY_Fireball_COLLIDE_PROTO)
{
    ppsvalue = 10.000000000;
    lsppartavg = 1400.000000000;
    vissizeendscale = 10.000000000;
    visalphastart = 130.000000000;
};

INSTANCE MFX_cY_Fireball_COLLIDE_WALLGLOW (C_PARTICLEFX)
{
    ppsvalue = 3.000000000;
    ppsscalekeys_s = "5 5 4 4 3 3 2 2 1 1";
    ppsissmooth = 1;
    ppsfps = 2.000000000;
    shptype_s = "CIRCLE";
    shpfor_s = "OBJECT";
    shpoffsetvec_s = "0 0 0";
    shpdistribtype_s = "RAND";
    shpisvolume = 1;
    shpdim_s = "50";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2.000000000;
    dirmode_s = "TARGET";
    dirfor_s = "object";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 0 0";
    dirangleheadvar = 180.000000000;
    dirangleelevvar = 180.000000000;
    lsppartavg = 1500.000000000;
    flygravity_s = "0 0.00004 0";
    flycolldet_b = 1;
    visname_s = "HUMANBURN_WHITE.TGA";
    visorientation_s = "VELO";
    vistexisquadpoly = 1;
    vistexanifps = 18.000000000;
    vistexaniislooping = 1;
    vistexcolorstart_s = "255 255 100";
    vistexcolorend_s = "255 255 0";
    vissizestart_s = "2 2";
    vissizeendscale = 20.000000000;
    visalphafunc_s = "ADD";
};

INSTANCE MFX_cY_Fireball_CAST (C_PARTICLEFX)
{
    ppsvalue = 20;
    ppsscalekeys_s = "5";
    ppsislooping = 1;
    ppsissmooth = 1;
    ppsfps = 2;
    shptype_s = "SPHERE";
    shpfor_s = "object";
    shpoffsetvec_s = "0 0 0";
    shpdistribtype_s = "RAND";
    shpdim_s = "14";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2;
    dirmode_s = "RAND";
    dirfor_s = "object";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 0 0";
    dirangleheadvar = 180;
    dirangleelevvar = 180;
    velavg = 0.00800000038;
    velvar = 0.0299999993;
    lsppartavg = 500;
    flygravity_s = "0 0 0";
    visname_s = "FIREFLARE_WHITE.TGA";
    visorientation_s = "VELO3D";
    vistexanifps = 18;
    vistexaniislooping = 1;
    vistexcolorstart_s = "255 255 100";
    vistexcolorend_s = "255 255 0";
    vissizestart_s = "25 25";
    vissizeendscale = 3;
    visalphafunc_s = "ADD";
    visalphastart = 255;
};

INSTANCE MFX_cY_Fireball_PFXTRAIL (C_PARTICLEFX)
{
    ppsvalue = 5;
    ppsscalekeys_s = "5";
    ppsislooping = 1;
    ppsissmooth = 1;
    ppsfps = 2;
    shptype_s = "SPHERE";
    shpfor_s = "object";
    shpoffsetvec_s = "0 0 0";
    shpdistribtype_s = "RAND";
    shpdim_s = "20";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2;
    dirmode_s = "RAND";
    dirfor_s = "object";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 0 0";
    dirangleheadvar = 180;
    dirangleelevvar = 180;
    velavg = 0.00800000038;
    velvar = 0.0299999993;
    lsppartavg = 700;
    flygravity_s = "0 0.0003 0";
    visname_s = "FIREFLARE_WHITE.TGA";
    visorientation_s = "NONE";
    vistexanifps = 18;
    vistexaniislooping = 1;
    vistexcolorstart_s = "255 255 100";
    vistexcolorend_s = "255 255 0";
    vissizestart_s = "25 25";
    vissizeendscale = 3;
    visalphafunc_s = "ADD";
    visalphastart = 255;
};

INSTANCE MFX_cY_Fireball_HUMANBURN (C_PARTICLEFX)
{
    ppsvalue = 10;
    ppsscalekeys_s = "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1";
    ppsissmooth = 1;
    ppsfps = 6;
    shptype_s = "BOX";
    shpfor_s = "object";
    shpoffsetvec_s = "0 0 0";
    shpdistribtype_s = "RAND";
    shpdim_s = "15 5 5";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2;
    dirmode_s = "DIR";
    dirmodetargetfor_s = "OBJECT";
    dirmodetargetpos_s = "0 0 400";
    dirangleelev = 90;
    velavg = 0.100000001;
    lsppartavg = 500;
    flygravity_s = "0 0 0";
    visname_s = "HUMANBURN_WHITE.TGA";
    visorientation_s = "VELO";
    vistexisquadpoly = 1;
    vistexanifps = 5;
    vistexaniislooping = 1;
    vistexcolorstart_s = "255 255 100";
    vistexcolorend_s = "255 255 0";
    vissizestart_s = "10 10";
    vissizeendscale = 5;
    visalphafunc_s = "ADD";
    visalphastart = 255;
    visalphaend = 100;
};

INSTANCE MFX_cY_Fireball_HUMANSMOKE (C_PARTICLEFX)
{
    ppsvalue = 3.000000000;
    ppsscalekeys_s = "1 2 3 4 3 2 2 2 2 1 1 1 1 1 1";
    ppsissmooth = 1;
    ppsfps = 1;
    shptype_s = "CIRCLE";
    shpfor_s = "object";
    shpoffsetvec_s = "0 1 0";
    shpdistribtype_s = "RAND";
    shpisvolume = 1;
    shpdim_s = "25";
    shpscalekeys_s = "1";
    shpscaleislooping = 1;
    shpscaleissmooth = 1;
    shpscalefps = 2.000000000;
    dirmode_s = "DIR";
    dirangleheadvar = 50.000000000;
    dirangleelev = 90.000000000;
    dirangleelevvar = 20.000000000;
    velavg = 0.039999999;
    lsppartavg = 5500.000000000;
    lsppartvar = 400.000000000;
    flygravity_s = "0 0 0";
    visname_s = "FIRESMOKE.TGA";
    visorientation_s = "NONE";
    vistexisquadpoly = 1;
    vistexanifps = 5.000000000;
    vistexaniislooping = 1;
    vistexcolorstart_s = "140 140 140";
    vistexcolorend_s = "255 255 255";
    vissizestart_s = "20 20";
    vissizeendscale = 2.000000000;
    visalphafunc_s = "BLEND";
    visalphastart = 150.000000000;
};
