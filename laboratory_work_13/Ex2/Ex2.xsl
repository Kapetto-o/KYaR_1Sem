<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head><title>Лабораторная 13-2</title></head>
<body>
    <h2>Аттестация студентов БГТУ</h2>
    <table border="1" cellspacing="0">
        <xsl:attribute name="style">
            margin-left: 50px;
        </xsl:attribute>
        <tr>
            <xsl:attribute name="style">
                background-color: silver;
                padding: 5px;
            </xsl:attribute>
            <th>ФИО студента</th>
            <th>Оценка</th>
        </tr>
        <xsl:for-each select="students/student">
        <tr>
            <td>
            <xsl:value-of select="name"/>
            </td>
            <td>
                <xsl:attribute name="style">
                <xsl:choose>
                <xsl:when test="grade &lt; 4">background-color: red;</xsl:when>
                <xsl:when test="grade &gt; 8">background-color: green;</xsl:when>
                <xsl:otherwise>background-color: white;</xsl:otherwise>
                </xsl:choose>
                </xsl:attribute>
                <xsl:value-of select="grade"/>
            </td>
        </tr>
        </xsl:for-each>
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>