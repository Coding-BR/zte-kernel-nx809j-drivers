# Triagem semântica do zte_tpd — rodada 3

## Corrida de lifetime no char device

`syna_cdev_read` e `syna_cdev_write` carregam o contexto por `g_cdev_data + 168`
antes de adquirir `qword_316A0`. Dentro da operação, o caminho raw usa o buffer
global `qword_31658` e acompanha referências em `qword_31698`.

Na remoção, `syna_cdev_remove` usa `qword_316D0` para esvaziar a lista de
clientes, chama `cdev_del`, registra um aviso caso `qword_31698` ainda seja
diferente de zero, libera `qword_31658` e zera o estado global. O caminho não
adquire `qword_316A0` nem `qword_31668` antes da liberação. Em seguida,
`syna_dev_remove` desconecta o dispositivo e libera outros objetos associados.

A documentação Linux 6.12 é explícita: `cdev_del` impede novas aberturas, mas
descritores já abertos continuam podendo chamar as operações do arquivo
([Linux Kernel API — cdev_del](https://docs.kernel.org/6.12/core-api/kernel-api.html)).
Assim, há dois cenários estáticos: um descritor existente pode entrar em read ou
write depois que `g_cdev_data` foi zerado e o código não valida esse estado antes
de dereferenciá-lo; uma operação em andamento pode usar `qword_31658` enquanto a
remoção o libera, pois a remoção não espera pelos locks/refcounts usados pelo
caminho raw e apenas imprime o aviso de referência ativa.

Os locks em `qword_316D0` são coerentes para a lista de clientes. Eles não
protegem o buffer compartilhado de I/O, cuja exclusão passa por
`qword_316A0`/`qword_31668`. Os harnesses existentes cobrem sequências diretas e
contratos de limpeza com mutexes stub; não modelam descritores abertos em
concorrência nem o lifetime real do cdev no kernel.

As quatro funções envolvidas estão promovidas como `PROMOTED_OFFLINE_EXACT` e
possuem evidência de build canônico Docker. Não alterei o código reconstruído:
uma correção precisa ser registrada como hardening separado e introduzir um
protocolo de lifetime para descritores já abertos, protegendo a obtenção do
contexto, drenando I/O em andamento e só então liberando o buffer e o contexto.

## Escopo

Esta rodada classificou 13 achados Joern em `syna_cdev_read`,
`syna_cdev_write`, `syna_cdev_remove` e `syna_dev_remove`, agrupando os frees da
lista sob o lock correto e identificando a corrida separada do buffer de I/O.
O total revisado até aqui é parcial; runtime no NX809J e revisão humana
independente ainda não foram feitos.
