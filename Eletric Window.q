//This file was generated from (Commercial) UPPAAL 4.0.14 (rev. 5615), May 2014

/*
REQ-09: Quando acionado, o sistema de seguran\u00e7a deve fechar completamente, a menos que haja um obst\u00e1culo.
*/
(Allarme.On and ObstrucaoE.Off) --> (JanelaE.Subindo or JanelaE.Subir or JanelaD.Parado)

/*
REQ-09: Quando acionado, o sistema de seguran\u00e7a deve fechar completamente, a menos que haja um obst\u00e1culo.
*/
(Allarme.On and ObstrucaoD.Off) --> (JanelaD.Subindo or JanelaD.Subir or JanelaD.Parado)

/*
REQ-09: Quando acionado, o sistema de seguran\u00e7a deve fechar completamente, a menos que haja um obst\u00e1culo.

*/
Allarme.On --> (Passag.Inativo and Driver.Inativo)

/*
REQ-09: Quando acionado, o sistema de seguran\u00e7a deve fechar completamente, a menos que haja um obst\u00e1culo.

*/
(Allarme.On and ObstrucaoE.On) --> JanelaE.Obstaculo

/*
REQ-09: Quando acionado, o sistema de seguran\u00e7a deve fechar completamente, a menos que haja um obst\u00e1culo.

*/
(Allarme.On and ObstrucaoD.On) --> JanelaD.Obstaculo

/*
REQ-08: Os comandos do interruptor do motorista t\u00eam prioridade sobre os do passageiro.
*/
Driver.DescerVidroPassageiro --> Passag.Parado

/*
REQ-08: Os comandos do interruptor do motorista t\u00eam prioridade sobre os do passageiro.
*/
Driver.SubirVidroPassageiro --> Passag.Parado

/*
REQ-06: Se um objeto obstrutivo for detectado, o vidro dever\u00e1 descer aproximadamente 10cm.
*/
ObstrucaoD.On --> JanelaD.Obstaculo

/*
REQ-06: Se um objeto obstrutivo for detectado, o vidro dever\u00e1 descer aproximadamente 10cm.
*/
ObstrucaoE.On --> JanelaE.Obstaculo

/*
REQ-05: Se o comando para abrir ou fechar o vidro for mantido pressionado entre 200ms e 1s, o vidro abre ou fecha completamente.
*/
E<> Driver.SubirVidroPassageiro and (JanelaD.Subindo or JanelaD.Subir)

/*
REQ-05: Se o comando para abrir ou fechar o vidro for mantido pressionado entre 200ms e 1s, o vidro abre ou fecha completamente.
*/
E<> Driver.SubirVidroMotorista and (JanelaE.Subindo or JanelaE.Subir)

/*
REQ-05: Se o comando para abrir ou fechar o vidro for mantido pressionado entre 200ms e 1s, o vidro abre ou fecha completamente.
*/
E<> Passag.SubirVidro and (JanelaD.Subindo or JanelaD.Subir)

/*
REQ-05: Se o comando para abrir ou fechar o vidro for mantido pressionado entre 200ms e 1s, o vidro abre ou fecha completamente.
*/
E<> Driver.DescerVidroPassageiro and (JanelaD.Descendo or JanelaD.Descer)

/*
REQ-05: Se o comando para abrir ou fechar o vidro for mantido pressionado entre 200ms e 1s, o vidro abre ou fecha completamente.
*/
E<> Driver.DescerVidroMotorista and (JanelaE.Descendo or JanelaE.Descer)

/*
REQ-05: Se o comando para abrir ou fechar o vidro for mantido pressionado entre 200ms e 1s, o vidro abre ou fecha completamente.
*/
E<> Passag.DescerVidro and (JanelaD.Descendo or JanelaD.Descer)

/*
N\u00e3o existe deadlock. Deve devolver valor Verdade.
*/
A[] not deadlock

