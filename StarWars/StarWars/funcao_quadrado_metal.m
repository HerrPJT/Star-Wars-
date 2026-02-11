function [Matriz] = funcao_quadrado_metal(x, y, z, matriz)
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
    
    % Definir as faces do cubo
    faces = [
        1 2 3 4;
        5 6 7 8;
        1 2 6 5;
        2 3 7 6;
        3 4 8 7;
        4 1 5 8;
    ];
    
    % Desenhar o cubo
    patch('Vertices', vertices, 'Faces', faces, ...
          'FaceColor', "red", 'EdgeColor', 'k', 'FaceAlpha', 1);
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