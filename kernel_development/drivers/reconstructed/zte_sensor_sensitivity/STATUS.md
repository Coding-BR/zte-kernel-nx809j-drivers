# Status de reconstrucao do `zte_sensor_sensitivity`

## Estado atual

Reconstrucao estatica em andamento. Nao e permitido declarar 100% concluido.

Comprovado nesta etapa:

- stock SHA-256 `1f1340bea19dddf3aa5d5b48028c47611f8a222f025b43dde883950573c64032`;
- mapa Ghidra das 21 funcoes criado e revisado;
- imports e aliases do candidato iguais ao stock;
- build limpo e reproduzivel para o kernel alvo;
- KCFI 18/18 nos callbacks sysfs e lifecycle;
- inventario e multiplicidade de chamadas Ghidra 21/21 em paridade.

Ainda falta:

- harness comportamental reproduzivel cobrindo limites, parse, mutex dos enables, criacao parcial de sysfs e todos os rollbacks;
- atestacao das 21 microtarefas;
- fechamento formal dos gates 0 a 7;
- revisao independente, hardware supervisionado e promocao final (gates 8 a 10).

O `.ko` atual nao foi promovido nesta etapa e nao deve ser carregado no aparelho.
