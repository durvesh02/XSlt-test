<xsl:template match="/">
      <html>
           <head>
              <style>
                 table{
                      border-collapse:collapse;
                      width:100%;
                      font-size: 12pt;
                 }
                 th, td{
                      border:1pt solid #D8D9DA;
                      padding: 8px;
                      text-align: left;
                 }      
                 th{
                    background-color: id="D6EFED";
                    text-align:center;
                 }     
                 </style>
                 </head>
                 <body>
                     <table>
                          <tr>
                             <th>Employee Name</th>
                             <th>Designation</th>
                             <th>Date of Joining</th>
                          </tr>
                          <xsl:apply-template select="//Employee[Designation='Technical Writer' and (Salary>500000 and Salary<700000)]"/]>
                    </table>
                </body>
                <html>
                </xsl:template>

                <xsl:template match="Employee">
                     <tr>
                        <td><xsl:value-of select="EmployeeName"/></td>
                        <td><xsl:value-of select="Designation"/></td>
                        <td><xsl:value-of select="DateofJoining"/></td>
                     </tr>
                </xsl:template>
                </xsl:stylesheet>
