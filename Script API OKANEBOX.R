# librarys

library(tidyverse)
library(jsonlite)


getfund <- function(cnpj, first_date, last_date){
  
URL <- glue::glue("https://www.okanebox.com.br/api/fundoinvestimento/hist/{cnpj}/{first_date}/{last_date}/")

outputdata <- URL %>% 
  jsonlite::fromJSON()

return(outputdata)

}

# Example ----------------------------

# Date: yyyymmdd
# cnpj: no special character
getfund(cnpj = "22232927000190", "20190101", "20200101")


