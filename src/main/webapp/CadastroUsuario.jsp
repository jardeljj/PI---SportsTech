<%--
    Document   : CadastroUsuario
    Created on : 3 de abr de 2021, 13:08:19
    Author     : Jardel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css" >
        <link rel="stylesheet" href="Assets/css/Style.css">
        <title> Cadastro de Usuário </title>
    </head>
    <%@include file="Header.jsp"%>
    <body>
        <form class="form-horizontal">
            <fieldset>
                <div class="panel panel-primary">
                    <div class="panel-body">
                        <div class="form-group">

                            <div class="col-md-11 control-label">
                                <p class="help-block"><h11>*</h11> Campo Obrigatório </p>

                            </div>

                            <div>
                                <label class="col-md-2 control-label" for="radios">Funcionário <h11>*</h11></label>
                                <div class="col-md-4"> 
                                    <label required="" class="radio-inline" for="radios-0" >
                                        <input name="funcionario" id="funcionario" value="administrador" type="radio" required>
                                        Administrador
                                    </label> 
                                    <label class="radio-inline" for="radios-1">
                                        <input name="funcionario" id="funcionario" value="estoquista" type="radio">
                                        Estoquista
                                    </label>
                                </div>
                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-2 control-label" for="Nome">Nome <h11>*</h11></label>  
                            <div class="col-md-8">
                                <input id="Nome" name="Nome" placeholder="" class="form-control input-md" required="" type="text">
                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-2 control-label" for="Nome">CPF <h11>*</h11></label>  
                            <div class="col-md-2">
                                <input id="cpf" name="cpf" placeholder="Apenas números" class="form-control input-md" required="" type="text" maxlength="11" pattern="[0-9]+$">
                            </div>

                            <label class="col-md-1 control-label" for="Nome">Nascimento<h11>*</h11></label>  
                            <div class="col-md-2">
                                <input id="dtnasc" name="dtnasc" placeholder="DD/MM/AAAA" class="form-control input-md" required="" type="text" maxlength="10" OnKeyPress="formatar('##/##/####', this)" onBlur="showhide()">
                            </div>

                            <!-- Multiple Radios (inline) -->

                            <label class="col-md-1 control-label" for="radios">Sexo <h11>*</h11></label>
                            <div class="col-md-4"> 
                                <label required="" class="radio-inline" for="radios-0" >
                                    <input name="sexo" id="sexo" value="feminino" type="radio" required>
                                    Feminino
                                </label> 
                                <label class="radio-inline" for="radios-1">
                                    <input name="sexo" id="sexo" value="masculino" type="radio">
                                    Masculino
                                </label>
                            </div>
                        </div>

                        <!-- Prepended text-->
                        <div class="form-group">
                            <label class="col-md-2 control-label" for="prependedtext">Telefone <h11>*   </h11></label>
                            <div class="col-md-3">
                                <div class="input-group">
                                    <span class="input-group-text"><i class="glyphicon glyphicon-earphone"></i></span>
                                    <input id="prependedtext" name="prependedtext" class="form-control" placeholder="XX XXXXX-XXXX" required="" type="text" maxlength="13" pattern="\[0-9]{2}\ [0-9]{4,6}-[0-9]{3,4}$"
                                           OnKeyPress="formatar('## #####-####', this)">
                                </div>
                            </div>

                            <label class="col-md-1 control-label" for="prependedtext">Telefone</label>
                            <div class="col-md-2">
                                <div class="input-group">
                                    <span class="input-group-text"><i class="glyphicon glyphicon-earphone"></i></span>
                                    <input id="prependedtext" name="prependedtext" class="form-control" placeholder="XX XXXXX-XXXX" type="text" maxlength="13"  pattern="\[0-9]{2}\ [0-9]{4,6}-[0-9]{3,4}$"
                                           OnKeyPress="formatar('## #####-####', this)">
                                </div>
                            </div>
                        </div> 

                        <!-- Prepended text-->
                        <div class="form-group">
                            <label class="col-md-2 control-label" for="prependedtext">Email <h11>*</h11></label>
                            <div class="col-md-5">
                                <div class="input-group">
                                    <span class="input-group-text"><i class="glyphicon glyphicon-envelope"></i></span>
                                    <input id="prependedtext" name="prependedtext" class="form-control" placeholder="email@email.com" required="" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" >
                                </div>
                            </div>
                        </div>


                        <!-- Search input-->
                        <div class="form-group">
                            <label class="col-md-2 control-label" for="CEP">CEP <h11>*</h11></label>
                            <div class="col-md-2">
                                <input id="cep" name="cep" placeholder="Apenas números" class="form-control input-md" required="" value="" type="search" maxlength="8" pattern="[0-9]+$">
                            </div>
                            <div class="col-md-2">
                                <button type="button" class="btn btn-primary" onclick="pesquisacep(cep.value)">Pesquisar</button>
                            </div>
                        </div>

                        <!-- Prepended text-->
                        <div class="form-group">
                            <label class="col-md-2 control-label" for="prependedtext">Endereço</label>
                            <div class="col-md-3">
                                <div class="input-group">
                                    <span class="input-group-text">Rua</span>
                                    <input id="rua" name="rua" class="form-control" placeholder="" required="" readonly="readonly" type="text">
                                </div>

                            </div>
                            <div class="col-md-2">
                                <div class="input-group">
                                    <span class="input-group-text">Nº <h11>*</h11></span>
                                    <input id="numero" name="numero" class="form-control" placeholder="" required=""  type="text">
                                </div>

                            </div>

                            <div class="col-md-3">
                                <div class="input-group">
                                    <span class="input-group-text">Bairro</span>
                                    <input id="bairro" name="bairro" class="form-control" placeholder="" required="" readonly="readonly" type="text">
                                </div>

                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label" for="prependedtext"></label>
                            <div class="col-md-4">
                                <div class="input-group">
                                    <span class="input-group-text">Cidade</span>
                                    <input id="cidade" name="cidade" class="form-control" placeholder="" required=""  readonly="readonly" type="text">
                                </div>

                            </div>

                            <div class="col-md-2">
                                <div class="input-group">
                                    <span class="input-group-text">Estado</span>
                                    <input id="estado" name="estado" class="form-control" placeholder="" required=""  readonly="readonly" type="text">
                                </div>

                            </div>
                        </div>
                        <!-- Button (Double) -->
                        <div class="form-group">
                            <label class="col-md-2 control-label" for="Cadastrar"></label>
                            <div class="col-md-8">
                                <button id="Cadastrar" name="Cadastrar" class="btn btn-success" type="Submit">Cadastrar</button>
                                <button id="Cancelar" name="Cancelar" class="btn btn-danger" type="Reset">Cancelar</button>
                            </div>
                        </div>

                    </div>
                </div>


            </fieldset>
        </form>
    </body>
    <script src="Assets/Js/Script.js"></script>
</html>
