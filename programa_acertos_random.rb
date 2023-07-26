puts <<EOS
-------------------------------------------------------------------
BEM VINDO AO JOGO DE ADIVINHAÇÃO
VOCÊ TERÁ 5 TENTATIVAS PARA ADIVINHAR UM NÚMERO ALEATÓRIO DE 1 A 10
-----------------------------BOA SORTE-----------------------------
EOS
tentativas = 5
acertos = 0
for i in 1..5
    aleatorio = rand(1..10)    
    puts "Digite seu chute"    
    chute = gets.chomp.to_i
    if chute < 1 || chute > 10
        puts "Número digitado não pertencente entre 1 e 10!!! Reinicie o jogo!!!"   
        break 
    elsif chute == aleatorio
            puts "Você acertou!!!"
            acertos += 1
    else
            puts "Você errou!!!"        
    end
    tentativas -= 1
    puts "-------------------------------------------"
    puts "Você ainda tem #{tentativas} tentativas!!!"
end
puts "==============================================="
puts "Você acertou #{acertos} chutes!!!"
puts "==============================================="