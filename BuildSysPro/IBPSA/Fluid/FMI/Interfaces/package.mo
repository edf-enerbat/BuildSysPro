within BuildSysPro.IBPSA.Fluid.FMI;
package Interfaces "Package with interfaces for models that serves as an FMU container"
  extends Modelica.Icons.InterfacesPackage;


annotation (preferredView="info", Documentation(info="<html>
<p>
This package contains connectors that are used to export fluid flow models
as Functional Mockup Units.
</p>
<p>
The connectors
<a href=\"modelica://BuildSysPro.IBPSA.Fluid.FMI.Interfaces.Inlet\">
IBPSA.Fluid.FMI.Interfaces.Inlet</a>
and
<a href=\"modelica://BuildSysPro.IBPSA.Fluid.FMI.Interfaces.Outlet\">
IBPSA.Fluid.FMI.Interfaces.Outlet</a>
are hierarchical. This was done for the exported FMUs to have hierarchical
names for their input and output signals.
</p>
</html>", revisions="<html>
</html>"));
end Interfaces;
