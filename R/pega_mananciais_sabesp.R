#' Pega os dados pluviométricos da sabesp
#'
#' @param data_coleta data da coleta no forma YYYY-MM-DD
#'
#' @return dataset com dados da sabesp
#' @export
#'
#' @examples
#' #pega_mananciais_sabesp(data_coleta = Sys.Date())
#'
#' #pega para o ultimo mes
#' #pega_mananciais_sabesp(data_coleta = Sys.Date()-1:30
pega_mananciais_sabesp <- function(data_coleta = Sys.Date()){

  url <- stringr::str_glue("https://mananciais.sabesp.com.br/api/Mananciais/ResumoSistemas/{data_colet}")

  pega_dados <- function(url_funcao){
    jsonlite::fromJSON(url_funcao) %>%
      purrr::pluck("ReturnObj","sistemas") %>%
      dplyr::tibble() %>%
      janitor::clean_names()
  }

  purrr::map(
    url,
    ~ pega_dados(.x)
  ) %>%
    purrr::list_rbind()
}
