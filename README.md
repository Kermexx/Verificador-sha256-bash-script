# Calculador de Hash SHA-256 para Arquivos

Este projeto é um script em Bash que eu fiz quando estava estudando pentest, ele automatiza o cálculo do hash SHA-256 para uma lista de arquivos especificados. Ele permite verificar a integridade dos arquivos de forma rápida e eficiente.

## Funcionalidades

- Calcula o hash SHA-256 para cada arquivo em uma lista predefinida.
- Gera um arquivo de saída com todos os hashes calculados.
- Verifica se os arquivos existem antes de calcular o hash, informando caso algum arquivo esteja faltando.

## Como Usar

1. Clone o repositório:

    ```bash
    git clone https://github.com/Kermexx/Verificador-sha256-bash-script
.git
    cd nome-do-repositorio
    ```

2. Dê permissão de execução ao script:

    ```bash
    chmod +x 1.sh
    ```

3. Execute o script:

    ```bash
    ./1.sh
    ```

4. Os hashes SHA-256 dos arquivos serão armazenados no arquivo `sha256sums.txt`.
