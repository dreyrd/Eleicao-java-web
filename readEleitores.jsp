<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./CSS/style.css">
    <title>Exer</title>
</head>
<body>
    
    <nav id="navegacao">

        <section class="fechar-menu">
            
            <img src="./img/close.png" alt="fechar menu" id="fechar" onclick="fecharMenu()">
            
        </section>

        <a href="./index.html">Voltar para home</a><br><br>
        <a href="readEleitores.jsp">Lista de Eleitores</a><br><br>
        <a href="readNaoEleitores.jsp">Lista de Nao Eleitores</a><br><br>
        <a href="readEleitoresFacultativos.jsp">Lista de Eleitores Facultativos</a>

    </nav>


    <header class="cabecalho">

        <img src="./img/hamburguer.png" alt="menu hamburguer" class="menu" onclick="abrirMenu()">

    </header>

    <main class="questinarios">

        
        <%@ page import = "java.io.*" %>

        <%
        String diretorio = getServletContext().getRealPath("/");
        String arquivo = diretorio + "/eleitores.txt";

        try{
            BufferedReader linha = new BufferedReader(new FileReader(arquivo));
            String str;
            while((str = linha.readLine()) != null){
                out.println(str + "<br>");
            }
            linha.close();
        }catch(IOException imprimirlinha){
            out.println(imprimirlinha);
        }
        %>


    </main>

    
    <script src="./JS/script.js"></script>

</body>
</html>

