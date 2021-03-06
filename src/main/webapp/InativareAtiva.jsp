<%-- 
    Document   : InativareAtiva
    Created on : 17 de mar de 2021, 21:59:39
    Author     : Jardel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <title>Inativar e Ativar</title>
    </head>
    <%@include file ="Header.jsp"%>
    <body>
        <div class="Arrow">
            <div>
                <a href="Alterar_Produto.jsp">
                    <i class="bi bi-arrow-left-circle"></i>
                    <svg xmlns="http://www.w3.org/2000/svg" width="220" height="35" fill="currentColor"
                         class="bi bi-arrow-left-circle" viewBox="0 0 16 16">
                    <path fill-rule="evenodd"
                          d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-4.5-.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z" />
                    </svg>
                </a>
            </div>
            <div>
                <a href="Produto.jsp">
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
        <main>
            <div class="container">
                <h1>Inativar e Ativar Produto:</h1>
                <br>
                <form action="ProdutoEditar" method="POST" id="register-form">
                    <input type="hidden" value="${produto.codigo}" id="codigo" name="codigo">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="nome-do-produto">Nome do Produto:</label>
                            <input type="text" class="form-control" id="Nome do produto"
                                   placeholder="Insira o nome do produto" value="" name="Nome do produto" data-min-length="3"
                                   data-max-length="30">
                        </div>
                        <div class="form-group col-md-3">
                            <label for="marca">Marca:</label>
                            <input type="text" class="form-control" id="Marca" placeholder="Insira a marca" value=""
                                   name="Marca do produto" data-min-length="3" data-max-length="30">
                        </div>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputStatus">Status</label>
                        <select id="inputEstado" class="form-control">
                            <option selected>Escolher...</option>
                            <option>Ativar</option>
                            <option>Inativar</option>
                        </select>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-1">
                            <label for="inputTamanho">Tamanho:</label>
                            <select class="form-control" id="exampleFormControlSelect1">
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
                            <select class="form-control" id="exampleFormControlSelect1">
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
                            <label for="inputPreco">Pre??o:</label>
                            <input type="number" class="form-control" id="preco" value="${produto.preco}" name="preco"
                                   data-min-length="1" data-max-length="7" placeholder="$0.00">
                        </div>
                        <div class="form-group col-md-3">
                            <label for="Quantidade-Estoque">Quantidade de Produto:</label>
                            <input type="text" class="form-control" id="Qdt-estoque" value="" name="Qdt Estoque"
                                   data-min-length="1" data-max-length="10" placeholder="0">
                        </div>
                    </div>
                    <div class="form-group row ">
                        <label for="avaliacao" class="col-1 col-form-label">Avalia????o:</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="avaliacao" value="" name="avaliacao"
                                   data-min-length="3" data-max-length="30">
                        </div>
                    </div>
                    <div class="form-row">
                        <label for="nome-por-extenso">Descri????o do Produto:</label>
                        <textarea class="form-control" placeholder="Descreva o produto" id="exampleFormControlTextarea1"
                                  rows="3"></textarea>
                    </div>
                    <br>
                    <div>

                        <br>

                        <button type="submit" id="btn-submit" class="btn btn-primary col-2">Inativar</button>
                        <a href="Produto.jsp"><button type="button" class="btn btn-danger col-2">Cancelar</button></a>
                    </div>
                </form>
            </div>
        </main>
        <p class="error-validation template">
            <script src="Assets/Js/Script.js"></script>
    </body>
</html>
