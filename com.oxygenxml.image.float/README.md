Plugin which allows floating an image referenced in a DITA topic left or right depending on the "outputclass" attribute value specified on it.
The plugin works with both DITA-OT 1.8 and 2.x. It requires for publishing either Apache FOP 2.0 or newer or a commercial FO processor like XEP or Antenna House..

Example:

The DITA structure:

      <p><image href="../../images/Iris_sanguinea.jpg" outputclass="float_right"/>some text</p>

will present in the PDF the image floated on the right hand of the paragraph contents.
The possible values when publishing to both XHTML and PDF are "float_left" and "float_right". 
When publishing only to PDF other possible values for the float_* attribute can be used from the XSL-FO specification: 
'before', 'start', 'end', 'left', 'right', 'inside', 'outside', 'none', or 'inherit'.