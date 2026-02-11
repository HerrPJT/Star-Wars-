function [tabuleiro,blasted]=tirocomputador(tabuleiro)
  blasted=false;
  x=randi(9); y=randi(9);
  n_acertos=0;
  for z=0:9
    if tabuleiro(x+1,y+1,z+1)>0
      tabuleiro(x+1,y+1,z+1)=-tabuleiro(x+1,y+1,z+1);
      blasted=true;
      n_acertos=n_acertos+1;
    elseif tabuleiro(x+1, y+1, z+1) == 0
      tabuleiro(x+1,y+1,z+1)=-100;
    end
  end
  fprintf("O computador acertou %d casas",n_acertos);
end