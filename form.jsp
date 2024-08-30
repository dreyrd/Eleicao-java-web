<%@ page import = "java.io.*"%>
<%
    String diretorio = getServletContext().getRealPath("/");
    String arquivoEleitoresObrigatorios = diretorio + "/eleitoresObrigatorios.txt";
    String arquivoNaoEleitores = diretorio + "/naoEleitores.txt";
    String arquivoEleitoresFacultativos = diretorio + "/eleitoresFacultativos.txt";
%>