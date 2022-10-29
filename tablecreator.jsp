<% String rowsStr = request.getParameter("rows");
String columnsStr = request.getParameter("columns");
int rows =Integer.parseInt(rowsStr);
int columns =Integer.parseInt(columnsStr);
StringBuilder result = new StringBuilder("<form action=''><center><table border='1'>");
final String YELLOW="#FFFF00";
final String RED="#FF0000";
String colour="";

for (int y=0; y<rows; y++) {
	result.append("<tr>");
	for (int x=0; x<columns; x++) {
				
		if ((x+y)%2==0) {
			result.append("<td align='center' width='40' bgcolor='"+RED+"'>("+x+";"+y+")</td>");
		} else {
			result.append("<td align='center' width='40' bgcolor='"+YELLOW+"'>("+x+";"+y+")</td>");
		}			
	}
	
	result.append("</tr>");
}

result.append("</table></form>");
result.trimToSize();
out.write(result.toString());

%>