within BuildSysPro.Utilities.Data.Solids;
record CastIron = BuildSysPro.Utilities.Records.GenericSolid (
    lambda=50,
    rho=7500,
    c=450) "Cast iron (standard ISO 10456)"
                                 annotation (Documentation(info="<html>
<p><b>--------------------------------------------------------------<br>
Licensed by EDF under a 3-clause BSD-license<br>
Copyright &copy; EDF2009 - 2024<br>
BuildSysPro version 3.7.0<br>
Author : EDF<br>
--------------------------------------------------------------</b></p>
</html>"));
