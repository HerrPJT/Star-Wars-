function interface_estado_jogo(Nome_Jogador, tabuleiro, n_jogadas, fig,tag)
    % Atualiza o texto na textarea da figura existente

    % Encontra o uitextarea na figura pelo Tag
    areaTexto = findobj(fig, 'Tag', tag);


    texto = ""; % Inicializa string vazia

    texto = texto + sprintf("================ ESTADO DO JOGO ================\n");
    texto = texto + sprintf("🚀 Jogador atual: ") + Nome_Jogador + newline;
    texto = texto + "🎯 Jogadas realizadas: " + n_jogadas + newline;

    % Calcula casas atingidas (valores negativos, exceto -100)
    n_carcacas = nnz(tabuleiro(:) < 0 & tabuleiro(:) ~= -100);
    texto = texto + sprintf("💥 Casas atingidas: ") + n_carcacas;

    % Casas ainda por acertar (valores positivos)
    n_fuselagens = nnz(tabuleiro(:) > 0);
    texto = texto + sprintf("\n🛡️ Casas por acertar: ") + n_fuselagens;

    texto = texto + sprintf("\n========= Estado das Forças Inimigas =========\n");

    % Caças
    total_cacas = 4;
    n_cacas = nnz(round(tabuleiro(:)) == -1);
    texto = texto + sprintf("\n✈️ Caças destruídos: %d de %d\n", n_cacas, total_cacas);

    % Fragatas
    nfragata1 = nnz(tabuleiro(:) == -2.1);
    nfragata2 = nnz(tabuleiro(:) == -2.2);
    nfragata3 = nnz(tabuleiro(:) == -2.3);
    texto = texto + sprintf("\n🧭 Fragata 1: %d de 2 cubos atingidos, ", nfragata1);
    texto = texto + sprintf("Fragata 2: %d de 2 cubos atingidos, ", nfragata2);
    texto = texto + sprintf("Fragata 3: %d de 2 cubos atingidos\n", nfragata3);
    % Contratorpedeiros
    ncontratorpedeiro1 = nnz(tabuleiro(:) == -3.1);
    ncontratorpedeiro2 = nnz(tabuleiro(:) == -3.2);
    texto = texto + sprintf("\n💣 Contratorpedeiro 1: %d de 3 cubos atingidos, ", ncontratorpedeiro1);
    texto = texto + sprintf("Contratorpedeiro 2: %d de 3 cubos atingidos\n", ncontratorpedeiro2);

    % Cruzador
    total_cruzador = 4;
    n_cruzador = nnz(round(tabuleiro(:)) == -4);
    texto = texto + sprintf("\n⚓ Cubos atingidos no Cruzador: %d de %d\n", n_cruzador, total_cruzador);

    % Nave-mãe
    total_navemae = 27;
    n_navemae = nnz(round(tabuleiro(:)) == -5);
    texto = texto + sprintf("\n👾 Cubos atingidos na Nave-mãe: %d de %d\n", n_navemae, total_navemae);

    texto = texto + "================================================\n";

    % Passa o texto para o uitextarea como linhas separadas
    areaTexto.Value = splitlines(texto);
end