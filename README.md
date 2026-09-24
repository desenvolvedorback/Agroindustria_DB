# Projeto de Estudo: Banco de Dados da Agroindústria Açucareira 🌾🏭

Este repositório contém um projeto prático de banco de dados relacional desenvolvido para modelar, manipular e consultar dados de um ambiente industrial sucroenergético (agroindústria de cana-de-açúcar).

---

## 🛠️ Tecnologias Utilizadas
* **SGBD:** MySQL / MariaDB
* **Linguagem:** SQL (DDL, DML, DQL)

---

## 📁 Estrutura do Projeto

O projeto está dividido em três etapas principais contidas nos scripts SQL:

1. **`Criação e modificação Banco Agroindustria.sql` (DDL):**
   * Criação do banco de dados `agroindustria_db`.
   * Definição das tabelas principais: `setores`, `sensores` e `medicoes` (posteriormente renomeada para `leituras`).
   * Alterações estruturais na tabela (`ALTER TABLE`, `RENAME TABLE`, exclusão e modificação de colunas).

2. **`Agroindustria_DML.sql` (DML):**
   * Inserção de dados iniciais nas tabelas de `setores`, `sensores` e `leituras`.
   * Comandos de atualização (`UPDATE`) para modificar estados, fabricantes e valores de leituras.
   * Comandos de remoção (`DELETE`) para limpar registros específicos.

3. **`Agroindustria_DQL.sql` (DQL):**
   * Consultas avançadas utilizando filtros (`WHERE`, `IN`, operadores relacionais).
   * Ordenação de resultados (`ORDER BY` com `ASC` e `DESC`).

---

## 📊 Modelo Conceitual do Banco

O sistema gerencia o monitoramento industrial através de 3 entidades relacionadas:

* **Setores:** Áreas operanais da usina (Ex: Moagem, Clarificação, Evaporação, Fermentação, Destilação e Caldeira).
* **Sensores:** Dispositivos instalados nos setores para monitorar variáveis como vazão (`VAZ`), temperatura (`TEMP`), pH, teor de açúcar (`BRIX`), teor alcoólico (`ETOH`) e pressão (`PRES`).
* **Leituras:** Histórico de medições coletadas pelos sensores divididas por turnos (Manhã, Tarde, Noite).

---

## 🚀 Como Executar o Projeto

1. Clone o repositório ou baixe os arquivos SQL.
2. Abra o seu gerenciador de banco de dados MySQL (como MySQL Workbench, DBeaver ou HeidiSQL).
3. Execute os scripts na ordem lógica de criação:
   - Primeiro: `Criação e modificação Banco Agroindustria.sql`
   - Segundo: `Agroindustria_DML.sql`
