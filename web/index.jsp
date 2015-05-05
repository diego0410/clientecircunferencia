<%-- 
    Document   : index
    Created on : 30-abr-2015, 17:30:26
    Author     : DIEGO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>AREA CIRCUNFERENCIA!</h1>
        
        <form method="post" action="index.jsp">
            <input type="text" name="ingresar" placeholder="ingrese texto">
            <input type="submit" value="Calcular">
        </form>
        
            <%-- start web service invocation --%><hr/>
    <%
    try {
	ws.Circunferencia_Service service = new ws.Circunferencia_Service();
	ws.Circunferencia port = service.getCircunferenciaPort();
	 // TODO initialize WS operation arguments here
	java.lang.Double r = Double.valueOf(request.getParameter("ingresar"));
	// TODO process result here
	java.lang.Double result = port.area(r);
	out.println("Area: = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    
        <%-- start web service invocation --%><hr/>
    <%
    try {
	ws.Circunferencia_Service service = new ws.Circunferencia_Service();
	ws.Circunferencia port = service.getCircunferenciaPort();
	 // TODO initialize WS operation arguments here
	java.lang.Double r = Double.valueOf(request.getParameter("ingresar"));
	// TODO process result here
	java.lang.Double result = port.circunferencia(r);
	out.println("Circunferencia: = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

    <%-- end web service invocation --%><hr/>

        
    </body>
</html>
