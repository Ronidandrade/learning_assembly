# Percorrendo e listando todos os arquivos da pasta.
for file in `ls $search_dir`; do
	# Verificando se algum deles possui a extensão .asm.
	if [ $file == *asm ]; then
		# Caso algum deles tenha: este será copilado em x64, pois é aq base do meu sistema operacional.
		nasm -f elf64 $file
		# Aqui fazemos uma nova listagem, afim de encontrar um novo arquivo que devereia ter sido criado no passo anterior.
		for file2 in `ls $search_dir`; do
			# Após copilado ele gera um arquivo .o, aqui verificamos se ele foi realmente criado.
			if [ $file2 == *.o ]; then
				# Caso tenha sido copilado corretamente: ele lhe perguntará qual o nome que deseja dar ao arquivo final, o programa em si.
				echo "Dê um nome à saida do seu programa:"
				# Aqui ele lê o nome que será passado, veja que esse nome não pode ter espaços.
				read name
				# Aqui ele faz a compilação final e gera o executável com o nome escolhido.
				ld -s -o $name $file2
				# Nessa linha ele executará o programa gerado.
				$echo ./$name
			fi
		done
	fi
done
