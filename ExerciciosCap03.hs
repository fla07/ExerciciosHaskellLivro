--    3.1) Crie o tipo Pergunta com os values constructors Sim
--    ou Nao . Faça as funções seguintes, determinando seus tipos
--    explicitamente.
--    pergNum : recebe via parâmetro uma Pergunta .
--    Retorna 0 para Nao e 1 para Sim .
--    listPergs : recebe via parâmetro uma lista de
--    Perguntas , e retorna 0 s e 1 s correspondentes aos
--    constructores contidos na lista.
--    and' : recebe duas Perguntas como parâmetro e
--    retorna a tabela verdade do and lógico, usando
--    Sim como verdadeiro e Nao como falso.
--    or' : idem ao anterior, porém deve ser usado o ou
--    lógico.
--    not' : idem aos anteriores, porém usando o not
--    lógico.

--    3.2) Faça o tipo Temperatura que pode ter valores Celsius ,
--    Farenheit ou Kelvin . Implemente as funções:
--    converterCelsius : recebe um valor double e uma
--    temperatura, e faz a conversão para Celsius.
--    converterKelvin : recebe um valor double e uma
--    temperatura, e faz a conversão para Kelvin.
--    converterFarenheit : recebe um valor double e
--    uma temperatura, e faz a conversão para Farenheit.

--    3.3) Implemente uma função que simule o vencedor de uma
--    partida de pedra, papel e tesoura usando tipos criados. Casos de
--    empate devem ser considerados em seu tipo.

--    3.4) Faça uma função que retorne uma string, com todas as
--    vogais maiúsculas e minúsculas eliminadas de uma string passada
--    por parâmetro usando list compreenshion.

--    3.5) Sabe-se que as unidades imperiais de comprimento podem
--    ser Inch , Yard ou Foot (há outras ignoradas aqui). Sabe-se
--    que 1in=0.0254m , 1yd=0.9144m , 1ft=0.3048 . Faça a função
--    converterMetros que recebe a unidade imperial e o valor
--    correspondente nesta unidade. Esta função deve retornar o valor
--    em metros.
--    Implemente também a função converterImperial , que
--    recebe um valor em metros e a unidade de conversão. Esta função
--    deve retornar o valor convertido para a unidade desejada.
  
--    3.6) Faça um novo tipo chamado Mes , que possui como
--    valores todos os meses do ano. Implemente:
--    A função checaFim , que retorna o número de dias
--    que cada mês possui (considere fevereiro tendo 28 dias).
--    A função prox , que recebe um mês atual e retorna o
--    próximo mês.
--    A função estacao , que retorna a estação do ano de
--    acordo com o mês e com o hemisfério.
--    Use apenas tipos criados pela palavra data aqui.
  
--    3.7) Faça uma função que receba uma String e retorne
--    True se esta for um palíndromo; caso contrário, False .

--    3.8) Faça uma função que elimine todos os números pares,
--    todos os ímpares múltiplos de 7 e negativos de uma lista de inteiros
--    passada via parâmetro. Você deve retornar esta lista em ordem
--    reversa em comparação a do parâmetro.

--    3.9) Faça uma função que recebe três Strings x , y e z como
--    parâmetro. A função retorna uma tupla com três coordenadas
--    contendo a ordem reversa em cada. A primeira coordenada deve
--    conter string reversa do primeiro parâmetro, e assim por diante.

--    3.10) Faça uma função chamada revNum , que receba uma
--    String s e um Int n . Esta deverá retornar as n primeiras letras
--    em ordem reversa e o restante em sua ordem normal. Exemplo:
--    revNum 4 "FATEC" = "ETAFC"

--    3.11) Crie o tipo de dado Binario que pode ser Zero ou
--    Um . Faça outro tipo de dado chamado Funcao que pode ser
--    Soma2 , Maior , Menor ou Mult2 . Implemente a função
--    aplicar que recebe uma Funcao e dois Binarios . Seu retorno
--    consiste em executar a operação desejada. Exemplo:
--    aplicar Soma2 Um Um = Zero

