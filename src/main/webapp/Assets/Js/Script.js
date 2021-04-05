class Validator {

    constructor() {
        this.validations = [
            'data-min-length',
            'data-max-length',
            'data-only-letters',
            'data-email-validate',
            'data-required',
            'data-equal',
            'data-password-validate',
        ]
    }

    // inicia a validação de todos os campos
    validate(form) {

        // limpa todas as validações antigas
        let currentValidations = document.querySelectorAll('form .error-validation');

        if (currentValidations.length) {
            this.cleanValidations(currentValidations);
        }

        // pegar todos inputs
        let inputs = form.getElementsByTagName('input');
        // transformar HTMLCollection em arr
        let inputsArray = [...inputs];
        // loop nos inputs e validação mediante aos atributos encontrados
        inputsArray.forEach(function (input, obj) {

            // fazer validação de acordo com o atributo do input
            for (let i = 0; this.validations.length > i; i++) {
                if (input.getAttribute(this.validations[i]) != null) {

                    // limpa string para saber o método
                    let method = this.validations[i].replace("data-", "").replace("-", "");

                    // valor do input
                    let value = input.getAttribute(this.validations[i])

                    // invoca o método
                    this[method](input, value);

                }
            }

        }, this);

    }

    // método para validar se tem um mínimo de caracteres
    minlength(input, minValue) {


        let inputLength = input.value.length;

        let errorMessage = `O campo precisa ter pelo menos ${minValue} caracteres`;

        if (inputLength < minValue) {
            this.printMessage(input, errorMessage);
        }

    }

    // método para validar se passou do máximo de caracteres
    maxlength(input, maxValue) {

        let inputLength = input.value.length;

        let errorMessage = `O campo precisa ter menos que ${maxValue} caracteres`;

        if (inputLength > maxValue) {
            this.printMessage(input, errorMessage);
        }

    }

    // método para validar strings que só contem letras
    onlyletters(input) {

        let re = /^[A-Za-z]+$/;
        ;

        let inputValue = input.value;

        let errorMessage = `Este campo não aceita números nem caracteres especiais`;

        if (!re.test(inputValue)) {
            this.printMessage(input, errorMessage);
        }

    }

    // método para validar e-mail
    emailvalidate(input) {
        let re = /\S+@\S+\.\S+/;

        let email = input.value;

        let errorMessage = `Insira um e-mail no padrão matheus@email.com`;

        if (!re.test(email)) {
            this.printMessage(input, errorMessage);
        }

    }

    // verificar se um campo está igual o outro
    equal(input, inputName) {

        let inputToCompare = document.getElementsByName(inputName)[0];

        let errorMessage = `Este campo precisa estar igual ao ${inputName}`;

        if (input.value != inputToCompare.value) {
            this.printMessage(input, errorMessage);
        }
    }

    // método para exibir inputs que são necessários
    required(input) {

        let inputValue = input.value;

        if (inputValue === '') {
            let errorMessage = `Este campo é obrigatório`;

            this.printMessage(input, errorMessage);
        }

    }

    // validando o campo de senha
    passwordvalidate(input) {

        // explodir string em array
        let charArr = input.value.split("");

        let uppercases = 0;
        let numbers = 0;

        for (let i = 0; charArr.length > i; i++) {
            if (charArr[i] === charArr[i].toUpperCase() && isNaN(parseInt(charArr[i]))) {
                uppercases++;
            } else if (!isNaN(parseInt(charArr[i]))) {
                numbers++;
            }
        }

        if (uppercases === 0 || numbers === 0) {
            let errorMessage = `A senha precisa um caractere maiúsculo e um número`;

            this.printMessage(input, errorMessage);
        }

    }

    // método para imprimir mensagens de erro
    printMessage(input, msg) {

        // checa os erros presentes no input
        let errorsQty = input.parentNode.querySelector('.error-validation');

        // imprimir erro só se não tiver erros
        if (errorsQty === null) {
            let template = document.querySelector('.error-validation').cloneNode(true);

            template.textContent = msg;

            let inputParent = input.parentNode;

            template.classList.remove('template');

            inputParent.appendChild(template);
        }

    }

    // remove todas as validações para fazer a checagem novamente
    cleanValidations(validations) {
        validations.forEach(el => el.remove());
    }

}

