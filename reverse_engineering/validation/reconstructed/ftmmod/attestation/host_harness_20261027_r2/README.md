# FTMMOD host harness: 2026-10-27 r2

Resultado executado: **PASS**, limitado ao modelo de host descrito no runner.

- Fonte candidato inalterado: `41e22f79185d29890ebb4e06e5fa6dfb3e7b849d4192a042bc21500916758da8`.
- Dois builds limpos no Docker fixado, com Clang r536225 e ASan/UBSan.
- Binarios identicos: `886af9f68c8c6049e9acae9525cc7f657eeb49266daf4d162c0f9e1dfe7ae6f8`.
- Cada binario executado duas vezes: quatro execucoes de 241 casos sem falha.
- Onze mutantes compilados e rejeitados por asserts do oraculo.

`report.json` preserva os comandos, retornos, stdout/stderr, hashes e limites.
`oracle_provenance.json` vincula os contratos MP2-MP4, a revisao MP4 anterior,
os nove Assembly stock e os contratos de core usados para escrever os testes.
`runner_input.py` e uma copia exata do runner executado.

As copias de fonte, shims e o executavel de cada build baseline sao versionados.
Para os mutantes, sao preservadas as fontes e os logs; seus executaveis podem
ser reproduzidos pelos comandos registrados, mas nao sao publicados.

A tentativa r1 detectou todos os mutantes, mas falhou na reprodutibilidade: ASan
incluiu os caminhos `cycle_1` e `cycle_2` nos binarios. A r2 usa o mesmo caminho
interno `/work/case` para cada diretorio de host isolado. Os testes, sanitizers e
fonte candidato permaneceram iguais. O relatorio r1 e seu runner exato ficam
preservados para nao ocultar a falha anterior.

O teste compila diretamente o candidato, com stubs; nao executa o ELF stock,
o kernel real ou o hardware. A revisao independente deste harness ainda nao
foi concluida. O gate Ghidra canonico da rodada r3 continua FAIL.

**Driver INCOMPLETO; promocao NOT_AUTHORIZED; hardware DEFERRED.**
