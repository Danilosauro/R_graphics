data<-read.csv(file = "C:/Users/decer/OneDrive/Área de Trabalho/ARQUIVOS_DANILO/CURSOS/dadosreais.csv",sep=";",dec = ",")
names(data)


#categorizando uma variável numérica (dividindo a idade em categorias )

faixa_etaria<-cut(data$Idade,c(0,30,60,90),labels=c("jovens","adultos","idosos"))


# passando a nova variável para o conjunto de dados 
data[,47]<-faixa_etaria

names(data)

# nomeando a nova variável no conjunto de dados 
names(data)[47]<-"faixa_etaria"

names(data)

summary(faixa_etaria)

par(mfrow=c(2,2))
boxplot(data$Peso.pré..Kg..só.numeros~data$faixa_etaria,col=c(5,2,3), ylab= "peso",xlab=" faixa etária ", main="massa pré admissão")
boxplot(data$Peso.pós.em.Kg..só.numeros.~data$faixa_etaria,col=c(5,2,3),ylab= "peso",xlab=" faixa etária ", main="massa pós admissão")



plot()



#boxplot interativo 

distribuição <- data$Idade
plot_ly(y=~distribuição, type = "box", name="Idade", boxpoints= "all", jitter=0.1, pointpos =-1.1)


dados1 <- data[data$Sexo=="Feminino",] 
dados2 <- data[data$Sexo=="Masculino",]


dados_jovens <- data[data$faixa_etaria =='jovens',]
dados_experientes <- data[data$faixa_etaria =='adultos',] 
dados_idosos <- data[data$faixa_etaria =='idosos',] 


Idade <- dados1$Idade
plot_ly(y=~dados1$Idade,type = 'box', name='feminino') %>% add_trace(y=dados2$Idade, type= 'box', name= 'Masculino')


gas_carbonico_antes<- data$CO2.admissão..mMol.l.
gas_carbonico_depois<-data$CO2.pós..mMol.l.

plot_ly(y=~gas_carbonico_antes, type = 'box', name= 'CO2 antes') %>% add_trace(y=~gas_carbonico_depois, type = "box", name = "CO2 depois")


plot_ly(y=~dados_jovens$HCO3.pós..mEq.l. , type = 'box', name="jovens",  boxpoints= "all", jitter=0.1, pointpos =-1.1) %>%
        add_trace(y=~dados_experientes$HCO3.pós..mEq.l. , type='box', name="experientes", boxpoints= "all", jitter=0.1, pointpos =-1.1) %>%
        add_trace(y=~dados_idosos$HCO3.pós..mEq.l. , type="box", name="Idosos", boxpoints= "all", jitter=0.1, pointpos =-1.1) %>% 
  layout(title= list(text = "Concentração de HCO3 por faixa etária"), yaxis = list(title = list(text ='Faixa Etária')),plot_bgcolor='#e5ecf6')

plot_ly(y=~dados1$Sódio.pós..mEq.l. , type="box", name="feminino") %>% 
        add_trace(y=~dados2$Sódio.pós..mEq.l. , type = 'box', name= 'masculino')



plot(data$Idade, data$Cálcio.ionizado.admissão..mMol.l.)


plot_ly(data=data,x= ~data$Potássio.pós..mEq.l.,y= ~data$Glicemia.admissão..mg.dl.,type = "scatter",marker = list(size = 10,color = "red",line = list(color = "black",width = 3)))%>%
  layout(title="Relação Potássio (pós) x Glicemia (pré)") 

plot_ly(data,x= ~data$Uréia.admissão...mg.dl.) %>%
  add_trace(y= ~data$PCO2.admissão..mmHg.,name="PCO2 Admissão")%>% 
  add_trace(y= ~data$CO2.admissão..mMol.l.,name="C02 Adimissão")  