let form = document.getElementById('register-form');
let submit = document.getElementById('btn-submit');

let validator = new Validator();

// evento de envio do form, que valida os inputs
submit.addEventListener('click', function (e) {
    e.preventDefault();

    validator.validate(form);
});

function limpa_formulario_cep() {
    //Limpa valores do formulário de cep.
    document.getElementById('rua').value = ("");
    document.getElementById('bairro').value = ("");
    document.getElementById('cidade').value = ("");
    document.getElementById('estado').value = ("");

}

function meu_callback(conteudo) {
    if (!("erro" in conteudo)) {
        //Atualiza os campos com os valores.
        document.getElementById('rua').value = (conteudo.logradouro);
        document.getElementById('bairro').value = (conteudo.bairro);
        document.getElementById('cidade').value = (conteudo.localidade);
        document.getElementById('estado').value = (conteudo.uf);
    } //end if.
    else {
        //CEP não Encontrado.
        limpa_formulario_cep();
        alert("CEP não encontrado.");
        document.getElementById('cep').value = ("");
    }
}

function pesquisacep(valor) {

    //Nova variável "cep" somente com dígitos.
    var cep = valor.replace(/\D/g, '');

    //Verifica se campo cep possui valor informado.
    if (cep != "") {

        //Expressão regular para validar o CEP.
        var validacep = /^[0-9]{8}$/;

        //Valida o formato do CEP.
        if (validacep.test(cep)) {

            //Preenche os campos com "..." enquanto consulta webservice.
            document.getElementById('rua').value = "...";
            document.getElementById('bairro').value = "...";
            document.getElementById('cidade').value = "...";
            document.getElementById('estado').value = "...";

            //Cria um elemento javascript.
            var script = document.createElement('script');

            //Sincroniza com o callback.
            script.src = 'https://viacep.com.br/ws/' + cep + '/json/?callback=meu_callback';

            //Insere script no documento e carrega o conteúdo.
            document.body.appendChild(script);

        } //end if.
        else {
            //cep é inválido.
            limpa_formulario_cep();
            alert("Formato de CEP inválido.");
        }
    } //end if.
    else {
        //cep sem valor, limpa formulário.
        limpa_formulario_cep();
    }
}

function formatar(mascara, documento) {
    var i = documento.value.length;
    var saida = mascara.substring(0, 1);
    var texto = mascara.substring(i);

    if (texto.substring(0, 1) != saida) {
        documento.value += texto.substring(0, 1);
    }

}

function idade() {
    var data = document.getElementById("dtnasc").value;
    var dia = data.substr(0, 2);
    var mes = data.substr(3, 2);
    var ano = data.substr(6, 4);
    var d = new Date();
    var ano_atual = d.getFullYear(),
            mes_atual = d.getMonth() + 1,
            dia_atual = d.getDate();

    ano = +ano,
            mes = +mes,
            dia = +dia;

    var idade = ano_atual - ano;

    if (mes_atual < mes || mes_atual == mes_aniversario && dia_atual < dia) {
        idade--;
    }
    return idade;
}


function exibe(i) {



    document.getElementById(i).readOnly = true;




}

function desabilita(i) {

    document.getElementById(i).disabled = true;
}
function habilita(i)
{
    document.getElementById(i).disabled = false;
}


function showhide()
{
    var div = document.getElementById("newpost");

    if (idade() >= 18) {

        div.style.display = "none";
    } else if (idade() < 18) {
        div.style.display = "inline";
    }

}


  