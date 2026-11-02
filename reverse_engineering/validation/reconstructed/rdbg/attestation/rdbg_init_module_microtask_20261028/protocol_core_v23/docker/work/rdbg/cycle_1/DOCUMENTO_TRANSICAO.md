# Transição — rdbg

A reconstrução permanece INCOMPLETE. O mapa agora cobre as 8 funções stock com fontes candidatas. `init_module@00101638` foi reconstruída em C comum e passou os oito gates core: assembly/relocações, Ghidra C/P-Code, KCFI, Joern, identidade das entradas e build Docker reproduzível.

O problema restante está na base do Docker, não no corpo de `init_module`: a imagem monta o volume de kernel no commit `e1ea0289c329` (`build-run-50-202606...`), enquanto o manifesto do aparelho identifica o commit Android Common `f1bdb13583da` e registra outra configuração. O `.config` do volume tem SHA-256 `2ac6f9259bf4d82a2c8944ea0e0f7c562c7be563cec070174109182f59fd2825`, diferente do hash de alvo `b3ca00186d0849f409e760297023cd3b198202656f216f5726704c05fa944288`. O `Module.symvers` coincide com o manifesto, mas isso não prova igualdade do kernel nem do `vermagic`.

Os dois builds limpos do snapshot `engenharia/curated/rdbg` são reprodutíveis e produzem o mesmo hash. Ainda assim, o `vermagic` gerado é `6.12.23-4k`, diferente do alvo `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k` e do módulo stock `6.12.23-maybe-dirty-4k`. Por isso o auditor não promoveu um `.ko` para a árvore curated. Não force um sufixo de versão para mascarar a diferença.

Próximos passos: obter e fixar o source/config do kernel alvo; repetir a auditoria completa até atingir paridade de `vermagic`, KMI, aliases e imports; concluir o harness de host, o modelo de estados/lifetime e a revisão independente. A validação de hardware segue pendente. Não carregar este candidato no aparelho.
