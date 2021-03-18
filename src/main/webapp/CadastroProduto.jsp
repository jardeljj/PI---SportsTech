<%-- 
    Document   : CadastroProduto
    Created on : 17 de mar de 2021, 21:58:49
    Author     : Jardel
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
              integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
                integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
                integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="Assets/css/Style.css">
        <title>Cadastro de Produto</title>
    </head>
    <%@include file="Header.jsp" %>
    <body>
        <div>
            <a href="Alterar_Produto.jsp">
                <i class="bi bi-arrow-right-circle"></i>
                <svg xmlns="http://www.w3.org/2000/svg" width="1000" height="35" fill="currentColor" class="bi bi-arrow-right-circle" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"/>
                </svg>
            </a>
        </div>
        <main>
            <div class="container">
                <h1>Cadastro de Produtos</h1>
                <br>
                <form action="ProdutoController" method="POST" name="addProduto">
                    <input type="hidden" value="${produto.codigo}" id="codigo" name="Nome">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="nome-do-produto">Nome do Produto:</label>
                            <input type="text" class="form-control" id="Nome do produto" name="Nome"
                                   placeholder="Insira o nome do produto"data-min-length="3"
                                   data-max-length="30" value="<c:out value="${produto.Nome}" />" >
                        </div>
                        <div class="form-group col-md-3">
                            <label for="marca">Marca:</label>
                            <input type="text" class="form-control" id="Marca" placeholder="Insira a marca" 
                                   name="Marca" data-min-length="3" data-max-length="30" value="<c:out value="${procuto.Marca}" />">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-1">
                            <label for="inputTamanho">Tamanho</label>
                            <select class="form-control" name="Tamanho" aria-placeholder="0" id="exampleFormControlSelect1" value="<c:out value="${produto.Tamanho}" />">
                                <option></option>
                                <option>30</option>
                                <option>31</option>
                                <option>32</option>
                                <option>33</option>
                                <option>34</option>
                                <option>35</option>
                                <option>36</option>
                                <option>37</option>
                                <option>38</option>
                                <option>39</option>
                                <option>40</option>
                                <option>41</option>
                                <option>42</option>
                                <option>43</option>
                                <option>44</option>
                                <option>45</option>
                                <option>46</option>
                                <option></option>
                                <option>P</option>
                                <option>M</option>
                                <option>G</option>
                                <option>GG</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-2">
                            <label for="inputCor">Cor:</label>
                            <select class="form-control" name="Cor" id="exampleFormControlSelect1" aria-placeholder="Azul" value="<c:out value="${produto.Cor}" />" >
                                <option></option>
                                <option>Branco</option>
                                <option>Preto</option>
                                <option>Azul</option>
                                <option>Vermelho</option>
                                <option>Verde</option>
                                <option>Rosa</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-3">
                            <label for="preco">Preço:</label>
                            <input type="number" class="form-control" id="preco" value="<c:out value="${produto.Preco}" />"  name="Preco"
                                   data-min-length="1" data-max-length="7" placeholder="$0.00">
                        </div>
                        <div class="form-group col-md-3">
                            <label for="Quantidade-Estoque">Quantidade de Produto:</label>
                            <input type="text" class="form-control" id="Qdt-estoque" value="<c:out value="${produto.QtnProduto}" />" name="QtnProduto"
                                   data-min-length="1" data-max-length="10" placeholder="0">
                        </div>
                    </div>
                    <div class="form-group row ">
                        <label for="avaliacao" class="col-1 col-form-label">Avaliação:</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="avaliacao" value="<c:out value="${produto.Avaliacao}" />" name="Avaliacao"
                                   data-min-length="3" data-max-length="30">
                        </div>
                    </div>
                    <div class="form-row">
                        <label for="nome-por-extenso">Descrição do Produto:</label>
                        <textarea class="form-control" placeholder="Descreva o produto" id="exampleFormControlTextarea1" value="<c:out value="${produto.Descricao}" />" name="Descricao"
                                  rows="3"></textarea >
                        <input
            type="submit" value="Submit" />
                    </div>
                                  
                    <div id="uparquivo" class="form-group">
                        <div id="uparquivo" class="form-group">
                            <label for="exampleFormControlFile1">Caminho do arquivo upload:</label>
                            <input type="file" class="form-control-file" id="exampleFormControlFile1">
                        </div>
                    </div>
                    <div class="images-produtos">
                        <table id="tabela" class="table">
                            <thead>
                                <tr>
                                    <th><input type="checkbox"></th>
                                    <th><input type="checkbox"></th>
                                    <th><input type="checkbox"></th>
                                    <th><input type="checkbox"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="box">

                                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAMAAAD04JH5AAAAIVBMVEXp7vG6vsHS1tnAxcfd4uXGys3V2dzL0NO9wcTJzdDj6OsC6wUeAAABB0lEQVR4nO3Y2w6CMBCEYba2or7/AwuChwrSNWH2gvzfFYmNM7Hthth1AAAAAAAAAADA72xevSS/d+ebFUWBP/LN8v75wwZcnEuvZmn/Asns5F966ALDQ+P7tQUcx1xaoMzHfCtBWuB5z7bOQ0gBqz7M1cUPKVDNhFyPnvAzkL+Gn7RAXt6C/D1+tdcwlx/57waxk/Cd/2oQWuAz/9kgskCdPzeIKJDW86cGAQXKdAyX+Y8G+gLzRVjLH6PlBaZhVFbzIwqU1eC4Atv5+gKNfHmBVr68QCufAscvkFpCRnF76REL3Mb99TFJgfYI+iTIn95GnQT/T4ycO5AUvz8AAAAAAAAAADJ31dIGO67S1s0AAAAASUVORK5CYII="
                                                 alt="imagem do produto" />
                                            <span> Imagem 1 </span>
                                        </div>
                                        </th>
                                    <td>
                                        <div class="box">

                                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAMAAAD04JH5AAAAIVBMVEXp7vG6vsHS1tnAxcfd4uXGys3V2dzL0NO9wcTJzdDj6OsC6wUeAAABB0lEQVR4nO3Y2w6CMBCEYba2or7/AwuChwrSNWH2gvzfFYmNM7Hthth1AAAAAAAAAADA72xevSS/d+ebFUWBP/LN8v75wwZcnEuvZmn/Asns5F966ALDQ+P7tQUcx1xaoMzHfCtBWuB5z7bOQ0gBqz7M1cUPKVDNhFyPnvAzkL+Gn7RAXt6C/D1+tdcwlx/57waxk/Cd/2oQWuAz/9kgskCdPzeIKJDW86cGAQXKdAyX+Y8G+gLzRVjLH6PlBaZhVFbzIwqU1eC4Atv5+gKNfHmBVr68QCufAscvkFpCRnF76REL3Mb99TFJgfYI+iTIn95GnQT/T4ycO5AUvz8AAAAAAAAAADJ31dIGO67S1s0AAAAASUVORK5CYII="
                                                 alt="imagem do produto" />
                                            <span> Imagem 2 </span>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="box">

                                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAMAAAD04JH5AAAAIVBMVEXp7vG6vsHS1tnAxcfd4uXGys3V2dzL0NO9wcTJzdDj6OsC6wUeAAABB0lEQVR4nO3Y2w6CMBCEYba2or7/AwuChwrSNWH2gvzfFYmNM7Hthth1AAAAAAAAAADA72xevSS/d+ebFUWBP/LN8v75wwZcnEuvZmn/Asns5F966ALDQ+P7tQUcx1xaoMzHfCtBWuB5z7bOQ0gBqz7M1cUPKVDNhFyPnvAzkL+Gn7RAXt6C/D1+tdcwlx/57waxk/Cd/2oQWuAz/9kgskCdPzeIKJDW86cGAQXKdAyX+Y8G+gLzRVjLH6PlBaZhVFbzIwqU1eC4Atv5+gKNfHmBVr68QCufAscvkFpCRnF76REL3Mb99TFJgfYI+iTIn95GnQT/T4ycO5AUvz8AAAAAAAAAADJ31dIGO67S1s0AAAAASUVORK5CYII="
                                                 alt="imagem do produto" />

                                            <span> Imagem 3 </span>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="box">

                                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAMAAAD04JH5AAAAIVBMVEXp7vG6vsHS1tnAxcfd4uXGys3V2dzL0NO9wcTJzdDj6OsC6wUeAAABB0lEQVR4nO3Y2w6CMBCEYba2or7/AwuChwrSNWH2gvzfFYmNM7Hthth1AAAAAAAAAADA72xevSS/d+ebFUWBP/LN8v75wwZcnEuvZmn/Asns5F966ALDQ+P7tQUcx1xaoMzHfCtBWuB5z7bOQ0gBqz7M1cUPKVDNhFyPnvAzkL+Gn7RAXt6C/D1+tdcwlx/57waxk/Cd/2oQWuAz/9kgskCdPzeIKJDW86cGAQXKdAyX+Y8G+gLzRVjLH6PlBaZhVFbzIwqU1eC4Atv5+gKNfHmBVr68QCufAscvkFpCRnF76REL3Mb99TFJgfYI+iTIn95GnQT/T4ycO5AUvz8AAAAAAAAAADJ31dIGO67S1s0AAAAASUVORK5CYII="
                                                 alt="imagem do produto" />

                                            <span> Imagem 4 </span>
                                        </div>
                                    </td>
                                </tr>
                        </table>
                    </div>
                    <br>
                    <button type="submit" id="btn-submit" value=submit" class="btn btn-primary col-2">OK</button>
                    <a href="produtos.html"><button type="button" class="btn btn-danger col-2">Cancelar</button></a>
                </form>
            </div>

        </main>
        <p class="error-validation template">
            <script src="Assets/Js/Script.js"></script>
    </body>
</html>
