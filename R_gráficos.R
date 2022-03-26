dados<-read.csv("C:/Users/decer/OneDrive/Área de Trabalho/ARQUIVOS_DANILO/CURSOS/dadosreais.csv",sep=";",h=T,dec=",")
names(dados) #nomes das variáveis
dim(dados)   #dimensões, qtd de linhas e colunas
head(dados)  # tabela organizada em si 


#### CONSTRUINDO HISTOGRAMAS  ##### 


str(dados)  ## este comando mostra a estrutura dos dados, quais variáveis são inteiras, strings...

hist(dados$Idade,main = "Idade dos Pacientes"
     ,col="#3cba54",xlab ="Idade (crescente)",ylab="Frequência",breaks=10)  


hist(dados$Creatinina.pós..mg.dl. ,main="Creatinina pós", xlab="dose ministrada", ylab="Frequência", col="#ffb247")


install.packages("RColorBrewer",dependencies = T)
library(RColorBrewer)  

?RColorBrewer

hist(dados$Idade,main = "Idade dos Pacientes"
     ,col=brewer.pal(8,"Dark2"),xlab ="Idade",ylab="Frequência",breaks=10) 

par(mfrow=c(2,2))  #painel de gráficos 

hist(dados$Idade,main = "Idade dos Pacientes"
     ,col="#3cba54",xlab ="Idade",ylab="Frequência",breaks=10) 

hist(dados$Idade,main = "Idade dos Pacientes"
     ,col=brewer.pal(8,"Dark2"),xlab ="Idade (crescente)",ylab="Frequência",breaks=10)  

hist(dados$Idade,main = "Idade dos Pacientes"
     ,col=brewer.pal(8,"Accent"),xlab ="Idade",ylab="Frequência",breaks=10)   


hist(dados$Idade,main = "Idade dos Pacientes"
     ,col=brewer.pal(9,"Set1"),xlab ="Idade",ylab="Frequência",breaks=10) 


# Histogramas interativos 

   
                           #Pacotes necessários
install.packages("plotly")
library(plotly)
library(ggplot2)
library(magrittr)

install.packages("httr")
library(httr)

#comando para gráficos interativos com linha de densidade

fit<-density(dados$Uréia.pós...mg.dl.)

plot_ly(x=dados$Uréia.pós...mg.dl., type= "histogram",name="histograma") %>% add_trace(x=fit$x, y=fit$y,type="scatter",mode="lines",fill="tozeroy",yaxis="y2", name="Densidade") %>% layout(yaxis2= list(overlaying="y",side="right"))
  








  

