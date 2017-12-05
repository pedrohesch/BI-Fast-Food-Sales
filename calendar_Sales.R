# Visualizando Séries Temporais com Calendar Heat Maps


## UTILIZANDO CALENDARHEAT

# Importa a biblioteca calendarHeat.R
source("calendarHeat.R")

# Dados
vendas <- read.csv("Relatorio_vendas_2014_2017.csv")
head(vendas)
head(vendas$Data)
str(vendas)

vendas$Data <- as.Date(vendas$Data)
head(vendas$Data)
class(vendas$Data)

# Pacote
install.packages("chron")
library(chron)

# Cria o calendário
calendarHeat(dates = vendas$Data, values = vendas$Venda, varname = "Vendas Diárias")

## UTILIZANDO CALENDARPLOT

# Usando o openair
install.packages("openair")
library(openair)

vendas17 <- read.csv("VendasDia.csv")
vendas17$date = vendas17$Data
head(vendas17)
str(vendas17)


# CalendarPlot
calendarPlot(vendas17, pollutant = "Total", year = 2017 , main = "Vendas Diárias em 2017")
