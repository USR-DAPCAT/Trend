#----------------------------------------------------------------------------------------------------------#
#09.12.2021#
#----------------------------------------------------------------------------------------------------------#
gc()
rm(list=ls())
#---------------------------  LECTURA --------------------------------------------------------------------#
dir_dades_origen="dades"
dir_dades_desti="dades"

rmarkdown::render(input="./codi/1_lectura.RMD",
                  output_file=paste0(here::here("resultats/Informe_Lectura_"),Sys.Date()),
                  params = list(dir_dades_desti=dir_dades_desti ,dir_dades_origen=dir_dades_origen))
#----------------------------------------------------------------------------------------------------------#
#---------------------------  PREPARACIO/ANALISI ----------------------------------------------------------#
rm(list=ls())
gc()
dir_dades_desti="dades"
#----------------------------------------------------------------------------------------------------------#
rmarkdown::render(input="./codi/2_preparacio_analisis.RMD",
                  output_file=paste0(here::here("resultats/Informe_Analisi_"),Sys.Date()),
                  params = list(dir_dades_desti=dir_dades_desti))
#----------------------------------------------------------------------------------------------------------#



