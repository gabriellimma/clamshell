
# clamshell 💻
Use seu macbook fechado e sem o carregador.


Usar o macbook fechado sem o carregador e sem nenhuma ferramente third-party parece impossível?  não com esses dois scripts.

## Como executar:

Entre na pasta src e execute o arquivo "start.sh" com o shell

    sh start.sh
e você deverá ver o seguinte log:

    🚀 running "start.sh" on PID: 16220 🚀
	📝 creating log in the "default-hibernate-mode.txt" file...
	your default hibernate mode variable is:
	 hibernatemode        3
	💤 disabling sleep on your MacBook
	🔐 password please
	Password:
	✅ done ✅
Quando o password for solicitado, insira a senha do admin.

Pronto, pode desplugar seu macbook da tomada, abaixar a tampa e aproveitar a economia de energia sem ter que usar carregando com um segundo monitor.

Neste exato momento, foi criado um arquivo com as configurações padrão do sistema "default-hibernate-mode.txt" que será consumido pelo script "revert.sh" para reverter as configurações feitas no "start.sh".

## Modelo do arquivo default-hibernate-mode.txt
	[Seg  6 Jun 2022 23:55:56 -03]
	your defaut hibernate mode was:
	 hibernatemode        3 
	and your enegy sttings was:
	System-wide power settings:
	 SleepDisabled		0
	Currently in use:
	 standby              1
	 Sleep On Power Button 1
	 hibernatefile        /var/vm/sleepimage
	 powernap             1
	 disksleep            10
	 sleep                1 (sleep prevented by powerd, coreaudiod, coreaudiod, bluetoothd, sharingd)
	 hibernatemode        3
	 ttyskeepawake        1
	 displaysleep         2 (display sleep prevented by Discord)
	 tcpkeepalive         1
	 lowpowermode         0

	 keep this note to easily turn back this configuration
	 ----


## Como desfazer a configuração
Apenas digite

	sh revert.sh
Você deverá ver o seguinte log:

	🚀 running "revert.sh" on PID: 16928 🚀
	[Ter  7 Jun 2022 00:02:09 -03]:✅ reverting clamshell start.sh script ✅
	Password:
	[Ter  7 Jun 2022 00:02:18 -03]:✅ done ✅

e todas as configurações deverão ser desfeitas.
No arquivo default-hibernate-mode.txt deve estar escrito logo abaixo do log feito no start:

	[Ter  7 Jun 2022 00:04:37 -03]
	hibernate mode changed to original values:
	System-wide power settings:
	 SleepDisabled		0
	Currently in use:
	 standby              1
	 Sleep On Power Button 1
	 hibernatefile        /var/vm/sleepimage
	 powernap             1
	 disksleep            10
	 sleep                1 (sleep prevented by coreaudiod, coreaudiod, sharingd, bluetoothd, 	powerd)
	 hibernatemode        3
	 ttyskeepawake        1
	 displaysleep         2 (display sleep prevented by Discord)
	 tcpkeepalive         1
	 lowpowermode         0

# Exemplo do arquivo completo, depois de um start e um revert:

	[Seg  6 Jun 2022 23:55:56 -03]
	your defaut hibernate mode was:
	 hibernatemode        3 
	and your enegy sttings was:
	System-wide power settings:
	 SleepDisabled		0
	Currently in use:
	 standby              1
	 Sleep On Power Button 1
	 hibernatefile        /var/vm/sleepimage
	 powernap             1
	 disksleep            10
	 sleep                1 (sleep prevented by powerd, coreaudiod, coreaudiod, bluetoothd, sharingd)
	 hibernatemode        3
	 ttyskeepawake        1
	 displaysleep         2 (display sleep prevented by Discord)
	 tcpkeepalive         1
	 lowpowermode         0

	 keep this note to easily turn back this configuration
	 ----
	[Ter  7 Jun 2022 00:04:37 -03]
	hibernate mode changed to original values:
	System-wide power settings:
	 SleepDisabled		0
	Currently in use:
	 standby              1
	 Sleep On Power Button 1
	 hibernatefile        /var/vm/sleepimage
	 powernap             1
	 disksleep            10
	 sleep                1 (sleep prevented by coreaudiod, coreaudiod, sharingd, bluetoothd, powerd)
	 hibernatemode        3
	 ttyskeepawake        1
	 displaysleep         2 (display sleep prevented by Discord)
	 tcpkeepalive         1
	 lowpowermode         0
