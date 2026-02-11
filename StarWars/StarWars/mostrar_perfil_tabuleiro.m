function mostrar_perfil_tabuleiro(board, axisChoice)
    % board: matriz 10x10x10 representando o tabuleiro do oponente
    % axisChoice: 'X', 'Y' ou 'Z' - eixo ao longo do qual o míssil será disparado
    
% Criar matriz de visualização (10x10)
    visualizacao = zeros(10, 10);
    
    % Seleção da projeção com base no eixo
    switch upper(axisChoice)
        case 'Z'
            % Projeção X-Y (eixo Z selecionado)
            for x = 1:10
                for y = 1:10
                    slice = board(x, y, :); % Valores ao longo do eixo Z
                    if any(slice(:) == -100)
                        visualizacao(x, y) = 1; % Atingiu água
                    elseif any(slice(:) < 0)
                        visualizacao(x, y) = 2; % Atingiu nave
                    end
                end
            end
            title('Vista X-Y (Disparar ao longo do eixo Z)');
            xlabel('Eixo X');
            ylabel('Eixo Y');
            
        case 'Y'
            % Projeção X-Z (eixo Y selecionado)
            for x = 1:10
                for z = 1:10
                    slice = board(x, :, z); % Valores ao longo do eixo Y
                    if any(slice(:) == -100)
                        visualizacao(x, z) = 1; % Atingiu água
                    elseif any(slice(:) < 0)
                        visualizacao(x, z) = 2; % Atingiu nave
                    end
                end
            end
            title('Vista X-Z (Disparar ao longo do eixo Y)');
            xlabel('Eixo X');
            ylabel('Eixo Z');
            
        case 'X'
            % Projeção Y-Z (eixo X selecionado)
            for y = 1:10
                for z = 1:10
                    slice = board(:, y, z); % Valores ao longo do eixo X
                    if any(slice(:) == -100)
                        visualizacao(y, z) = 1; % Atingiu água
                    elseif any(slice(:) < 0)
                        visualizacao(y, z) = 2; % Atingiu nave
                    end
                end
            end
            title('Vista Y-Z (Disparar ao longo do eixo X)');
            xlabel('Eixo Y');
            ylabel('Eixo Z');
    end
    
    % Mostrar o tabuleiro de perfil
    imagesc(visualizacao);
    
    % Definir mapa de cores personalizado
    cmap = [1 1 1;    % Branco - não atingido (0)
            0 0 1;    % Azul - atingiu água (1)
            1 0 0];   % Vermelho - atingiu nave (2)
    colormap(cmap);
    clim([0 2]); % Fixar escala de cores
    
    % Criar legenda
    hold on;
    % Patch para "Não atingido" (branco)
    patch(NaN, NaN, 'w', 'EdgeColor', 'none', 'DisplayName', 'Não atingido');
    % Patch para "Atingiu água" (azul)
    patch(NaN, NaN, 'b', 'EdgeColor', 'none', 'DisplayName', 'Atingiu água');
    % Patch para "Não atingido" (branco)
    patch(NaN, NaN, 'r', 'EdgeColor', 'none', 'DisplayName', 'Atingido');
    % Criar legenda
    legend('show', 'Location', 'northeastoutside');
    hold off;
    
    % Configurações adicionais do gráfico
    axis square;
    grid on;
    set(gca, 'XTick', 1:10, 'YTick', 1:10);
end
  
  