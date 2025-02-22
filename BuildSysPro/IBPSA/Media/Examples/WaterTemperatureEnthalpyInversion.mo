within BuildSysPro.IBPSA.Media.Examples;
model WaterTemperatureEnthalpyInversion
  "Model to check computation of h(T) and its inverse"
  extends Modelica.Icons.Example;
  extends
    IBPSA.Media.Examples.BaseClasses.TestTemperatureEnthalpyInversion(
      redeclare package Medium = IBPSA.Media.Water);
  annotation (
experiment(Tolerance=1e-6, StopTime=1.0),
__Dymola_Commands(file="modelica://BuildSysPro/IBPSA/Resources/Scripts/Dymola/Media/Examples/WaterTemperatureEnthalpyInversion.mos"
        "Simulate and plot"),
    Documentation(info="<html>
<p>
This model tests whether the inversion of temperature and enthalpy
is implemented correctly.
If <i>T &ne; T(h(T))</i>, the model stops with an error.
</p>
</html>", revisions="<html>
<ul>
<li>
November 21, 2013, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end WaterTemperatureEnthalpyInversion;
