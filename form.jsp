<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
</body>
</html>

<%@ page import = "java.io.*" %>

<%
    // Atribuição de arquivos
    String diretorio = getServletContext().getRealPath("/");
    String arquivoEleitores = diretorio + "/eleitores.txt";
    String arquivoNaoEleitores = diretorio + "/naoEleitores.txt";
    String arquivoEleitoresFacultativos = diretorio + "/eleitoresFacultativos.txt";
    
    // Criação de arquivos
    File eleitoresFile = new File(arquivoEleitores);
    if (!eleitoresFile.exists()) {
        eleitoresFile.createNewFile();
    }
    File naoEleitoresFile = new File(arquivoNaoEleitores);
    if (!naoEleitoresFile.exists()) {
        naoEleitoresFile.createNewFile();
    }
    File eleitoresFacultativosFile = new File(arquivoEleitoresFacultativos);
    if (!eleitoresFacultativosFile.exists()) {
        eleitoresFacultativosFile.createNewFile();
    }

    String nome;
    int idade;

    if(request.getMethod().equals("POST")){
        nome = request.getParameter("nome");
        idade = Integer.parseInt(request.getParameter("idade"));

        if(idade < 16){
            registrarEleitor(nome, idade, naoEleitoresFile);
        }else if(idade >= 18 && idade <= 65){
            registrarEleitor(nome, idade, eleitoresFile);
        }else{
            registrarEleitor(nome, idade, eleitoresFacultativosFile);
        }

        out.println("Eleitor registrado com sucesso.");
    }
%>

<%! 
    void registrarEleitor(String nome, int idade, File arquivo) throws IOException {
        Writer gravar = new BufferedWriter(new FileWriter(arquivo, true)); // 'true' para anexar ao arquivo
        gravar.write(nome + ", " + idade + "\n");
        gravar.flush();
        gravar.close();
    }
%>

<script>
    document.addEventListener('DOMContentLoaded', function() {

        window.location.href = './index.html';
        
        

    });
</script>