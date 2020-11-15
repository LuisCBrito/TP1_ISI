<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Trending Videos Portugal</title>
                <style>
                    table{
                    width:40%;
                    }
                    table, th ,td{
                    padding: 5px;
                    text-align: left;
                    }
                </style>
            </head>
            <body>
                <h1>Trending Videos Portugal</h1>
                <table border="2px" cellspacing="5px" cellpadding="2px">
                    <th bgcolor="#9acd32">
                        Title
                    </th>
                    <th bgcolor="#9acd32">
                        Views
                    </th>
                    <xsl:for-each select="/Rows/Row">
                   <tr>
                       <td>
                            <xsl:value-of select="title"/>
                       </td>
                       <td>
                            <xsl:value-of select="views"/>
                       </td>
                   </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
<!--    <xsl:template match="TrendingVideos_PT">-->
<!--        -->
<!--        <tr>-->
<!--            <td>-->
<!--                <xsl:value-of select="views"/>-->
<!--            </td>-->
<!--        </tr>-->
<!--    </xsl:template>-->
</xsl:stylesheet>