function [Matriz]=funcao_quadrado_ar(x, y, z, matriz)
    % Função para desenhar um cubo 3D exatamente na posição M(x,y,z)
    % O cubo ocupa o espaço de 1x1x1 com centro correspondente à célula da matriz

    % Corrigir os índices: posição real do vértice inferior do cubo
    x0 = x;
    y0 = y;
    z0 = z;

    % Definir os vértices do cubo de 1x1x1
    vertices = [
        x0, y0, z0;
        x0+1, y0, z0;
        x0+1, y0+1, z0;
        x0, y0+1, z0;
        x0, y0, z0+1;
        x0+1, y0, z0+1;
        x0+1, y0+1, z0+1;
        x0, y0+1, z0+1;
    ];
    % Define as faces do cubo (índices dos vértices)
    faces = [
        1 2 4 3; % base
        5 6 8 7; % topo
        1 2 6 5; % frente
        2 4 8 6; % lado
        4 3 7 8; % trás
        3 1 5 7  % lado
    ];

% Desenha o cubo
patch('Vertices', vertices, 'Faces', faces, 'FaceColor', [0 0 1], 'EdgeColor', 'k','FaceAlpha', 0.3);

    hold on;
    grid on;
    % Ajustar visualização
    axis equal;
    axis([0 10 0 10 0 10]);
    view(3);
    xlabel('x');
    ylabel('y');
    zlabel('z');
    
    Matriz = matriz;
end