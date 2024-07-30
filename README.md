# debloat-optimize-script
* un simple script para debloat y optimización de teléfonos Samsung

* Lo Debloat puedes desinstalar aplicaciones sensibles de lo sistema, Si no sabes cómo restaurarlos, puedes hacerlo utilizando el comando:
adb shell pm install-existing "paquete"

■ Se ocorrerem erros ao executar uma opção, ou o arquivo "ui.sh" tente alterar o ambiente de execução e executar o arquivo "run.sh"

■ As opções presentes se complementam e possuem uma ordem específica para melhor harmonia e efetividade.

■ Todas as opções foram feitos para serem usadas sem a necessidade de privilégios root. <- as opção marcadas com a estrela roxa talvez nao funcionem totalmente.

■ Esses arquivos foram desenvolvidos especialmente para dispositivos Samsung com a versão ONEUI 3 ou superior. Durante e após o uso, nenhuma ação adicional é necessária.

■ Em caso de dificuldades ou erros ao executar o arquivo ui.sh, é possível executar diretamente os arquivos com o comando "sh", seguido do diretório, nome e extensão do arquivo. exemplo:

"sh /storage/emulated/0/Download/debloat-and-optimize/files/debloat.sh"

■ Abaixo está uma explicação resumida de cada função:

● optimize.sh > configura e define valores do sistema, como desativação de tracings, logs ou otimização do standby.

● debloat.sh > remove, limpa, desativa e configura aplicativos do sistema, de forma mais completa e efetiva do que os arquivos de debloat convencionais.

● compile.sh > força o recompilamento das dex e layouts dos aplicativos instalados no dispositivo.

● appops.sh > revoga e altera permissões de aplicativos específicos do sistema.

● cache.sh > limpa o cache de todos os apps incluindo os do sistema.

● deepps.sh (Deep sleep) > revoga a permissão "run_any_in_background" de aplicativos do usuário.
