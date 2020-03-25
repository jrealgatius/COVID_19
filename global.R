
# Actualitzar excel amb dades de Ministeri 


baixar_dades_ministeri<-function(num_actualitzacio="54") {

  # num_actualitzacio="55"

  location <- paste0("https://www.mscbs.gob.es/profesionales/saludPublica/ccayes/alertasActual/nCov-China/documentos/Actualizacion_",num_actualitzacio,"_COVID-19.pdf")
  dades_pdf<-pdf_text(location)
  
  # Extreure taula
  dades<- 
    dades_pdf[1] %>% 
    read_lines(skip = 20,n_max = 19) %>% 
    paste(collapse = '\n') %>%    # recombine
    read_fwf(fwf_empty(.))     # read as fixed-width file
    

  # Elimino punt y canvi coma per punt transformo a numeric
  dades<-dades %>% 
    mutate_at(-1,~stringr::str_replace_all(.,"\\.","")) %>% 
    mutate_at(-1,~stringr::str_replace_all(.,",","\\.")) %>% 
    mutate_at(-1, parse_number)

  # Noms de variables
  colnames(dades)<-c("CCAA", "conf", "IA14d", "Hospitalizados","UCI","Fallecidos","Curados") 

  # Estandaritzar noms de ccaa 
  dades<-dades %>% mutate(CCAA=case_when(CCAA=="Castilla La Mancha"~"CLM",
                                          CCAA=="Castilla y León"~"CyL",
                                         T~CCAA))
  # Extreure data 
  data_informe<-dades_pdf[1] %>% 
    read_lines(skip = 6,n_max = 1) %>% 
    stringr::str_trim() %>% stringr::str_sub(1,10) %>% 
    stringr::str_remove_all("\\.") %>% 
    lubridate::dmy()

  # Formatar dades noves a afegir 
  dades %>% 
    transmute(date=data_informe-1,ccaa=CCAA,cases=conf,uci=UCI,deaths=Fallecidos, actualitzacioWEB=T) 
  
  }