--    3.12) Faça uma função chamada binList , usando list
--    compreeshion, que recebe uma lista de Binarios (ver exercício
--    anterior) e retorna outra lista com elemento somado Um e
--    convertido para Int . Exemplo:
--    binList [Um, Zero, Zero, Um, Zero] = [0,1,1,0,1]
    
--    3.13) Faça um novo tipo chamado Metros , que possui um
--    \textit{value constructor} de mesmo nome, cujos
--    parâmetros são: um Int que representa a dimensão, e um
--    Double que representa o valor da medida e outro chamado
--    MetragemInvalida . Implemente as funções:
--    areaQuadrado :: Metros -> Metros : calcula a
--    área de um quadrado.
--    areaRet :: Metros -> Metros -> Metros :
--    calcula a área de um retângulo.
--    areaCubo :: Metros -> Metros : calcula a área de um cubo.
--    Exemplo:
--    Prelude> areaQuadrado (Metros 1 2.0)
--    Metros 2 4.0
--    Use o pattern matching para ignorar as metragens erradas
--    (calcular a área de um quadrado com um lado de dimensão 4 não é
--    válido).

--    3.14) Faça o novo tipo Valido que possui dois value
--    constructors Sim e Nao . O value constructor Sim possui um
--    parâmetro (campo) String . Implemente uma função
--    isNomeValido que recebe um nome e retorna Nao caso a
--    String seja vazia; caso contrário, Sim .

--    3.15) Refaça o exercício 3 do capítulo anterior usando record
--    syntax e tipos com parâmetro (siga o exemplo da conversão de
--    medidas SI para imperial).

--    3.16) Faça o tipo Numero , que possui um value constructor
--    Ok com um campo double e outro value constructor Erro
--    com um campo String . Faça a função dividir que divida dois
--    números e, caso o segundo número seja 0, emita um erro (use o
--    pattern matching). Exemplo:
--    Prelude> dividir (Numero 6) (Numero 5)
--    Numero 1.2.

--    3.17) Faça o tipo Cripto que possua dois values constructors
--    Mensagem e Cifrado , ambos com um campo String e um
--    value constructor Erro . Faça as funções encriptar e
--    decriptar , seguindo cada exemplo a seguir.
--    Prelude> encriptar (Mensagem "FATEC")
--    Cifrado "GBUFD"
--    Prelude> decriptar (Cifrado "DBTB")
--    Mensagem "CASA"
--    Veja que a encriptação deve empurrar cada letra a frente e a
--    decriptação faz o inverso, empurrando uma letra para trás. Use as
--    funções succ e pred , e também list compreeshions. Não é
--    possível encriptar mensagens cifradas e decriptar mensagens.

--    3.18) Faça uma função encriptarTodos que encripta (ou dá
--    erro) todos os elementos de um vetor de Cripto .

--    3.19) Tendo como base o exercício de conversão de medidas,
--    crie uma função que faça conversão de câmbio. Você deve criar o
--    tipo Cambio contendo os value constructors Euro , Real e
--    Dollar . Crie também o tipo Moeda que possui os campos val
--    :: Double e cur :: Cambio . Use record syntax e as taxas de
--    conversão do dia no qual você fez o exercício.
--    3.20) Crie a função converterTodosReal que recebe uma
--    lista de moedas e retorna outra lista de moedas com todos os seus

--    elementos convertidos para Real . Use list compreenshion.
--    3.21) Crie a função maxMoeda que recebe uma lista de moedas
--    e retorna o valor máximo absoluto (sem conversão alguma) dentre
--    os campos val desta lista. Exemplo:
--    Prelude> maxMoeda [Moeda 3 Real, Moeda 7 Dollar, Moeda 1 Euro]
--    7
--    Use a função maximum .