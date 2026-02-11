function tabuleiro=posicionar_frota(tabuleiro)
  direcoes = ["x", "y", "z"];
  valor=[5.1,4.1,3.1,2.1,1.1];
    %--------------------------------------------------------------------------%
    num_navemae = 0;
    while num_navemae < 1
      x_navemae=input("Diga a coordenada x da superficie da nave-mãe(0-7): ");
      y_navemae=input("Diga a coordenada y do superficie da nave-mãe(0-7): ");
      z_navemae=input("Diga a coordenada z do superficie da nave-mãe(0-7): ");
      
      [tabuleiro,erro]=funcao_estruturas("nave-mãe","x",x_navemae,y_navemae,z_navemae,tabuleiro,espaco,valor(1));

        if erro == 0
             num_navemae = num_navemae + 1; % só avança se o caça foi bem colocado
        end
    end
    %-------------------------------------------------------------------------%

    num_cruzador = 0;
    while num_cruzador < 1
      direcao_cruzador=lower(input("Indique a direcao do seu cruzador(x/y/z): ","s"));
      x_cruzador=input("Diga a coordenada x(1-9): ");
      y_cruzador=input("Diga a coordenada y(1-9): ");
      z_cruzador=input("Diga a coordenada z(1-9): ");

      [tabuleiro,erro]=funcao_estruturas("cruzador",direcao_cruzador,x_cruzador,y_cruzador,z_cruzador,tabuleiro,espaco,valor(2));

        if erro == 0
             num_cruzador = num_cruzador + 1; % só avança se o caça foi bem colocado
        end
    end
   %------------------------------------------------------------------------%
    num_contratorpedeiros = 0;
    while num_contratorpedeiros < 2
      direcao_contratorpedeiro=lower(input("Indique a direcao do seu contratorpedeiro(x/y/z): ","s"));
      x_contrat=input("Diga a coordenada x do seu contratorpedeiro(1-9): ");
      y_contrat=input("Diga a coordenada y do seu contratorpedeiro(1-9): ");
      z_contrat=input("Diga a coordenada z do seu contratorpedeiro(1-9): ");

      [tabuleiro,erro]=funcao_estruturas("contratorpedeiros",direcao_contratorpedeiro,x_contrat,y_contrat,z_contrat,tabuleiro,espaco,valor(3));

        if erro == 0
            num_contratorpedeiros = num_contratorpedeiros + 1; % só avança se o caça foi bem colocado
            valor(3)=3.1+0.1*num_contratorpedeiros;

        end
    end
    %-----------------------------------------------------------------------%
    num_fragatas = 0;
    while num_fragatas < 3
      direcao_fragata=lower(input("Indique a direcao da sua fragata(x/y/z): ","s"));
      x_fragata=input("Diga a coordenada x da sua fragata(1-9): ");
      y_fragata=input("Diga a coordenada y da sua fragata(1-9): ");
      z_fragata=input("Diga a coordenada z da sua fragata(1-9): ");

        [tabuleiro, erro] = funcao_estruturas("fragata", direcao_fragata, x_fragata, y_fragata, z_fragata,  tabuleiro,espaco,valor(4));

        if erro == 0
            num_fragatas = num_fragatas + 1; % só avança se o caça foi bem colocado
            valor(4)=2.1+0.1*num_fragatas;
        end
    end
    %--------------------------------------------------------------------------------------%
    num_cacas = 0;
    while num_cacas < 4
        direcao_cacas=direcoes(randi(3));
        x_caca=input("Diga a coordenada x do seu caça(1-9): ");
        y_caca=input("Diga a coordenada y do seu caça(1-9): ");
        z_caca=input("Diga a coordenada z do seu caça(1-9): ");

        [tabuleiro, erro] = funcao_estruturas("caça",direcao_cacas, x_caca, y_caca, z_caca, tabuleiro,espaco,valor(5));

        if erro == 0
            num_cacas = num_cacas + 1; % só avança se o caça foi bem colocado
            valor(5)=1.1+0.1*num_cacas;
        end
    end

end