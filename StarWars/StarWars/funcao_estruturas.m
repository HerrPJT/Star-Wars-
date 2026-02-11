%ocupa=verifica_tabuleiro(x,y,z,matriz,'caça');
function [Matriz,erro]=funcao_estruturas(palavra,direcao,x,y,z,matriz,espaco,k)
    cor_caca='blue';
    cor_fragata='red';
    cor_contra='green';
    cor_cruz='yellow';
    cor_nave_mae='black';
    erro=0;
    % Cria patches invisíveis apenas para a legenda
    hold on;
    h_caca = patch(NaN, NaN, NaN, cor_caca, 'DisplayName', 'Caça');
    h_fragata = patch(NaN, NaN, NaN, cor_fragata, 'DisplayName', 'Fragata');
    h_contra = patch(NaN, NaN, NaN, cor_contra, 'DisplayName', 'Contratorpedeiro');
    h_cruz = patch(NaN, NaN, NaN, cor_cruz, 'DisplayName', 'Cruzador');
    h_navemae = patch(NaN, NaN, NaN, cor_nave_mae, 'DisplayName', 'Nave-Mãe');

    % Adiciona a legenda
    lgd=legend([h_caca, h_fragata, h_contra, h_cruz, h_navemae],'Location','northeastoutside');
    set(lgd, 'AutoUpdate','off');
    if(x>=10 || y>=10 || z>=10)
        fprintf('Erro! Volta a inserir \n');
        erro=1;
    else
        switch lower(palavra)

            case 'caça'
                if x >= 10 || y >= 10 || z >= 10
                    fprintf('Fora das Bordas\n');
                    erro = 1;
                    ocupa = -1;
               else
                        ocupa=verifica_tabuleiro(x,y,z,matriz,palavra,direcao,espaco);
               end


               if(ocupa==1)
                       fprintf('Posição já utilizada!\n');
                       erro=1;
               elseif(ocupa==0)
                       matriz=funcao_quadrado(x, y, z,matriz,cor_caca,k);
               end


            case 'fragata'
                if direcao=='z'
                    if(z>=9) 
                        fprintf('Fora das Bordas\n');
                        erro=1;
                        ocupa=-1;
                   else
                        ocupa=verifica_tabuleiro(x,y,z,matriz,palavra,direcao,espaco);
                    end
                    if (ocupa==1)
                            fprintf('Erro fragata está a ser sobreposta\n');
                            erro=1;
                    elseif(ocupa==0)
                            matriz=funcao_quadrado(x, y, z,matriz,cor_fragata,k);
                            matriz=funcao_quadrado(x, y, z+1,matriz,cor_fragata,k);
                    end


                elseif direcao=='y'
                    if(y>=9)
                        fprintf('Fora das Bordas\n');
                        erro=1;
                        ocupa=-1;
                   else
                        ocupa=verifica_tabuleiro(x,y,z,matriz,palavra,direcao,espaco);
                    end
                    if (ocupa==1) 
                            fprintf('Erro fragata está a ser sobreposta\n');
                            erro=1;
                    elseif(ocupa==0)
                            matriz=funcao_quadrado(x, y, z,matriz,cor_fragata,k);
                            matriz=funcao_quadrado(x, y+1, z,matriz,cor_fragata,k);
                    end

                elseif direcao=='x'
                    if(x>=9)
                        fprintf('Fora das Bordas\n');
                        erro=1;
                        ocupa=-1;
                    else
                        ocupa=verifica_tabuleiro(x,y,z,matriz,palavra,direcao,espaco);
                    end

                    if (ocupa==1) 
                            fprintf('Erro fragata está a ser sobreposta\n');
                            erro=1;
                    elseif(ocupa==0)
                            matriz=funcao_quadrado(x, y, z,matriz,cor_fragata,k);
                            matriz=funcao_quadrado(x+1, y, z,matriz,cor_fragata,k);
                    end
                end

            case 'contratorpedeiros'
                if direcao=='z'
                    if(z>=8)
                        fprintf('Fora das Bordas\n');
                        erro=1;
                        ocupa=-1;
                   else
                        ocupa=verifica_tabuleiro(x,y,z,matriz,palavra,direcao,espaco);
                   end

                    if (ocupa==1)
                            fprintf('Erro contratorpedeiro está a ser sobreposta\n');
                            erro=1;
                    elseif(ocupa==0)
                            matriz=funcao_quadrado(x, y, z,matriz,cor_contra,k);
                            matriz=funcao_quadrado(x, y, z+1,matriz,cor_contra,k);
                            matriz=funcao_quadrado(x, y, z+2,matriz,cor_contra,k);
                    end
                elseif direcao=='y'
                    if(y>=8)
                        fprintf('Fora das Bordas\n');
                        erro=1;
                        ocupa=-1;
                   else
                        ocupa=verifica_tabuleiro(x,y,z,matriz,palavra,direcao,espaco);
                   end
                    if (ocupa==1)
                            fprintf('Erro contratorpedeiro está a ser sobreposta\n');
                            erro=1;
                    elseif(ocupa==0)
                            matriz=funcao_quadrado(x, y, z,matriz,cor_contra,k);
                            matriz=funcao_quadrado(x, y+1, z,matriz,cor_contra,k);
                            matriz=funcao_quadrado(x, y+2, z,matriz,cor_contra,k);
                    end

                elseif direcao=='x'
                    if(x>=8)
                        fprintf('Fora das Bordas\n');
                        erro=1;
                        ocupa=-1;
                   else
                        ocupa=verifica_tabuleiro(x,y,z,matriz,palavra,direcao,espaco);
                    end
                    if (ocupa==1)
                            fprintf('Erro contratorpedeiro está a ser sobreposta\n');
                            erro=1;
                    elseif(ocupa==0)
                            matriz=funcao_quadrado(x, y, z,matriz,cor_contra,k);
                            matriz=funcao_quadrado(x+1, y, z,matriz,cor_contra,k);
                            matriz=funcao_quadrado(x+2, y, z,matriz,cor_contra,k);
                    end
                end

            case 'cruzador'
                if direcao=='z'
                    if(z>=7)
                        fprintf('Fora das Bordas\n');
                        erro=1;
                        ocupa=-1;
                    else
                        ocupa=verifica_tabuleiro(x,y,z,matriz,palavra,direcao,espaco);
                    end

                    if (ocupa==1)
                            fprintf('Erro cruzado está a ser sobreposta\n');
                            erro=1;
                    elseif(ocupa==0)
                            fprintf('Desenha cruzado')
                            matriz=funcao_quadrado(x, y, z,matriz,cor_cruz,k);
                            matriz=funcao_quadrado(x, y, z+1,matriz,cor_cruz,k);
                            matriz=funcao_quadrado(x, y, z+2,matriz,cor_cruz,k);
                            matriz=funcao_quadrado(x, y, z+3,matriz,cor_cruz,k);
                    end
                elseif direcao=='y'
                    if(y>=7)
                        fprintf('Fora das Bordas\n');
                        erro=1;
                        ocupa=-1;
                    else
                        ocupa=verifica_tabuleiro(x,y,z,matriz,palavra,direcao,espaco);
                    end
                    if (ocupa==1)
                            fprintf('Erro contratorpedeiro está a ser sobreposta\n');
                            erro=1;
                    elseif(ocupa==0)
                            matriz=funcao_quadrado(x, y, z,matriz,cor_cruz,k);
                            matriz=funcao_quadrado(x, y+1, z,matriz,cor_cruz,k);
                            matriz=funcao_quadrado(x, y+2, z,matriz,cor_cruz,k);
                            matriz=funcao_quadrado(x, y+3, z,matriz,cor_cruz,k);
                    end
                elseif direcao=='x'
                   if(x>=7)
                        fprintf('Fora das Bordas\n');
                        erro=1;
                        ocupa=-1;
                    else
                        ocupa=verifica_tabuleiro(x,y,z,matriz,palavra,direcao,espaco);
                    end
                    if (ocupa==1)
                            fprintf('Erro contratorpedeiro está a ser sobreposta\n');
                            erro=1;
                    elseif(ocupa==0)
                            matriz=funcao_quadrado(x, y, z,matriz,cor_cruz,k);
                            matriz=funcao_quadrado(x+1, y, z,matriz,cor_cruz,k);
                            matriz=funcao_quadrado(x+2, y, z,matriz,cor_cruz,k);
                            matriz=funcao_quadrado(x+3, y, z,matriz,cor_cruz,k);
                    end
                end

            case 'nave-mãe'
             if x>=8 || y>=8 || z>=8
                 fprintf('Fora das Bordas\n');
                 erro=1;
                 ocupa=-1;
             else
                 ocupa=verifica_tabuleiro(x,y,z,matriz,palavra,direcao,espaco);
             end
             if (ocupa==1)
                  fprintf('Erro nave-mae está a ser sobreposta\n');
                  erro=1;
             elseif(ocupa==0)
                     for i = 0:2
                         for j = 0:2
                             for t = 0:2
                                 matriz=funcao_quadrado(x + i, y + j, z + t,matriz,cor_nave_mae,k);

                             end
                         end
                     end

             end
            otherwise
                disp('Unknown method.')

        end

    end
    Matriz=matriz;
end
