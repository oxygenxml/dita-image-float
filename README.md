Plugin which allows floating an image referenced in a DITA topic left or right depending on the "outputclass" attribute value specified on it.
Something like this:

![https://www.oxygenxml.com/forum/files/floatRight.png](https://www.oxygenxml.com/forum/files/floatRight.png)

The plugin works with DITA-OT 1.8, 2.x and 3.x. It requires for publishing either Apache FOP 2.0 or newer or a commercial FO processor like XEP or Antenna House.

Example:

The DITA structure:

      <p><image href="../../images/Iris_sanguinea.jpg" outputclass="float-right"/>some text</p>

will present in the PDF the image floated on the right hand of the paragraph contents.
The possible values when publishing to both XHTML and PDF are "float-left" and "float-right". 

Copyright and License
---------------------
Copyright 2018 Syncro Soft SRL.

This project is licensed under [Apache License 2.0](https://github.com/oxygenxml/dita-image-float/blob/master/LICENSE)
