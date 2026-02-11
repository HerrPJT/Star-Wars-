function [tabuleiro,blasted]=tiro(tabuleiro,Nome_Guerra)
  while true
    fprintf("%s",Nome_Guerra);
    direcao_eixo=upper(input(" escolha um eixo(X/Y/Z): ","s"));
    if direcao_eixo=='X' || direcao_eixo=='Y' || direcao_eixo=='Z'
      break;
    else 
      continue
    end
  end
  close all;
  figure;
  mostrar_perfil_tabuleiro(tabuleiro, direcao_eixo);
  while true 
    coordenada1=input("Diga a primeira coordenada: ");
    if coordenada1>=0 && coordenada1<11 
      break;
    else
        continue;
    end
  end

   while true 
       coordenada2=input("Diga a segunda coordenada: ");
       if coordenada2>=0 && coordenada2<11 
         break;
       else
         continue;
       end
   end

  close;
  blasted=false;
  n_acertos=0;
  switch direcao_eixo
    case 'X'
      y=coordenada1; z=coordenada2;
      for x=0:9
        if tabuleiro(x+1, y+1, z+1) > 0
          tabuleiro(x+1,y+1,z+1)=-tabuleiro(x+1,y+1,z+1);
          blasted=true;
          n_acertos=n_acertos+1;
        elseif tabuleiro(x+1, y+1, z+1) == 0
          tabuleiro(x+1,y+1,z+1)=-100;
        end
      end
      fprintf("Acertou %d casas\n", n_acertos);
    case 'Y'
      x=coordenada1; z=coordenada2;
      for y=0:9
        if tabuleiro(x+1, y+1, z+1) > 0
          tabuleiro(x+1,y+1,z+1)=-tabuleiro(x+1,y+1,z+1);
          blasted=true;
          n_acertos=n_acertos+1;
        elseif tabuleiro(x+1, y+1, z+1) == 0
          tabuleiro(x+1,y+1,z+1)=-100;
        end
      end
      fprintf("Acertou %d casas\n", n_acertos);
    case 'Z'
      x=coordenada1; y=coordenada2;
      for z=0:9
        if tabuleiro(x+1,y+1,z+1)>0
          tabuleiro(x+1,y+1,z+1)=-tabuleiro(x+1,y+1,z+1);
          blasted=true;
          n_acertos=n_acertos+1;
        elseif tabuleiro(x+1, y+1, z+1) == 0
          tabuleiro(x+1,y+1,z+1)=-100;
        end
      end
      fprintf("Acertou %d casas\n", n_acertos);
    otherwise
      fprintf("Impossível");
  end

end