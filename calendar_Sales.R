# Viewing Time Series with Calendar Heat Maps


## USING CALENDARHEAT

# Importing library calendarHeat.R
source("calendarHeat.R")

# Data
vendas <- read.csv("Relatorio_vendas_2014_2017.csv")
head(vendas)
head(vendas$Data)
str(vendas)

vendas$Data <- as.Date(vendas$Data)
head(vendas$Data)
class(vendas$Data)

# Package
install.packages("chron")
library(chron)

# Creating calendar
calendarHeat(dates = vendas$Data, values = vendas$Venda, varname = "Vendas Diárias")

## USING CALENDARPLOT

# Using Openair
install.packages("openair")
library(openair)

vendas17 <- read.csv("VendasDia.csv")
vendas17$date = vendas17$Data
head(vendas17)
str(vendas17)


# CalendarPlot
calendarPlot(vendas17, pollutant = "Total", year = 2017 , main = "Vendas Diárias em 2017")
