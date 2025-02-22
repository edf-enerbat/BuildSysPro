﻿within BuildSysPro.Utilities.Data.Solids;
record RockWool = BuildSysPro.Utilities.Records.GenericSolid (
    lambda=0.032,
    rho=40,
    c=1210) "Rock wool" annotation (Documentation(info="<html>
<p><b>--------------------------------------------------------------<br>
Licensed by EDF under a 3-clause BSD-license<br>
Copyright &copy; EDF2009 - 2024<br>
BuildSysPro version 3.7.0<br>
Author : EDF<br>
--------------------------------------------------------------</b></p>
</html>", revisions="<html>
<p>Benoît Charrier 12/2015 : Correction du rho (20 > 40 kg/m3)</p>
</html>"));
