function estado_jogo(Nome_Jogador, tabuleiro, n_jogadas,fig,tag_name)
    interface_estado_jogo(Nome_Jogador, tabuleiro, n_jogadas,fig,tag_name);
    total_cacas = 4;
    n_cacas = nnz(round(tabuleiro(:)) == -1);

    if n_cacas == total_cacas
        fprintf(" Caças abatidos. O que fazemos aqui ecoa pela velocidade da luz. 🔥\n");
    elseif n_cacas >= 2
        fprintf("Os caças estão a cair rapidamente!\n");
    elseif n_cacas >= 1
        fprintf("Já há danos nos caças. Continua o ataque!\n");
    end

    nfragatas = nnz(round(tabuleiro(:)) == -2);


    if nfragatas==6
        fprintf("Fragatas abatidas. Quem mandou meter-se com a galáxia errada? 👽\n");
    elseif nfragatas>=3
        fprintf("Grandes danos nas fragatas. Bons tiros Ratchet.\n");
    end

    ncontratorpedeiros = nnz(round(tabuleiro(:)) == -3);

    if ncontratorpedeiros==6
        fprintf("Contratorpedeiros abatidos. Adoro a luz de blasters de céu estrelado ✨\n");
    elseif ncontratorpedeiros>=3
        fprintf("Grandes danos nos Contratorpedeiros. Até o infinito. \n");
    end


    %Cruzador
    n_cruzador = nnz(round(tabuleiro(:)) == -4);
    if n_cruzador==4
        fprintf("Cruzador destruído. Outra aterragem feliz 😈!!! \n");
    elseif n_cruzador>=2
        fprintf("Grandes danos no Cruzador. É uma armadilha (para eles).\n");
    end

    %Nave-mãe
    n_navemae = nnz(round(tabuleiro(:)) == -5);

    if n_navemae==27
        fprintf("Nave-mãe destruída. A Força é forte contigo. ⚔️🎖️ \n");
    elseif n_navemae>=14
        fprintf("Nave-mãe parcialmente atingida. Força nisso R2 \n");
    elseif n_navemae>=4
        fprintf("Danos mínimos na Nave-mãe. Tenho um bom pressentimento em relação a isto\n");
    end

    fprintf("================================================\n");
end
