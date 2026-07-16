# Auditoria offline Stage 4: `gpio_keys_nubia`

Esta auditoria nao executa ADB, fastboot, `insmod`, `rmmod` nem escrita de
particoes.

- Gerado em: `2026-07-16T14:13:46.952500+00:00`
- Run de evidencia: `NX809J-20260711T011653Z`
- Rebuild limpo: `PASS`
- Resultado correto: `static_partial_23_of_24`
- Hardware: `DEFERRED`

## Gates fechados

- cadeia de proveniencia do `.ko` stock;
- duas compilacoes limpas e reproduziveis do candidato;
- paridade de inventario ELF, imports, `modinfo` e KCFI;
- mapa estrutural Ghidra/P-Code/Assembly para 24/24 funcoes;
- Assembly exato para 23/24 funcoes;
- dois harnesses offline aprovados.

## Gate aberto

`gpio_keys_probe` ainda nao possui igualdade ordenada de opcodes e relocacoes.
Stock e candidato coincidem em `3600` bytes, `900` instrucoes, `164`
relocacoes, `228` blocos, `387` arestas e `67` chamadas, mas igualdade
agregada nao prova identidade da funcao.

O status generico `static_verified` do relatorio automatizado deve ser lido
somente como aprovacao dos gates estruturais implementados por aquela versao
do auditor. Ele nao substitui o comparador Assembly por funcao e nao autoriza
classificar este driver como 100% reconstruido.

## Evidencia faltante

- paridade Assembly ordenada de `gpio_keys_probe`; ou
- nova evidencia independente que explique a forma C original do parser DT e
  das saidas frias.

O candidato permanece autorizado apenas para analise offline. A validacao de
hardware continua separada e dependera de um plano controlado com rollback.
