within BuildSysPro.Utilities.Data.Solids;
record AcousticInsulation = BuildSysPro.Utilities.Records.GenericSolid (
    lambda=0.041,
    rho=20,
    c=1210) "Acoustic insulation (source Ca-Sis)" annotation (Documentation(info="<html>
<p><b>--------------------------------------------------------------<br>
Licensed by EDF under a 3-clause BSD-license<br>
Copyright &copy; EDF2009 - 2024<br>
BuildSysPro version 3.7.0<br>
Author : EDF<br>
--------------------------------------------------------------</b></p>
</html>"));
