﻿within BuildSysPro.BuildingStock.Utilities.Records.BuildingData.IndividualHousing.BuildingDataMOZART;
record Mozart2012_STD =
    BuildSysPro.BuildingStock.Utilities.Records.BuildingData.IndividualHousing.BuildingDataMOZART.BuildingType
    (
    redeclare replaceable parameter
      WallData.IndividualHousing.RT2012_STD.AtticWall ParoiSousCombles,
    redeclare replaceable parameter WallData.IndividualHousing.RT2012_STD.Door
                                                 Porte,
    redeclare replaceable parameter WallData.IndividualHousing.RT2012_STD.Floor
                                                  PlancherBas,
    redeclare replaceable parameter
      WallData.IndividualHousing.RT2012_STD.ExtWall Mur,
    redeclare replaceable parameter WallData.IndividualHousing.PartitionWall
      Cloisons,
    redeclare replaceable parameter WallData.IndividualHousing.SupportingWall
      Refends,
    redeclare replaceable parameter WallData.IndividualHousing.InteriorDoor
      PorteInt,
    UvitrageAF=1.5,
    UvitrageSF=1.5,
    renouvAir=0.3,
    ValeursK={0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00},
    TauPonts={1,1,1,1,1,1,1,1,1},
    bLNC=0.95,
    bPlancher=1,
    bSousCombles=1) "Settings of Mozart individual housing standard 2012"
  annotation (Documentation(info="<html>
<p><u><b>Hypothesis and equations</b></u></p>
<p>none</p>
<p><u><b>Bibliography</b></u></p>
<p>none</p>
<p><u><b>Instructions for use</b></u></p>
<p>Detail of thermal bridge vectors :</p>
<ul>
<li>TauPonts[1] and ValeursK[1] : exterior wall / exterior wall</li>
<li>TauPonts[2] and ValeursK[2] : exterior wall / supporting wall</li>
<li>TauPonts[3] and ValeursK[3] : exterior wall / floor</li>
<li>TauPonts[4] and ValeursK[4] : floor / crawlspace</li>
<li>TauPonts[5] and ValeursK[5] : supporting wall / floor</li>
<li>TauPonts[6] and ValeursK[6] : exterior wall / attic wall</li>
<li>TauPonts[7] and ValeursK[7] : attic wall / attic</li>
<li>TauPonts[8] and ValeursK[8] : door</li>
<li>TauPonts[9] and ValeursK[9] : windows</li>
</ul>
<p><u><b>Known limits / Use precautions</b></u></p>
<p style=\"color:red\">Warning : thermal bridges have been set to null because of a lack of data, it will be necessary to complete them when more details are available.</p>
<p><u><b>Validations</b></u></p>
<p>Validated model - Benoît Charrier 12/2015</p>
<p><b>--------------------------------------------------------------<br>
Licensed by EDF under a 3-clause BSD-license<br>
Copyright &copy; EDF2009 - 2024<br>
BuildSysPro version 3.7.0<br>
Author : Benoît CHARRIER, EDF (2015)<br>
--------------------------------------------------------------</b></p>
</html>", revisions="<html>
<p>Benoît Charrier 06/2017 : editing value of air renewal <code>renouvAir</code> from 0,426 to 0,3 vol/h to fit with a humidity sensitive ventilation system which is commonly used in RT2012</p>
</html>"));
