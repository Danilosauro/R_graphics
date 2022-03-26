#gráfico de setores / pizza 

dados<-read.csv(file="C:/Users/decer/OneDrive/Área de Trabalho/ARQUIVOS_DANILO/CURSOS/dadosreais.csv", sep=';', head=T, dec=',')

str(dados)

summary(dados$Sexo)

sexo <-factor(dados$Sexo)

summary(sexo)

pie(summary(sexo)) 

idades <- dados$Idade

idades <- as.factor(idades)
idades <- as.character.factor(idades)

jovens<-  idades < 30
jovens
jovens<-as.factor(jovens)

coroas <- idades >30 & idades < 60
coroas
coroas <-as.factor(coroas)

velhos <- idades <30
velhos
velhos <- as.factor(velhos)

numeric<-c(jovens,coroas,velhos)

pie(summary(numeric))  

