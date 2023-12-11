<xsl:template match="/">
    <html>
        <head>
            <link rel="stylesheet" type="text/css" href="styles.css"/>
        </head>
        <body>
            <table>
                <tr>
                    <th>Employee Name</th>
                    <th>Designation</th>
                    <th>Date of joining</th>
                </tr>
                <xsl:apply-template select="//Employee[Designation='Tchnical Writer' and (Salary>50000 and Salary<70000)]">
            </table>
            </body>
            </html>
</xsl:template>
<xsl:template match="Employee">
    <tr>
        <td><xsl:value-of select="EmployeeName"/></td>
        <td><xsl:value-of Select="Designation"/></td>
        <td><xsl:value-of select="DateofJoining/"></td>
    </tr>
</xsl:template>
</xsl:stylesheet>