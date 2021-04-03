<%-- 
    Document   : Detalhes
    Created on : 17 de mar de 2021, 21:59:56
    Author     : Jardel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title>Detalhes do Produto</title>
    </head>
    <%@include file="Header.jsp"%>
    <body>
        <div>
            <a href="Produto.jsp">
                <i class="bi bi-arrow-left-circle"></i>
                <svg xmlns="http://www.w3.org/2000/svg" width="220" height="35" fill="currentColor" class="bi bi-arrow-left-circle" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-4.5-.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z"/>
                </svg>
            </a>
        </div>
        <br>
        <main role="main">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <h1>Detalhes do Produto:</h1>
                    </div>

                    <div class="col">
                        <a href="CadastratoProduto.html" class="btn btn-outline-secondary"><i class="fas fa-plus"></i> Incluir novo</a>
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
            </div>
            <div class="Detalhes">
                    <div>
                        <img src="Assets/img/HZM-1898-068_zoom1.webp" alt="Soccer Shoes" width="400" height="500"> 

                    </div>
                    <div>
                        <h2>Chuteira Campo Nike Mercurial Vapor 13 Club FG - Vermelho+Preto</h2>
                        <br>
                        <h4>Descrição</h4>
                        <p>Descrição

                            Use e abuse da velocidade nas quatro linhas e aposte na Chuteira de Campo Nike Mercurial Vapor 13 Club! Com material sintético resistente e travas fixas com Speed System, essa Chuteira de Campo Nike oferece conforto, estabilidade em campo e melhor mobilidade nas jogadas de rapidez e agilidade, para você deixar os adversários comendo grama e marcar golaços. Corra até o fim em busca da vitória com a Chuteira Nike de Campo Mercurial Vapor 13 Club!</p>
                    </div>
                    <div>
                        <span class="rating-box-title">Avaliações</span>
                        <div>
                            <span class="rating-box__value">4.63</span>
                        </div>
                    </div>


                </div>
        </main>
    </body>
</html>
