dados<-read.csv("C:/Users/decer/OneDrive/�rea de Trabalho/ARQUIVOS_DANILO/CURSOS/dadosreais.csv",sep=";",h=T,dec=",")
names(dados) #nomes das vari�veis
dim(dados)   #dimens�es, qtd de linhas e colunas
head(dados)  # tabela organizada em si 


#### CONSTRUINDO HISTOGRAMAS  ##### 


str(dados)  ## este comando mostra a estrutura dos dados, quais vari�veis s�o inteiras, strings...

hist(dados$Idade,main = "Idade dos Pacientes"
     ,col="#3cba54",xlab ="Idade (crescente)",ylab="Frequ�ncia",breaks=10)  


hist(dados$Creatinina.p�s..mg.dl. ,main="Creatinina p�s", xlab="dose ministrada", ylab="Frequ�ncia", col="#ffb247")


install.packages("RColorBrewer",dependencies = T)
library(RColorBrewer)  

?RColorBrewer

hist(dados$Idade,main = "Idade dos Pacientes"
     ,col=brewer.pal(8,"Dark2"),xlab ="Idade",ylab="Frequ�ncia",breaks=10) 

par(mfrow=c(2,2))  #painel de gr�ficos 

hist(dados$Idade,main = "Idade dos Pacientes"
     ,col="#3cba54",xlab ="Idade",ylab="Frequ�ncia",breaks=10) 

hist(dados$Idade,main = "Idade dos Pacientes"
     ,col=brewer.pal(8,"Dark2"),xlab ="Idade (crescente)",ylab="Frequ�ncia",breaks=10)  

hist(dados$Idade,main = "Idade dos Pacientes"
     ,col=brewer.pal(8,"Accent"),xlab ="Idade",ylab="Frequ�ncia",breaks=10)   


hist(dados$Idade,main = "Idade dos Pacientes"
     ,col=brewer.pal(9,"Set1"),xlab ="Idade",ylab="Frequ�ncia",breaks=10) 


# Histogramas interativos 

   
                           #Pacotes necess�rios
install.packages("plotly")
library(plotly)
library(ggplot2)
library(magrittr)

install.packages("httr")
library(httr)

#comando para gr�ficos interativos com linha de densidade

fit<-density(dados$Ur�ia.p�s...mg.dl.)

plot_ly(x=dados$Ur�ia.p�s...mg.dl., type= "histogram",name="histograma") %>% add_trace(x=fit$x, y=fit$y,type="scatter",mode="lines",fill="tozeroy",yaxis="y2", name="Densidade") %>% layout(yaxis2= list(overlaying="y",side="right"))
  








  

