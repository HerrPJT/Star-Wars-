clc;
[modo_jogo, opcao_espacos]=menuInicial();
%% Adicionei
fig1=criar_interface('tag_fig1','Jogador1');
fig1.Visible = 'off';
fig2=criar_interface('tag_fig2','Jogador2');
fig2.Visible = 'off';
fig3=criar_interface('tag_fig3','Jogo');
fig3.Visible='on';
%%

tabuleiro1=zeros(10,10,10);
tabuleiro2=zeros(10,10,10);
%------------------------------------------------------------------------------------%
opcao=input("Jogador 1: Quer distribuir aleatoriamente a frota?(1-Sim/2-Não): ");

if opcao==1
  tabuleiro1=frota_aleatoria(tabuleiro1,opcao_espacos);
else
  tabuleiro1=posicionar_frota(tabuleiro1,opcao_espacos);
end
title("Tabuleiro do Jogador1");
Nome_Guerra1=input("Insira o seu nome de guerra: ", "s");
close all;
%-------------------------------------------------------------------------------------%
if modo_jogo==1
  opcao=input("Jogador 2: Quer distribuir aleatoriamente a frota?(1-Sim/2-Não): ");
  if opcao==1
    tabuleiro2=frota_aleatoria(tabuleiro2,opcao_espacos);
  else
    tabuleiro2=posicionar_frota(tabuleiro2,opcao_espacos);
  end
  title("Tabuleiro do Jogador2");
  Nome_Guerra2=input("Insira o seu nome de guerra: ", "s");
  close all;
  clc;
end

if modo_jogo==2 
    Nome_Guerra2="Computador";
    tabuleiro2=frota_aleatoria(tabuleiro2,opcao_espacos);
    close all;
    clc;
end
%--------------------------------------------------------------------------------------%
turno=randi(2);
%%Alterei Adcionei
numero_jogadas1=0;
numero_jogadas2=0;
while true
  if turno==1
  %% Alterei Adicionei
    estado_jogo(Nome_Guerra1,tabuleiro2,numero_jogadas2,fig2,'tag_fig2');
    juntar_interfaces(fig1, fig2,fig3);
    [tabuleiro2,blasted]=tiro(tabuleiro2,Nome_Guerra1);
    mostrar_tabuleiro(tabuleiro2,tabuleiro1,Nome_Guerra2,Nome_Guerra1);

    numero_jogadas2=numero_jogadas2+1;
    estado_jogo(Nome_Guerra1,tabuleiro2,numero_jogadas2,fig2,'tag_fig2');
    juntar_interfaces(fig1, fig2,fig3);
  %%
    if vitoria(tabuleiro2)==true
      fprintf("%s Venceu!\n",Nome_Guerra1);
      vencedor=Nome_Guerra1;
      break;
    end
    turno=2;

  else
    if modo_jogo==1
    %% Alterei Adicionei
      estado_jogo(Nome_Guerra2,tabuleiro1,numero_jogadas1,fig1,'tag_fig1');
      juntar_interfaces(fig1, fig2,fig3);
      [tabuleiro1,blasted]=tiro(tabuleiro1,Nome_Guerra2);
      mostrar_tabuleiro(tabuleiro1,tabuleiro2,Nome_Guerra1,Nome_Guerra2);

      numero_jogadas1=numero_jogadas1+1;
      estado_jogo(Nome_Guerra2,tabuleiro1,numero_jogadas1,fig1,'tag_fig1');
      juntar_interfaces(fig1, fig2,fig3);
      %%

    else
      estado_jogo("Computador",tabuleiro1,numero_jogadas1,fig1,'tag_fig1');
      juntar_interfaces(fig1, fig2,fig3);
      [tabuleiro1,blasted]=tirocomputador(tabuleiro1);
      mostrar_tabuleiro(tabuleiro1,tabuleiro2,Nome_Guerra1,"Computador");

      numero_jogadas1=numero_jogadas1+1;
      estado_jogo("Computador",tabuleiro1,numero_jogadas1,fig1,'tag_fig1');
      juntar_interfaces(fig1, fig2,fig3);




    end
    if vitoria(tabuleiro1)==true
        fprintf("%s Venceu!\n",Nome_Guerra2);
        vencedor=Nome_Guerra2;
        break;
    end
    turno=1;
  end

end
fprintf("Que a Força esteja contigo, %s",vencedor);
clear;