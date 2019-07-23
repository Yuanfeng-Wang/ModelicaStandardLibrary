within Modelica.Magnetic.FundamentalWave.Components;
model Reluctance "Salient reluctance"
  import Modelica.Constants.pi;
  extends Magnetic.FundamentalWave.Interfaces.TwoPort;
  parameter Magnetic.FundamentalWave.Types.SalientReluctance R_m(d(start=1), q(
        start=1)) "Magnetic reluctance in d=re and q=im axis";
equation
  (pi/2)*V_m.re = R_m.d*Phi.re;
  (pi/2)*V_m.im = R_m.q*Phi.im;
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics={Rectangle(
              extent={{-70,30},{70,-30}},
              lineColor={255,128,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),Line(points={{-96,0},{-70,0}},
          color={255,128,0}),Line(points={{70,0},{96,0}}, color={255,128,0}),
          Text(
              extent={{-150,50},{150,90}},
              textColor={0,0,255},
              textString="%name")}), Documentation(info="<html>
<p>
The salient reluctance models the relationship between the complex magnetic potential difference
<img src=\"modelica://Modelica/Resources/Images/Magnetic/FundamentalWave/V_m.png\" alt=\"V_m.png\"> and the complex magnetic flux <img src=\"modelica://Modelica/Resources/Images/Magnetic/FundamentalWave/Phi.png\">,
</p>

<blockquote>
<img src=\"modelica://Modelica/Resources/Images/Magnetic/FundamentalWave/Components/reluctance.png\"
      alt=\"reluctance.png\">
</blockquote>

<p>which can also be expressed in terms complex phasors:</p>

<blockquote>
<img src=\"modelica://Modelica/Resources/Images/Magnetic/FundamentalWave/Components/reluctance_alt.png\"
     alt=\"reluctance_alt.png\">
</blockquote>

</html>"));
end Reluctance;
