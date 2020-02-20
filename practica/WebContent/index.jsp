<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import='calculadora.Calculadora'%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculadora</title>
<style>
#calculator {
    width: 250px;
    height: 350px;
    border: 5px solid black;
    text-align: center;
    background: lightgreen;
    margin: 150px auto;
    box-shadow: 0px 0px 30px gray;
  }
  
  #display {
    margin-top: 30px;
    margin-bottom: 20px;
    width: 220px;
    height: 30px;
    border: 1px solid red;
    text-align: right;
    font: 20px bold;
    color: blue
  }
  
  #keys {
    width: 40px;
    height: 35px;
    margin-left: 10px;
    margin-bottom: 10px;
    cursor: pointer
  }
  
  #equal {
    width: 40px;
    height: 35px;
    margin-left: 10px;
    margin-bottom: 10px;
    cursor: pointer
  }
  p {
      margin-right: 20px;
      text-align: right;
      font-size: 10px;
  }
</style>
</head>
<%
Calculadora c = new Calculadora();

String boton = request.getParameter("boton");
if(boton==null) boton = "";
String acomulado = request.getParameter("acomulado");
if(acomulado==null)acomulado="";
acomulado=acomulado+boton;
if (boton.equals("C")) acomulado = "";
if (boton.equals("=")){
	acomulado = acomulado.substring(0,acomulado.length()-1);
	acomulado = c.Calculacion(acomulado);
}
%>


<body>
        <div id="calculator">    
            <form action="index.jsp">
              <input type="textfield" name="resultado" value="<% out.print(acomulado); %>" id="display" enabled>
              <input type="hidden" value="<% out.print(acomulado); %>" name="acomulado">
              
              <input type="submit" value="7" id="keys" name="boton">
              <input type="submit" value="8" id="keys" name="boton">
              <input type="submit" value="9" id="keys" name="boton">
              <input type="submit" value="-" id="keys" name="boton">
              <input type="submit" value="4" id="keys" name="boton">
              <input type="submit" value="5" id="keys" name="boton">    
              <input type="submit" value="6" id="keys" name="boton">
              <input type="submit" value="*" id="keys" name="boton">
              <input type="submit" value="1" id="keys" name="boton">
              <input type="submit" value="2" id="keys" name="boton">
              <input type="submit" value="3" id="keys" name="boton">
              <input type="submit" value="/" id="keys" name="boton">
              <input type="submit" value="C" id="keys" name="boton">
              <input type="submit" value="0" id="keys" name="boton">
              <input type="submit" value="+" id="keys" name="boton">
              <input type="submit" value="=" id="equal" name="boton">
              <p>David Gómez Rus</p>
            </form>
          </div>
    </body>
</html>