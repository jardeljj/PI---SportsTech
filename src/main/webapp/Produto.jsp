<%-- 
    Document   : Produto
    Created on : 17 de mar de 2021, 22:00:19
    Author     : Jardel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
              integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
              integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
                integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="Assets/css/Style.css">
        <title>Lista de produtos </title>
    </head>
    <%@include file="Header.jsp" %>
    <body>

        <div class="Arrow">
            <div>
                <a href="InativareAtiva.jsp">
                    <i class="bi bi-arrow-left-circle"></i>
                    <svg xmlns="http://www.w3.org/2000/svg" width="220" height="35" fill="currentColor"
                         class="bi bi-arrow-left-circle" viewBox="0 0 16 16">
                    <path fill-rule="evenodd"
                          d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-4.5-.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z" />
                    </svg>
                </a>
            </div>
            <div>
                <a href="Detalhes.jsp">
                    <i class="bi bi-arrow-right-circle"></i>
                    <svg xmlns="http://www.w3.org/2000/svg" width="1000" height="35" fill="currentColor"
                         class="bi bi-arrow-right-circle" viewBox="0 0 16 16">
                    <path fill-rule="evenodd"
                          d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z" />
                    </svg>
                </a>
            </div>
        </div>
        <br>
        <main role="main">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <h1>Produtos:</h1>
                    </div>

                    <div class="col">
                        <a href="CadastroProduto.jsp" class="btn btn-outline-secondary"><i class="fas fa-plus"></i> Incluir novo</a>
                    </div>
                </div>


                <br>
                <div class="form-group row">
                    <label for="pesquisar" class="col-sm-1 col-form-label">Procurar: </label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="pesquisar" placeholder="Digite oque está procurando...">
                    </div>
                    <a href=" " class="btn btn-primary"><i class="fas fa-search"></i></a>
                </div>
                <br>
                <div class="row">
                    <div class="col">
                        <table class="table table-hover">
                            <thead>
                            <th>Nome do produto</th>
                            <th>Marca</th>
                            <th>Cor</th>
                            <th>Qnt Produto</th>
                            <th>Avaliação</th>
                            <th>Ações</th>
                            <th>Tarefas</th>
                            </thead>
                            <tbody>
                            <c:forEach items="${produtos}"  var="produto">
                                <tr>
                                <td><c:out value="${produto.Id}" /></td>
                                <td><c:out value="${produto.Nome}" /></td>
                                <td><c:out value="${produto.Marca}" /></td>
                                <td><c:out value="${produto.Cor}" /></td>
                                <td><c:out value="${produto.QtdProduto}" /></td>
                                <td><c:out value="${produto.Avaliacao}" /></td>
                                <td><a href="ProdutoController?action=edit&Id=" class= "btn btn-primary"><i class="fas fa-edit"></i><c:out value="${produto.id}"/></a></td>
                                <td><a href="ProdutoController?action=delete&nome=" value="<c:out value="${produto.nome}"/>">Delete</a></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>
