within BuildSysPro.IBPSA.Fluid.Movers.Preconfigured;
model SpeedControlled_Nrpm "Fan or pump with ideally controlled speed Nrpm as input signal and pre-configured parameters"
  extends IBPSA.Fluid.Movers.SpeedControlled_Nrpm(
    final per(
      pressure(V_flow=m_flow_nominal/rho_default*{0,1,2}, dp=if rho_default <
            500 then dp_nominal*{1.12,1,0} else dp_nominal*{1.14,1,0.42}),
      powerOrEfficiencyIsHydraulic=true,
      etaHydMet=IBPSA.Fluid.Movers.BaseClasses.Types.HydraulicEfficiencyMethod.EulerNumber,
      etaMotMet=IBPSA.Fluid.Movers.BaseClasses.Types.MotorEfficiencyMethod.GenericCurve,
      speed_rpm_nominal=speed_rpm_nominal),
    final inputType=IBPSA.Fluid.Types.InputType.Continuous,
    final init=Modelica.Blocks.Types.Init.InitialOutput,
    energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial);

  parameter Modelica.Units.SI.MassFlowRate m_flow_nominal(
    final min=Modelica.Constants.small)
    "Nominal mass flow rate for configuration of pressure head vs flow rate performance curve"
    annotation (Dialog(group="Nominal condition"));
  parameter Modelica.Units.SI.PressureDifference dp_nominal(
    final min=Modelica.Constants.small)
    "Nominal pressure head for configuration of pressure head vs flow rate performance curve"
    annotation(Dialog(group="Nominal condition"));
  parameter Modelica.Units.NonSI.AngularVelocity_rpm speed_rpm_nominal(
    final min=Modelica.Constants.small)
    "Nominal rotational speed for configuration of pressure head vs flow rate performance curve"
    annotation (Dialog(group="Nominal condition"));

annotation (
defaultComponentName="mov",
Documentation(info="<html>
<p>
This model is the preconfigured version for
<a href=\"Modelica://IBPSA.Fluid.Movers.SpeedControlled_Nrpm\">
IBPSA.Fluid.Movers.SpeedControlled_Nrpm</a>.
</html>", revisions="<html>
<ul>
<li>
March 1, 2023, by Hongxiang Fu:<br/>
Refactored the model with a new declaration for
<code>m_flow_nominal</code>.<br/>
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/1705\">#1705</a>.
</li>
<li>
August 17, 2022, by Hongxiang Fu:<br/>
First implementation. This is for
<a href=\"https://github.com/lbl-srg/modelica-buildings/issues/2668\">#2668</a>.
</li>
</ul>
</html>"));
end SpeedControlled_Nrpm;
