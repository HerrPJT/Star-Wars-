function [modo_jogo, opcao_espacos]=menuInicial()
  fprintf("\nStar Wars - Odisseia no Espaço\n");

  while true
    fprintf("Modos de Jogo: \n");
    fprintf("1. Jogar contra outro jogador\n");
    fprintf("2. Jogar contra o computador\n");
    modo_jogo=input("Escolha um modo: ");
    if modo_jogo==1 || modo_jogo==2
      break;
    else
      continue;
    end
  end

  while true
    opcao_espacos=input("O espaço é obrigatório entre naves? (1-Sim/2-Não): ");
    if opcao_espacos==1 || opcao_espacos==2
      break;
    else
      continue;
    end
  end
end

  

  
  