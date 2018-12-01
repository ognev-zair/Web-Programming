<%-- 
    Document   : newjsp
    Created on : Nov 30, 2018, 9:16:07 PM
    Author     : ognev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <title>Calc</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="calc.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form method="POST" action="Improved.do"> 
        <div class="main">
        <div class="item">
            <input class="cell" type="number" name="a" value="${a}">
             +
             <input  class="cell" type="number" name="b" value="${b}">
             =
             <input disabled class="cell" type="number" name="${c}" value="${c}" >
        </div>
        
           <div class="item">
            <input class="cell" type="number" name="a1" value="${a1}">
             *
             <input  class="cell" type="number" name="b1" value="${b1}">
             =
             <input  disabled class="cell" type="number" name="c1" value="${c1}">
        </div>
        </div>
        <input  class="cell" type="submit">
      
        </form>
    </body>
</html>
