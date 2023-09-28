<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Palíndromos</title>
</head>
<body>
<tr>
    <%
        //Cambiar palabra o frase para saber si es polindromo o no
        String fraseIngresada = "hola";

        // Combierte la cadena de texto en un arreglo
        char arreglo[] = fraseIngresada.toCharArray();


        for(int i=0; i < arreglo.length; i++){
    %>
    <td> <%= arreglo[i] %> </td>
    <% } %>

</tr>
    <br/>

<!--Muestra el resultado booleano de si es o no es-->
<div id="resultado" />

<script>
    // Se encarga de revisar si si es palindromo
    function esPalindromo(frase) { return frase === frase.split("").reverse().join(""); }

    var frase = '<%= new String(arreglo) %>';

    var resultado = esPalindromo(frase);

    var resultadoElement = document.getElementById("resultado");
    // Definicion de los dos posibles resultados
    resultadoElement.innerHTML = resultado ? "Si es un palindromo" : "No es un palindromo";
</script>
</body>
</html>

