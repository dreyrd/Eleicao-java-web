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