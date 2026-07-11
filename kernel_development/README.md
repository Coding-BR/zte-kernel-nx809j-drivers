# Ambiente de Desenvolvimento e Recompilação de Kernel

Este diretório contém os códigos-fonte reconstruídos e as ferramentas necessárias para compilar o kernel customizado com suporte a drivers open-source reconstruídos para o ZTE NX809J.

## 🗂️ Estrutura

- **`drivers/zte_ir/`**: Driver de IR unificado (`zte_ir.c`) escrito do zero com conformidade GKI 6.12. Contém:
  - `headers/`: Mapeamento de structs ABI (`zte_ir_layout.h`) compatíveis em memória com o firmware fechado.
  - `implementation/`: O passo-a-passo da reconstrução dividido em 10 microtarefas.
- **`build_scripts/`**: Infraestrutura para build do kernel. Inclui:
  - `Dockerfile`: Imagem de build contendo o toolchain necessário.
  - `build_kernel.sh`: Compila o kernel GKI/vmlinux empacotando o driver.
  - Scripts utilitários de boot e empacotamento.
- **`Module.symvers`**: Assinatura do kernel original usada para alinhar os CRCs dos símbolos exportados.

## 🔨 Como Recompilar o Kernel

1. Execute o bootstrap do Docker para inicializar o container de compilação:
   ```powershell
   ./build_scripts/bootstrap.ps1
   ```
2. Inicie o processo de compilação completa:
   ```powershell
   ./build_scripts/build.ps1
   ```
3. O binário `boot.img` gerado será colocado na pasta de artefatos, pronto para ser gravado ou testado via fastboot:
   ```bash
   fastboot boot boot.img
   ```
