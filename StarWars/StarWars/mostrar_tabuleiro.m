function mostrar_tabuleiro(tabuleiro1,tabuleiro2,Nome_Guerra1,Nome_Guerra2)
    figure;
    subplot(1, 2, 1);
    hold on;
    axis equal;
    xlabel('X'); ylabel('Y'); zlabel('Z');
    title(sprintf('Tabuleiro de %s (visto por %s)', Nome_Guerra1,Nome_Guerra2));
    view(3); grid on;
    axis([0 10 0 10 0 10]);
    
    % Mostrar apenas cubos com valor -1 (atingidos)
    for x = 0:9
        for y = 0:9
            for z = 0:9
                if tabuleiro1(x+1,y+1,z+1)<0 && tabuleiro1(x+1,y+1,z+1)~=-100
                    funcao_quadrado_metal(x,y,z,tabuleiro1);
                elseif tabuleiro1(x+1,y+1,z+1)==-100
                    funcao_quadrado_ar(x, y, z, tabuleiro1)
                end
            end
        end
    end
    
    subplot(1, 2, 2);
    hold on;
    axis equal;
    xlabel('X'); ylabel('Y'); zlabel('Z');
    title(sprintf('Tabuleiro de %s (visto por %s)', Nome_Guerra2,Nome_Guerra1));
    view(3); grid on;
    axis([0 10 0 10 0 10]);

  % Mostrar apenas cubos com valor -1 (atingidos)
    for x = 0:9
        for y = 0:9
            for z = 0:9
                if tabuleiro2(x+1,y+1,z+1)<0 && tabuleiro2(x+1,y+1,z+1)~=-100
                    funcao_quadrado_metal(x,y,z,tabuleiro2);
                elseif tabuleiro2(x+1,y+1,z+1)==-100
                    funcao_quadrado_ar(x, y, z, tabuleiro2)
                end
            end
        end
    end
end


