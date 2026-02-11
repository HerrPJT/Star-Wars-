%% Esta função serve para verificar se as diferentes figuras não se intercetam
%% Entradas x y z -> coordenadas de cada cubo construido
%% Tipo-Tipo de figura(fragata,etc,...)
%% Direcao-Para onde esta v


function [ocupa]= verifica_tabuleiro(x,y,z,matriz,tipo,direcao,espaco)
    ocupa = 0;

    switch lower(tipo)
        %% Verificação Caça
        case 'caça'
                if matriz(x+1, y+1, z+1) ~= 0
                    ocupa = 1;
                    return;
                end
               if espaco == 1
                            for i = -1:1
                                 for j = -1:1
                                    for t = -1:1
                                        xi = x+1+i;
                                        yi = y+1+j;
                                        zi = z+1+t;
                                        % Verifica se dentro dos limites antes de aceder
                                        if xi >= 1 && xi <= 10 && yi >= 1 && yi <= 10 && zi >= 1 && zi <= 10
                                            if matriz(xi, yi, zi) ~= 0
                                            ocupa = 1;
                                            return;
                                            end
                                        end
                                    end
                                end
                             end
               end


        %% Verificação Fragata
        case 'fragata'
                  if direcao=='z'
                        if matriz(x+1, y+1, z+1) ~= 0 || matriz(x+1, y+1, z+2) ~= 0
                           ocupa = 1;
                        end
                        if espaco == 1
                            for i = -1:1
                                 for j = -1:1
                                    for t = -1:2
                                        xi = x+1+i;
                                        yi = y+1+j;
                                        zi = z+1+t;
                                        % Verifica se dentro dos limites antes de aceder
                                        if xi >= 1 && xi <= 10 && yi >= 1 && yi <= 10 && zi >= 1 && zi <= 10
                                            if matriz(xi, yi, zi) ~= 0
                                            ocupa = 1;
                                            return;
                                            end
                                        end
                                    end
                                end
                             end
                        end




                  elseif direcao=='y' 
                        if matriz(x+1, y+1, z+1) ~= 0 || matriz(x+1, y+2, z+1) ~= 0
                           ocupa = 1;
                        end
                        if espaco == 1
                            for i = -1:1
                                 for j = -1:2
                                    for t = -1:1
                                        xi = x+1+i;
                                        yi = y+1+j;
                                        zi = z+1+t;
                                        % Verifica se dentro dos limites antes de aceder
                                        if xi >= 1 && xi <= 10 && yi >= 1 && yi <= 10 && zi >= 1 && zi <= 10
                                            if matriz(xi, yi, zi) ~= 0
                                            ocupa = 1;
                                            return;
                                            end
                                        end
                                    end
                                end
                             end
                        end


                  elseif direcao=='x'
                        if matriz(x+1, y+1, z+1) ~= 0 || matriz(x+2, y+1, z+1) ~= 0
                           ocupa = 1;
                        end
                        if espaco == 1
                            for i = -1:2
                                 for j = -1:1
                                    for t = -1:1
                                        xi = x+1+i;
                                        yi = y+1+j;
                                        zi = z+1+t;
                                        % Verifica se dentro dos limites antes de aceder
                                        if xi >= 1 && xi <= 10 && yi >= 1 && yi <= 10 && zi >= 1 && zi <= 10
                                            if matriz(xi, yi, zi) ~= 0
                                            ocupa = 1;
                                            return;
                                            end
                                        end
                                    end
                                end
                             end
                        end


                  end
        case 'contratorpedeiros'
                       if direcao=='z'
                            if matriz(x+1, y+1, z+1) ~= 0 || matriz(x+1, y+1, z+2)~= 0 || matriz(x+1, y+1, z+3) ~= 0
                                ocupa = 1;
                                return;
                            end
                        if espaco == 1
                            for i = -1:1
                                 for j = -1:1
                                    for t = -1:3
                                        xi = x+1+i;
                                        yi = y+1+j;
                                        zi = z+1+t;
                                        % Verifica se dentro dos limites antes de aceder
                                        if xi >= 1 && xi <= 10 && yi >= 1 && yi <= 10 && zi >= 1 && zi <= 10
                                            if matriz(xi, yi, zi) ~= 0
                                            ocupa = 1;
                                            return;
                                            end
                                        end
                                    end
                                end
                             end
                        end



                      elseif direcao=='y' 
                            if matriz(x+1, y+1, z+1) ~= 0 || matriz(x+1, y+2, z+1)~= 0 || matriz(x+1, y+3, z+1) ~= 0
                                ocupa = 1;
                                return;
                            end
                            if espaco == 1
                                for i = -1:1
                                     for j = -1:3
                                        for t = -1:1
                                            xi = x+1+i;
                                            yi = y+1+j;
                                            zi = z+1+t;
                                            % Verifica se dentro dos limites antes de aceder
                                            if xi >= 1 && xi <= 10 && yi >= 1 && yi <= 10 && zi >= 1 && zi <= 10
                                                if matriz(xi, yi, zi) ~= 0
                                                ocupa = 1;
                                                return;
                                                end
                                            end
                                        end
                                    end
                                 end
                            end


                      elseif direcao=='x'
                            if matriz(x+1, y+1, z+1) ~= 0 || matriz(x+2, y+1, z+1)~= 0 || matriz(x+3, y+1, z+1) ~= 0
                                ocupa = 1;
                            end
                            if espaco == 1
                                for i = -1:3
                                     for j = -1:1
                                        for t = -1:1
                                            xi = x+1+i;
                                            yi = y+1+j;
                                            zi = z+1+t;
                                            % Verifica se dentro dos limites antes de aceder
                                            if xi >= 1 && xi <= 10 && yi >= 1 && yi <= 10 && zi >= 1 && zi <= 10
                                                if matriz(xi, yi, zi) ~= 0
                                                ocupa = 1;
                                                return;
                                                end
                                            end
                                        end
                                    end
                                 end
                            end

                      end
        %% Verificação Cruzador
         case 'cruzador'
                      if direcao=='z'
                            if matriz(x+1, y+1, z+1) ~= 0 || matriz(x+1, y+1, z+2)~= 0 || matriz(x+1, y+1, z+3)~= 0 || matriz(x+1, y+1, z+4) ~= 0
                                ocupa = 1;
                            end


    % Verificação do espaço ao redor (só se espaco == 1)
                    if espaco == 1
                        for i = -1:1
                             for j = -1:1
                                for t = -1:4
                                    xi = x+1+i;
                                    yi = y+1+j;
                                    zi = z+1+t;
                                    % Verifica se dentro dos limites antes de aceder
                                    if xi >= 1 && xi <= 10 && yi >= 1 && yi <= 10 && zi >= 1 && zi <= 10
                                        if matriz(xi, yi, zi) ~= 0
                                        ocupa = 1;
                                        return;
                                        end
                                    end
                                end
                            end
                         end
                    end


                      elseif direcao=='y' 
                            if matriz(x+1, y+1, z+1) ~= 0 || matriz(x+1, y+2, z+1)~= 0 || matriz(x+1, y+3, z+1)~= 0 || matriz(x+1, y+4, z+1) ~= 0
                                ocupa = 1;
                            end
                            if espaco == 1
                                for i = -1:1
                                     for j = -1:4
                                        for t = -1:1
                                            xi = x+1+i;
                                            yi = y+1+j;
                                            zi = z+1+t;

                                            if xi >= 1 && xi <= 10 && yi >= 1 && yi <= 10 && zi >= 1 && zi <= 10
                                                if matriz(xi, yi, zi) ~= 0
                                                ocupa = 1;
                                                return;
                                                end
                                            end
                                        end
                                    end
                                 end
                            end


                      elseif direcao=='x'
                            if matriz(x+1, y+1, z+1) ~= 0 || matriz(x+2, y+1, z+1)~= 0 || matriz(x+3, y+1, z+1)~= 0 || matriz(x+4, y+1, z+1) ~= 0
                                ocupa = 1;
                            end
                            if espaco == 1
                                for i = -1:4
                                     for j = -1:1
                                        for t = -1:1
                                            xi = x+1+i;
                                            yi = y+1+j;
                                            zi = z+1+t;
                                            % Verifica se dentro dos limites antes de aceder
                                            if xi >= 1 && xi <= 10 && yi >= 1 && yi <= 10 && zi >= 1 && zi <= 10
                                                if matriz(xi, yi, zi) ~= 0
                                                ocupa = 1;
                                                return;
                                                end
                                            end
                                        end
                                    end
                                 end
                            end

                      end

        %% Verificação Nave-Mãe
       case 'nave-mãe'

           for i = 0:2
               for j = 0:2
                   for t = 0:2
                       if matriz(x+i+1, y+j+1, z+t+1) ~= 0
                           ocupa = 1;  
                           return;  
                       end
                   end
               end
           end
          if espaco == 1
            for i = -1:3
              for j = -1:3
                 for t = -1:3
                    xi = x+1+i;
                    yi = y+1+j;
                    zi = z+1+t;
                    % Verifica se dentro dos limites antes de aceder
                    if xi >= 1 && xi <= 10 && yi >= 1 && yi <= 10 && zi >= 1 && zi <= 10
                       if matriz(xi, yi, zi) ~= 0
                          ocupa = 1;
                           return;
                       end
                    end
                 end
               end
             end
          end
        otherwise


    end






