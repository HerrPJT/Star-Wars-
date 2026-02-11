function salvar_resultado(vencedor, perdedor, n_jogadas)
  fileName = 'resultados_jogos.txt';
  fid = fopen(fileName, 'a');

  if fid == -1
      error('Erro ao abrir o ficheiro de resultados.');
  end
  timestamp = datetime("now", 'yyyy-mm-dd HH:MM:SS');

  fprintf(fid, '%s | Vencedor: %s | Perdedor: %s | Jogadas: %d ', timestamp, vencedor, perdedor, n_jogadas);
          
  fclose(fid);
end
      
    