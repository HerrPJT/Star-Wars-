function juntar_interfaces(fig1, fig2, fig3)
    % Procura a área de texto na fig3
    areaTodos = findobj(fig3, 'Tag', 'tag_fig3');
    if isempty(areaTodos) || ~isvalid(areaTodos)
        error('A área de texto (Tag = areaTextoFinal) não existe na fig3.');
    end

    mensagens = {};

    % Jogador 1
    area1 = findobj(fig1, 'Tag','tag_fig1');
    nome1 = fig1.Name;
    if ~isempty(area1) && isprop(area1, 'Value')
        for i = 1:length(area1.Value)
            mensagens{end+1} = [area1.Value{i}];
        end
    end

    % Jogador 2
    area2 = findobj(fig2, 'Tag','tag_fig2');
    nome2 = fig2.Name;
    if ~isempty(area2) && isprop(area2, 'Value')
        for i = 1:length(area2.Value)
            mensagens{end+1} = [area2.Value{i}];
        end
    end

    % Atualiza a área de texto da fig3
    areaTodos.Value = mensagens;
end
