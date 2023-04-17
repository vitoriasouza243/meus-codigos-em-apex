Decimal salarioAtual = 1527.27;
System.debug('Seu salário atual é: '+salarioAtual+' e terá um reajuste de 22%');
System.debug('Aguarde, estamos calculando por você...');
Decimal reajuste = (salarioAtual*22)/100;
Decimal atual = salarioAtual+reajuste;
String formatac = String.valueOf(atual.setScale(2)).replace('.', ',').replaceFirst('(\\d)(?=(\\d{3})+,)', '$1.');
/*Usando o valueOf tranformei o Decimal em String. Depois, chamando a variavel, seto ela para ter apenas 2 digitos decimais. Depois uso o replace
para que substitui o "." por uma vírgula. Depois uso o replaceFirst para inserir o "." para separar em milhar, para isso uso uma expressão regular 
e por fim uso a expressão $1 que insere um ponto antes do primeiro digito de cada grupo de três digitos encontrados.
*/
//Nota: em apex é utilizado duas barras para que a expressão \d não seja considerado um caractere de escape
System.debug('O seu salário foi reajustado para: '+formatac);

