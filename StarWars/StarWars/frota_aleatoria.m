function tabuleiro=frota_aleatoria(tabuleiro,espaco)
    direcoes = ["x", "y", "z"];
    valor=[5.1,4.1,3.1,2.1,1.1];
%-----------------------------------------------------------------------%
  num_navemae = 0;
  while num_navemae < 1
        x_navemae=randi(10);
        y_navemae=randi(10);
        z_navemae=randi(10);
        direcao=direcoes(randi(3));
        [tabuleiro,erro]=funcao_estruturas("nave-mãe",direcao,x_navemae,y_navemae,z_navemae,tabuleiro,espaco,valor(1));

      if erro == 0
           num_navemae = num_navemae + 1; % só avança se o caça foi bem colocado
      end
  end
  %----------------------------------------------------------------------------%
  num_cruzador = 0;
  while num_cruzador < 1
        %direcao_cruzador=direcoes(randi(3));
        x_cruzador=randi(10);
        y_cruzador=randi(10);
        z_cruzador=randi(10);
        direcao=direcoes(randi(3));
        [tabuleiro,erro]=funcao_estruturas("cruzador",direcao,x_cruzador,y_cruzador,z_cruzador,tabuleiro,espaco,valor(2));

      if erro == 0
           num_cruzador = num_cruzador + 1; % só avança se o caça foi bem colocado

      end
  end


%------------------------------------------------------------------------%

  num_contratorpedeiros = 0;
  while num_contratorpedeiros < 2
      x_contrat=randi(10);
      y_contrat=randi(10);
      z_contrat=randi(10);
      direcao=direcoes(randi(3));
        [tabuleiro,erro]=funcao_estruturas("contratorpedeiros",direcao,x_contrat,y_contrat,z_contrat,tabuleiro,espaco,valor(3));

      if erro == 0
          num_contratorpedeiros = num_contratorpedeiros + 1; % só avança se o caça foi bem colocado
          valor(3)=3.1+0.1*num_contratorpedeiros;
      end
  end

  %--------------------------------------------------------------------------%
  num_fragatas = 0;
  while num_fragatas < 3
      direcao=direcoes(randi(3));
      x_fragata = randi(10);
      y_fragata= randi(10);
      z_fragata = randi(10);
      [tabuleiro, erro] = funcao_estruturas("fragata", direcao, x_fragata, y_fragata, z_fragata, tabuleiro,espaco,valor(4));

      if erro == 0
          num_fragatas = num_fragatas + 1; % só avança se o caça foi bem colocado
          valor(4)=2.1+0.1*num_fragatas;
      end
  end
  %---------------------------------------------------------------------------%
  num_cacas = 0;
  while num_cacas < 4
      direcao=direcoes(randi(3));
      x_caca = randi(10);
      y_caca = randi(10);
      z_caca = randi(10);

      [tabuleiro, erro] = funcao_estruturas("caça",direcao, x_caca, y_caca, z_caca, tabuleiro,espaco,valor(5));

      if erro == 0
          num_cacas = num_cacas + 1; % só avança se o caça foi bem colocado
          valor(5)=1.1+0.1*num_cacas;
      end
  end
end

