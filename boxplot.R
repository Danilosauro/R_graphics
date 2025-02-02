data<-read.csv(file = "C:/Users/decer/OneDrive/�rea de Trabalho/ARQUIVOS_DANILO/CURSOS/dadosreais.csv",sep=";",dec = ",")
names(data)


#categorizando uma vari�vel num�rica (dividindo a idade em categorias )

faixa_etaria<-cut(data$Idade,c(0,30,60,90),labels=c("jovens","adultos","idosos"))


# passando a nova vari�vel para o conjunto de dados 
data[,47]<-faixa_etaria

names(data)

# nomeando a nova vari�vel no conjunto de dados 
names(data)[47]<-"faixa_etaria"

names(data)

summary(faixa_etaria)

par(mfrow=c(2,2))
boxplot(data$Peso.pr�..Kg..s�.numeros~data$faixa_etaria,col=c(5,2,3), ylab= "peso",xlab=" faixa et�ria ", main="massa pr� admiss�o")
boxplot(data$Peso.p�s.em.Kg..s�.numeros.~data$faixa_etaria,col=c(5,2,3),ylab= "peso",xlab=" faixa et�ria ", main="massa p�s admiss�o")



plot()



#boxplot interativo 

distribui��o <- data$Idade
plot_ly(y=~distribui��o, type = "box", name="Idade", boxpoints= "all", jitter=0.1, pointpos =-1.1)


dados1 <- data[data$Sexo=="Feminino",] 
dados2 <- data[data$Sexo=="Masculino",]


dados_jovens <- data[data$faixa_etaria =='jovens',]
dados_experientes <- data[data$faixa_etaria =='adultos',] 
dados_idosos <- data[data$faixa_etaria =='idosos',] 


Idade <- dados1$Idade
plot_ly(y=~dados1$Idade,type = 'box', name='feminino') %>% add_trace(y=dados2$Idade, type= 'box', name= 'Masculino')


gas_carbonico_antes<- data$CO2.admiss�o..mMol.l.
gas_carbonico_depois<-data$CO2.p�s..mMol.l.

plot_ly(y=~gas_carbonico_antes, type = 'box', name= 'CO2 antes') %>% add_trace(y=~gas_carbonico_depois, type = "box", name = "CO2 depois")


plot_ly(y=~dados_jovens$HCO3.p�s..mEq.l. , type = 'box', name="jovens",  boxpoints= "all", jitter=0.1, pointpos =-1.1) %>%
        add_trace(y=~dados_experientes$HCO3.p�s..mEq.l. , type='box', name="experientes", boxpoints= "all", jitter=0.1, pointpos =-1.1) %>%
        add_trace(y=~dados_idosos$HCO3.p�s..mEq.l. , type="box", name="Idosos", boxpoints= "all", jitter=0.1, pointpos =-1.1) %>% 
  layout(title= list(text = "Concentra��o de HCO3 por faixa et�ria"), yaxis = list(title = list(text ='Faixa Et�ria')),plot_bgcolor='#e5ecf6')

plot_ly(y=~dados1$S�dio.p�s..mEq.l. , type="box", name="feminino") %>% 
        add_trace(y=~dados2$S�dio.p�s..mEq.l. , type = 'box', name= 'masculino')



plot(data$Idade, data$C�lcio.ionizado.admiss�o..mMol.l.)


plot_ly(data=data,x= ~data$Pot�ssio.p�s..mEq.l.,y= ~data$Glicemia.admiss�o..mg.dl.,type = "scatter",marker = list(size = 10,color = "red",line = list(color = "black",width = 3)))%>%
  layout(title="Rela��o Pot�ssio (p�s) x Glicemia (pr�)") 

plot_ly(data,x= ~data$Ur�ia.admiss�o...mg.dl.) %>%
  add_trace(y= ~data$PCO2.admiss�o..mmHg.,name="PCO2 Admiss�o")%>% 
  add_trace(y= ~data$CO2.admiss�o..mMol.l.,name="C02 Adimiss�o")  









