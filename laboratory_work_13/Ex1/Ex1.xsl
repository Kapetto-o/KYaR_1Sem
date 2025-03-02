<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head><title>Лабораторная 13-1</title></head>
<body>
    <h2>Университеты и факультеты</h2>
    <table border="1" cellspacing="0">
        <xsl:attribute name="style">
            margin-left: 10px;
        </xsl:attribute>
        <tr>
            <xsl:attribute name="style">
                background-color: silver;
                padding: 5px;
            </xsl:attribute>
            <th>Университеты</th>
            <th>Факультеты</th>
        </tr>
        <xsl:for-each select="universities/university">
         <xsl:sort select="universityname" order="ascending"/>
        <tr>
            <td>
            <xsl:attribute name="style">
            background-color: #abcdef;
            padding: 5px;
            text-align: center;
            </xsl:attribute>
            <xsl:value-of select="universityname"/>
            </td>
            <td>
                <xsl:attribute name="style">
                    background-color: #ce9f71;
                    padding: 5px;
                </xsl:attribute>

                <xsl:value-of select="faculties"/>
            </td>
        </tr>
        </xsl:for-each>
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>