#Resolução da lista 3 - Ayla Reis - Análise de dados
install.packages("tidyverse")

#Exercício 2
x <- 2
y <- 3
z <- x + y

print(z*09946998408)

#Exercício 3
head(mtcars)

#3.1
print(str(mtcars))

#3.2
dim(mtcars)

#3.3
print(mtcars[,3])

#3.4
print(mtcars[2,])

#3.5
print(mtcars[4,2])

#3.6
print(summary(mtcars))


#Exercício 4
install.packages("ffbase", dependencies = TRUE)
require(ffbase)
setwd("/Users/reis/Desktop/AYLA/UFPE/analise_de_dados_pos_graduacao_davi_moreira/AD_lista_3/")
turmas_ne <- read.csv2.ffdf(file = "TURMAS.csv", sep = "|")
setwd("/Users/reis/Desktop/AYLA/UFPE/analise_de_dados_pos_graduacao_davi_moreira/AD_lista_3")
save.ffdf(turmas_ne, dir = "/Users/reis/Desktop/AYLA/UFPE/analise_de_dados_pos_graduacao_davi_moreira/AD_lista_3/turmas_ne", overwrite = TRUE)
rm(list = ls())

setwd ("/Users/reis/Desktop/AYLA/UFPE/analise_de_dados_pos_graduacao_davi_moreira/AD_lista_3/")
load.ffdf(dir="turmas_ne/")
turmas_pe <- subset(turmas_ne, CO_UF == 26)
dim(turmas_pe)

turmas_pe <- as.data.frame(turmas_ne)
setwd("/Users/reis/Desktop/AYLA/UFPE/analise_de_dados_pos_graduacao_davi_moreira/AD_lista_3/")
save (turmas_pe, file = "turmas_pe_censo_escolar_2016.RData")
