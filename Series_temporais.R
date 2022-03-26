#Séries temporais 

install.packages('xlsx', dependencies= T) 
library(xlsx)  
install.packages(plotly)

petro4<-read.csv(file="C:/Users/decer/OneDrive/Área de Trabalho/ARQUIVOS_DANILO/CURSOS/petro4.csv", sep=';', h =T, dec= ',')

names(petro4)[6]<- c("variacao.perc")
str(petro4) 

variacao_percentual <- petro4$variacao.perc

tempo<-petro4$Data.Hora
tempo<-as.Date(tempo,format="%d/%m/%Y")
str(tempo)
tempo

#separando o tempo em variveis temporais 
maio      <-tempo[1:15]
junho     <-tempo[16:36]
julho     <-tempo[37:57]
agosto    <-tempo[58:80]
setembro  <-tempo[81:100]
outubro   <-tempo[101:121]
novembro  <-tempo[122:128]


#Substindo a data pelo mes 

petro4$Data.Hora[1:15]<-"maio"
petro4$Data.Hora[16:36]<-"junho"
petro4$Data.Hora[37:57]<-"Julho"
petro4$Data.Hora[58:80]<-"Agosto"
petro4$Data.Hora[81:100]<-"Setembro"
petro4$Data.Hora[101:121]<-"Outubro"
petro4$Data.Hora[122:128]<-"Novembro"


#plotando a serie temporal

# o próprio R já agrupa os valores como datas de um mesmo mes, logo a  melhora maneira de
# plotar o grafico e utilizar o comando as.Date para transformar o tempo em uma datas. 
# sendo assim,os passos de substituir os valores por nomes dos meses foram desnecessarios.

plot_ly(data=petro4, y=~ petro4$Cotação[116:215],type='scatter', mode='lines') 




