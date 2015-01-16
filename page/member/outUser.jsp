<%

    
    if(session.getAttribute("id") != null){            

		//request.getSession().removeAttribute( "id");
		//request.getSession(true).invalidate(); 
		
		session.removeAttribute("id");
        response.sendRedirect("../index.jsp") ;
	}else{
        out.println("µn¥X¿ù»~ !!") ;
	}
%>

