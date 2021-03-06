<%-- 
    Document   : Header
    Created on : 17 de mar de 2021, 21:59:14
    Author     : Jardel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<link rel="stylesheet" href="Header.css">       

<header>
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <a class="navbar-brand" href="#">SportsTech</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Alterna navegação">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
          <a class="nav-link" href="CadastroProduto.jsp">Novo Produto</a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="Alterar_Produto.jsp">Alterar Produto</a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="InativareAtiva.jsp">Inativar e Reativar Produto</a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="Produto.jsp">Produtos</a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="Detalhes.jsp">Detalhes dos Produtos</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Pagina principal</a>
      </li>
    </ul>
    <ul class="navbar-nav px-3">
        <li class="nav-item">
          <a class="nav-link" href="#">Perfil</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Sair</a>
        </li>    </ul>
  </div>
  </nav>
    </header>
</html>
