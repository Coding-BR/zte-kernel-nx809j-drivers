# Revisao independente — aw8693x_parse_dt

- Revisor: Dalton (sessao independente), revisao inicial concluida em 2026-11-01.
- Alvo: `aw8693x_parse_dt@00104d80`, modulo stock SHA-256 `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`.
- Fonte usada na verificacao de APIs: volume Docker `nubia_sm8850_kernel_src_nx809j_oout_20261030`, HEAD `3356b35306d35d5a480e3b63df1a9f065b5d9f55`, montado somente para leitura.
- `include/linux/of.h`: `0327bce1706869299f93cde91fe48573c694de9db41548a8360fe3952cf2abbc`.
- `drivers/of/property.c`: `f57891f26a96a65d7937004533faae8116020bb1d72adbf8269ed0d5b0cfce15`.
- `drivers/of/base.c`: `dfeb8e30035a356295c52bfb4dd90a9f6d1cd1e1b0ef9b89dc855e648b1f4e15`.

## API e oraculo

O revisor confirmou a ordem `sz_min, sz_max`, que `sz_max=0` remove o limite maximo do comprimento da propriedade mas ainda le/copias exatamente `sz_min` elementos, e que a validacao ocorre antes da copia. Os retornos positivos esperados no limite do helper sao 1, 3 e 24; a funcao stock somente testa `< 0`. U32 e decodificado em big-endian. Uma propriedade com bytes excedentes pode ser aceita; o oraculo nao deve chamar todo excedente de dado malformado.

O caso de todas as leituras falharem deve esperar 16 logs de erro e mais tres logs finais das flags. Os tres campos de presenca representam a existencia do objeto `property`, mesmo sem valor. Para `np == NULL`, os helpers retornam `-EINVAL`, os caminhos de erro continuam e as flags ficam falsas se `aw` for valido. `x0/dev` nao e usado; `aw/x1` e dereferenciado sem protecao no final, logo `aw == NULL` fica fora dos testes normais. Os textos `not found` cobrem qualquer retorno negativo e nao identificam o errno.

## MP5 e MP6

MP5 e aplicavel transitivamente: os 16 readers chamam `of_find_property` internamente e ha tres chamadas diretas. O codigo OF protege cada busca individual com `raw_spin_lock_irqsave(&devtree_lock, ...)`, libera o lock antes do retorno e preserva propriedades removidas na lista de propriedades mortas. Nao ha prova de snapshot atomico das 19 observacoes nem de lock/unwind pertencente ao driver. Os buffers locais sao usados sincronamente e seus ponteiros nao escapam.

MP6 e N/A: nao ha operacao de I2C, GPIO, MMIO, regmap ou registrador de hardware dentro desta funcao. Os valores efetivos do DT do NX809J continuam desconhecidos.

## Estado

A primeira revisao confirmou ordem das operacoes, offsets, erros, commits condicionais e canario, mas exigiu revisoes ao oraculo, aos limites de ponteiros nulos e ao MP5. Essas revisoes foram incorporadas em `parse_dt_pre_source_contract.json`. Rechecagem independente do arquivo revisado ainda pendente. Source map e implementacao continuam nao iniciados.

## Rechecagem independente

O revisor reabriu o contrato apos as correcoes e confirmou todos os pontos acima, sem erro restante. O contrato esta aprovado como pre-source gate. Esta aprovacao cobre o contrato e o escopo da revisao; nao aprova implementacao, compilacao ou promocao.
