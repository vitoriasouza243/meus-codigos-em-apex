List<String> nomeProdutos = new List<String>();
nomeProdutos.add('Caneta');
nomeProdutos.add('Resma de Papel');
nomeProdutos.add('Tesoura');

List<Integer> quantEstoqs = new List<Integer>();
quantEstoqs.add(2500);
quantEstoqs.add(200);
quantEstoqs.add(1000);

List<Integer> quantMaxs = new List<Integer>();
quantMaxs.add(3000);
quantMaxs.add(500);
quantMaxs.add(2000);

List<Integer> quantMins = new List<Integer>();
quantMins.add(-43);
quantMins.add(50);
quantMins.add(360);

for(Integer i = 0; i < nomeProdutos.size(); i++){
    String nomeProduto = nomeProdutos.get(i);
    Integer quantEstoq = quantEstoqs.get(i);
    Integer quantMax = quantMaxs.get(i);
    Integer quantMin = quantMins.get(i);
    System.debug('Produto: ' + nomeProduto);
    System.debug('Quantidade em Estoque: ' + quantEstoq);
    System.debug('Quantidade Máxima Permitida: ' + quantMax);
    System.debug('Quantidade Mínima Permitida: ' + quantMin);

        if (quantEstoq <= -1){
            System.debug('O número ' + quantEstoq + ' é negativo, mas iremos converte-lo para você.');
            quantEstoq = quantEstoq*-1;
            System.debug('Agora o valor é: ' + quantEstoq);
        }

        if (quantMax <= -1){
            System.debug('O número ' + quantMax + ' é negativo, mas iremos converte-lo para você.');
            quantMax = quantMax*-1;
            System.debug('Agora o valor é: ' + quantMax);
        }
        if (quantMin <= -1){
            System.debug('O número '+ quantMin + ' é negativo, mas iremos converte-lo para você.');
            quantMin = quantMin*-1;
            System.debug('Agora o valor é: ' + quantMin);
        }

    Decimal quantMed = (quantMax+quantMin)/2;
    System.debug('A média é: '+ quantMed);

        if(quantEstoq >= quantMed){
            System.debug('Não efetuar a compra.');
        }else{
            System.debug('Efetuar compra.'); 
        }
}

