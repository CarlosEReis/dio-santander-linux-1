# Configuração de Diretórios, Grupos e Usuários no Linux

## Descrição
Este script automatiza a criação de diretórios, grupos e usuários no sistema Linux, além de definir permissões de acesso para cada grupo em seus respectivos diretórios.

## Estrutura Criada

### Diretórios Criados:
- `/publica` → Acesso liberado para todos os usuários.
- `/adm` → Acesso restrito ao grupo `GRP_ADM`.
- `/ven` → Acesso restrito ao grupo `GRP_VEN`.
- `/sec` → Acesso restrito ao grupo `GRP_SEC`.

### Grupos Criados:
- `GRP_ADM`
- `GRP_VEN`
- `GRP_SEC`

### Usuários Criados e Atribuídos aos Grupos:
- **GRP_ADM:** Caio, Maria, João
- **GRP_VEN:** Debora, Sebastiana, Roberto
- **GRP_SEC:** Josefina, Amanda, Rogerio

## Permissões Definidas
- O diretório `/publica` possui permissões **777** (todos os usuários podem ler, escrever e executar).
- Os diretórios `/adm`, `/ven` e `/sec` possuem permissões **770** (apenas o dono e membros do grupo correspondente têm acesso total; outros usuários não têm acesso).

## Uso
### Executar o Script
Para executar o script, basta rodar o seguinte comando no terminal:
```bash
bash nome_do_script.sh
```
Substitua `nome_do_script.sh` pelo nome real do arquivo.

### Alterar Senhas dos Usuários
Todos os usuários criados têm a senha inicial **senha123**. Para maior segurança, recomenda-se que cada usuário altere sua senha no primeiro login com o comando:
```bash
passwd
```

## Observações
- O script deve ser executado com privilégios de superusuário (`root` ou via `sudo`).
- O comando `openssl passwd -6 senha123` gera a senha criptografada para os usuários.
- O `chown` define o grupo dono dos diretórios.
- O `chmod` controla as permissões de acesso aos diretórios.

## Fim
Este script facilita a configuração de ambientes organizacionais no Linux, garantindo controle de acesso eficiente entre os usuários e seus respectivos grupos.


