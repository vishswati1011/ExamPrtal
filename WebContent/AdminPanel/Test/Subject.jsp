
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/CSSFolder/dropdownCSS.css" /> 
       
    </head>
    <body>
        <div id="menu">
            <ul><li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">News</a>
                   <%--- <span><img src="image/down.png" width="15px" height="15px" />--%>
                        <ul><li><a href="#"> India</a></li>
                            <li><a href="#"> England</a></li>
                            <li><a href="#">Paris</a></li>
                            <li><a href="#">Australia</a>
                              <%---  <span><img src="image/right.png" width="15px" height="15px" />--%>
                                    <ul><li><a href=""> Aus1</a></li>
                                    <li><a href=""> Aus2</a></li>
                                    <li><a href=""> Aus3</a></li>
                                    <li><a href=""> Aus4</a></li>
                                    </ul></li>
                            <li><a href="#">SouthArab</a>
                        </ul></li>
                <li><a href="#">country</a></li>
                <li><a href="#">contact</a></li>
            </ul>
        </div>
    </body>
</html>
