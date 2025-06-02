
<!-- README.md is generated from README.Rmd. Please edit that file -->

# getsabespdata <img src="https://www.r-project.org/logo/Rlogo.png" align="right" height="50"/>

[![License:
MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![R](https://img.shields.io/badge/R-≥%204.0.0-blue)](https://www.r-project.org/)
[![Status](https://img.shields.io/badge/status-active-brightgreen.svg)]()

## 📊 Obtenha dados pluviométricos atualizados da SABESP com R

O pacote `getsabespdata` fornece uma interface simples e direta para
coletar dados pluviométricos dos sistemas de mananciais da **SABESP**
(Companhia de Saneamento Básico do Estado de São Paulo), diretamente da
API pública da companhia. Ele é ideal para pesquisadores, analistas
ambientais, jornalistas de dados e qualquer pessoa interessada em
monitoramento hídrico no estado de São Paulo.

> 🔍 **Palavras-chave**: R, Sabesp, dados ambientais, mananciais, API
> pública, pluviometria, hidrologia, saneamento, open data.

------------------------------------------------------------------------

## ✨ Funcionalidade

- Acessa automaticamente a API de dados da SABESP.
- Permite consultas de um ou vários dias usando vetores de datas.
- Retorna um `tibble` limpo e pronto para análise.

------------------------------------------------------------------------

## 📦 Instalação

``` r
# Instale diretamente a partir do GitHub
if (!requireNamespace("devtools")) install.packages("devtools")
devtools::install_github("analuisademiranda/getsabespdata")
```

## 📚 Uso Básico

``` r
library(pegaMananciaisSabesp)

# Dados do dia atual
dados_hoje <- pega_manaciais_sabesp(Sys.Date())

# Dados da última semana
dados_semana <- pega_manaciais_sabesp(Sys.Date() - 1:7)

# Dados do último mês
dados_mes <- pega_manaciais_sabesp(Sys.Date() - 1:30)
```

🔍 Estrutura do resultado

O dataset retornado contém informações como:

nome_sistema: Nome do sistema de abastecimento
volume_armazenado_percentual: Porcentagem de volume armazenado
chuva_diaria_mm: Precipitação diária em milímetros chuva_mensal_mm:
Precipitação acumulada no mês chuva_ano_mm: Precipitação acumulada no
ano 🧠 Requisitos

R ≥ 4.0.0 Pacotes: stringr, jsonlite, purrr, dplyr, janitor 👤 Autor

Desenvolvido por Ana Luisa de Miranda 📫 Contato: <analuisam@ufmg.br> 🔗
GitHub: github.com/analuisademiranda

📄 Licença

Este pacote é distribuído sob a licença MIT. Veja o arquivo LICENSE para
mais detalhes.
