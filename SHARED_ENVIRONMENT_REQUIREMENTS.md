# Requisitos para Novos Desenvolvedores no Projeto

Como as fontes principais agora estão divididas de forma limpa, aqui está a lista exata do que outros desenvolvedores precisam para clonar, configurar e começar a ajudar na reconstrução e validação dos drivers.

---

## 1. O que já está no GitHub (Clonar e Sincronizar)

Os outros desenvolvedores precisam clonar **dois repositórios**:

### Repositório A: Árvore do Kernel
* **URL:** `https://github.com/Coding-BR/android_kernel_nubia_sm8850_qwjujube`
* **O que contém:** O código-fonte principal do kernel comum Android GKI com a nossa pasta de drivers `drivers/soc/qcom/zte/zte_ir/` já integrada.

### Repositório B: Workspace de Engenharia Reversa e Drivers
* **URL:** `https://github.com/Coding-BR/zte-kernel-nx809j-drivers`
* **O que contém:**
  * Os códigos `.c` descompilados pelo Ghidra para todos os drivers da ZTE (Fingerprint, LED, Touchscreen, Stats, etc.) em `/reverse_engineering/decompiled_raw/`.
  * Os scripts utilitários do Ghidra e pipelines de reversão em `/reverse_engineering/tools/`.
  * A nossa implementação open-source documentada em `/kernel_development/drivers/zte_ir/`.
  * A infraestrutura Docker e scripts de automação de compilação em `/kernel_development/build_scripts/`.
  * O arquivo `Module.symvers` de referência.

---

## 2. Necessidade do Ghidra (Depende do Objetivo)

A necessidade de instalar o **Ghidra** depende do que o outro desenvolvedor for fazer no projeto:

* **NÃO precisa de Ghidra se o objetivo for:**
  * Apenas recompilar o kernel.
  * Ajudar a escrever, refatorar ou corrigir o código do driver reconstruído (`zte_ir.c`).
  * Estudar a lógica dos outros drivers proprietários. 
  * *Motivo:* Nós já descompilamos os drivers originais e exportamos todos os códigos `.c` brutos diretamente na pasta `/reverse_engineering/decompiled_raw/` do repositório no GitHub. Qualquer editor de texto (como o VS Code) é suficiente para ler e trabalhar nesses arquivos.
  
* **PRECISA de Ghidra se o objetivo for:**
  * Extrair um **novo driver** proprietário (um novo `.ko` que ainda não foi analisado).
  * Analisar uma nova versão de driver vinda de uma atualização de ROM da ZTE.
  * Rodar o pipeline de análise estática automática (`run_pipeline.py`).
  * *Requisitos nesse caso:* JDK 21+ instalado no host e o Ghidra (versão 11.x recomendada).

---

## 3. O que os Scripts Baixam Automaticamente (Zero Setup)

Ao rodar o comando inicial de bootstrap (`./kernel_development/build_scripts/bootstrap.ps1`), o script baixa e configura de forma transparente os seguintes pacotes grandes:

1. **Android Clang Toolchain (r536225):** O compilador oficial LLVM do Google para o Android 16.
2. **Rust Toolchain (1.82.0):** Compilador necessário para as dependências de Rust integradas ao kernel GKI moderno.
3. **Android GKI Kernel Prebuilts:** A estrutura do kernel Android GKI necessária para montar e empacotar a build.

---

## 3. O que os Desenvolvedores precisam obter manualmente (Stock Dumps)

> [!IMPORTANT]  
> Estes arquivos são específicos da ROM oficial e protegidos por copyright, por isso **não podem** ser incluídos diretamente nos repositórios do GitHub. Eles devem ser extraídos do próprio smartphone ou do pacote de firmware oficial da ZTE (via descompactação do `payload.bin` da ROM oficial):

1. **`stock_boot_current.img` (100.6 MB):**
   * **O que é:** A partição de boot original de fábrica.
   * **Como conseguir:**
     * Extraindo da ROM stock oficial descompactando o `payload.bin`.
     * Ou via root no aparelho: `su -c dd if=/dev/block/bootdevice/by-name/boot of=/data/local/tmp/stock_boot.img` e puxando via `adb pull`.
   * **Onde colocar:** Deve ser salvo na raiz da pasta `artifacts/` local com o nome `stock_boot_current.img`.
2. **`dtb.img` (20.1 MB):**
   * **O que é:** O bloco de Device Tree Binário do RedMagic 10 Pro.
   * **Como conseguir:** Extraindo do próprio `stock_boot_current.img` usando ferramentas de descompactação de boot (como `unpack_bootimg` do AOSP).
   * **Onde colocar:** Deve ser salvo na raiz do repositório local do kernel com o nome `dtb.img`.

---

## 🚀 Guia de Setup Rápido para um Novo Colaborador

Se você quiser passar as instruções de início rápido para alguém, envie este bloco:

1. **Clonar os repositórios:**
   ```bash
   # Clone o kernel e mude para a pasta padrão do build container
   git clone https://github.com/Coding-BR/android_kernel_nubia_sm8850_qwjujube.git kernel
   
   # Clone o workspace de drivers e reversão
   git clone https://github.com/Coding-BR/zte-kernel-nx809j-drivers.git
   ```
2. **Extrair e colocar as dependências proprietárias:**
   * Coloque a sua imagem stock extraída em `kernel/artifacts/stock_boot_current.img`.
   * Coloque a Device Tree extraída em `kernel/dtb.img`.
3. **Iniciar o Docker e Baixar Compiladores:**
   * Entre no diretório do workspace de drivers e execute:
     ```powershell
     ./kernel_development/build_scripts/bootstrap.ps1
     ```
4. **Compilar e Testar:**
   * Compile o kernel:
     ```powershell
     ./kernel_development/build_scripts/build.ps1 -NoPublishRelease
     ```
   * Reinicie o telefone em bootloader e execute a validação:
     ```powershell
     python ./kernel_development/build_scripts/validate_zte_ir.py
     ```
