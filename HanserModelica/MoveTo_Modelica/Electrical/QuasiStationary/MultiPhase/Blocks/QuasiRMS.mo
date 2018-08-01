within HanserModelica.MoveTo_Modelica.Electrical.QuasiStationary.MultiPhase.Blocks;
block QuasiRMS
  extends Modelica.Blocks.Interfaces.SO;
  parameter Integer m(min=2) = 3 "Number of phases";
  Modelica.ComplexBlocks.Interfaces.ComplexInput u[m]
    annotation (Placement(transformation(extent={{-140,-20},{-100,20}})));
equation
  y = MoveTo_Modelica.Electrical.QuasiStationary.MultiPhase.Functions.quasiRMS(u);

  annotation (defaultComponentName="rms", Documentation(info="<html>
<p>
This block determines the continuous quasi <a href=\"modelica://Modelica.Blocks.Math.RootMeanSquare\">RMS</a> value of a multi phase system, representing an equivalent RMS vector or phasor.
</p>
<pre>
 y = sqrt(sum(u[k]^2 for k in 1:m)/m)
</pre>
</html>"));
end QuasiRMS;
