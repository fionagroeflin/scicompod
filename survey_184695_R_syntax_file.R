
library(tidyverse)

library(car)




data <- read.csv(file = "~/Documents/GitHub/scicompod/survey_184695_R_data_file.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE, fileEncoding="UTF-8-BOM")

#~/Documents/GitHub/scicompod/survey_184695_R_data_file.csv


# LimeSurvey Field type: F
data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"

# LimeSurvey Field type: DATETIME23.2
data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "submitdate"
names(data)[2] <- "submitdate"

# LimeSurvey Field type: F
data[, 3] <- as.numeric(data[, 3])
attributes(data)$variable.labels[3] <- "lastpage"
names(data)[3] <- "lastpage"

# LimeSurvey Field type: A
data[, 4] <- as.character(data[, 4])
attributes(data)$variable.labels[4] <- "startlanguage"
names(data)[4] <- "startlanguage"

# LimeSurvey Field type: A
data[, 5] <- as.character(data[, 5])
attributes(data)$variable.labels[5] <- "seed"
names(data)[5] <- "seed"

# LimeSurvey Field type: A
data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "Wie oft hören Sie Wissenschaftspodcasts?  Unter \"Wissenschaftspodcasts\" versteht man jegliche Podcasts, die wissenschaftliche Themen inhaltlich behandeln. Das können zum Beispiel Podcasts über Astrologie, Virologie oder auch Psychologie sein."
data[, 6] <- factor(data[, 6], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07","AO08"),labels=c("several times a day", "daily", "2-5 times a week", "once a week", "2-3 times a month", "once a month", "less than once a month", "never"))
names(data)[6] <- "frequency"



# LimeSurvey Field type: F
data[, 7] <- as.numeric(data[, 7])
attributes(data)$variable.labels[7] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin anerkannter Experte auf seinem / ihrem Gebiet ist?     Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig"
names(data)[7] <- "expert"

# LimeSurvey Field type: F
data[, 8] <- as.numeric(data[, 8])
attributes(data)$variable.labels[8] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin über einen packenden Gesprächsstil verfügt?     Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig"
names(data)[8] <- "style"

# LimeSurvey Field type: F
data[, 9] <- as.numeric(data[, 9])
attributes(data)$variable.labels[9] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin leidenschaftlich seiner / ihrer Tätigkeit beim Podcast nachgeht?     Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig"
names(data)[9] <- "passionate"

# LimeSurvey Field type: F
data[, 10] <- as.numeric(data[, 10])
attributes(data)$variable.labels[10] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin transparent darlegt, welchen Organisationen er / sie angehört und wer den Podcast und die Forschung unterstützt?     Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig"
names(data)[10] <- "affiliations"

# LimeSurvey Field type: F
data[, 11] <- as.numeric(data[, 11])
attributes(data)$variable.labels[11] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin persönliche Informationen über sich mit den Zuhörenden teilt?        Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig   "
names(data)[11] <- "personal"

# LimeSurvey Field type: F
data[, 12] <- as.numeric(data[, 12])
attributes(data)$variable.labels[12] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin transparent darlegt, was seine / ihre persönlichen Absichten und Überzeugungen sind?         Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig"
names(data)[12] <- "intentions"

# LimeSurvey Field type: F
data[, 13] <- as.numeric(data[, 13])
attributes(data)$variable.labels[13] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin neue, aktuelle Erkenntnisse diskutiert?        Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig"
names(data)[13] <- "facts"

# LimeSurvey Field type: F
data[, 14] <- as.numeric(data[, 14])
attributes(data)$variable.labels[14] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin wissenschaftliche Methoden ausführlich erklärt?        Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig"
names(data)[14] <- "methods"

# LimeSurvey Field type: F
data[, 15] <- as.numeric(data[, 15])
attributes(data)$variable.labels[15] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin die Qualität von präsentierten Studien diskutiert?     Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig"
names(data)[15] <- "quality"

# LimeSurvey Field type: F
data[, 16] <- as.numeric(data[, 16])
attributes(data)$variable.labels[16] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin die Quellen der besprochenen Studien angibt?        Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig"
names(data)[16] <- "sources"

# LimeSurvey Field type: F
data[, 17] <- as.numeric(data[, 17])
attributes(data)$variable.labels[17] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin verschiedene Sichtweisen in Betracht zieht?     Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig"
names(data)[17] <- "balance"

# LimeSurvey Field type: F
data[, 18] <- as.numeric(data[, 18])
attributes(data)$variable.labels[18] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin sagt, was man aufgrund der aktuellen Forschungslage noch nicht weiss, also was zur jetzigen Zeit ungewiss ist?        Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig"
names(data)[18] <- "uncertainty"

# LimeSurvey Field type: F
data[, 19] <- as.numeric(data[, 19])
attributes(data)$variable.labels[19] <- "Wie sehr vertrauen Sie allgemein der Kommunikation von Podcastern und Podcasterinnen im Rahmen eines Wissenschaftspodcasts?        Bitte beachten Sie:   1 = überhaupt nicht   5 = extrem"
names(data)[19] <- "trust"

# LimeSurvey Field type: A
data[, 20] <- as.character(data[, 20])
attributes(data)$variable.labels[20] <- "Bitte geben Sie Ihr Geschlecht an:"
data[, 20] <- factor(data[, 20], levels=c("AO01","AO02","AO03"),labels=c("male", "female", "other"))
names(data)[20] <- "gender"

# LimeSurvey Field type: A
data[, 21] <- as.character(data[, 21])
attributes(data)$variable.labels[21] <- "Wie alt sind Sie?"
names(data)[21] <- "age"

# LimeSurvey Field type: A
data[, 22] <- as.character(data[, 22])
attributes(data)$variable.labels[22] <- "Was ist zur jetztigen Zeit Ihr höchster Schulabschluss?"
data[, 22] <- factor(data[, 22], levels=c("AO01","AO02","AO06","AO03","AO04","AO05","AO08","AO07"),labels=c("no graduation", "compulsory education", "vocational diploma or equivalent qualification", "baccalaureate", "bachelor’s degree", "master’s degree", "doctoral degree","other"))
names(data)[22] <- "education"


# LimeSurvey Field type: A
data[, 23] <- as.character(data[, 23])
attributes(data)$variable.labels[23] <- "Können wir Ihre Antworten für die Studie verwenden?  Falls Sie \'Nein\' angekreuzt haben, haben Sie zusätzlich die Möglichkeit, den Grund zu nennen."
data[, 23] <- factor(data[, 23], levels=c("AO01","AO02"),labels=c("Ja, meine Daten können normal verwendet werden.", "Nein, meine Daten können nicht verwendet werden."))
names(data)[23] <- "verwendbar"

# LimeSurvey Field type: A
data[, 24] <- as.character(data[, 24])
attributes(data)$variable.labels[24] <- "[Kommentar] Können wir Ihre Antworten für die Studie verwenden?  Falls Sie \'Nein\' angekreuzt haben, haben Sie zusätzlich die Möglichkeit, den Grund zu nennen."
names(data)[24] <- "G03Q1_comment"

str(data)

levels(data$gender)
table(data$gender)
labels(data$age)

levels(data$expert)
class(data$id)



###rauslöschen: 1. fehlende Werte reihenweise; 2. daten nicht verwendbar angegben; 3. jene die nie Podcasts hören
sum(is.na(data))

#betrifft alle vectors, sonst select oder filter für vorselektierung wie zb nur männer
# ! = ausser

#1. NA als row alles weg, ausser bei offener Frage;
#2. alle Teilnehmer raus, die bei "verwendbar" Nein abgegeben haben
data_na <- data %>%  
  select(!G03Q1_comment) %>% 
  drop_na()
data_na2 <- filter(data_na, verwendbar != "Nein, meine Daten können nicht verwendet werden.")

#3. "nie" raus
data_na2 <- filter(data_na, frequency != "never")

table(data_na2$frequency)
str(data_na2)


###participant information: age, gender, education, frequency

#1. age: mean, sd & range
#alter ist character --> umwandeln

data_na2 %>% 
  mutate(age=as.numeric(age)) %>%
  summarise(mean = mean(age), sd=sd(age), range=range(age),
            n = n())
data_na2$age2 <- factor(data_na2$age, ordered=TRUE, 
                        levels=c(1:100)
)

#2. gender
table(data_na2$gender)


#male, female, or other

#3. education
#education wäre eig auch ordinal, also ändern
#option/level "andere" rauslöschen?
table(data_na2$education)
levels(data_na2$education)
data_na2$education2 <- factor(data_na2$education, ordered=TRUE, 
                              levels=c("no graduation", "compulsory education", "vocational diploma or equivalent qualification", "baccalaureate", "bachelor’s degree", "master’s degree", "doctoral degree","other"))


prop.table(table(data_na2$education2))*100
prop_education2 <- prop.table(table(data_na2$education2))*100


#4. frequency muss auch ordinal skaliert werden

data_na2$frequency2 <- factor(data_na2$frequency, ordered=TRUE, 
                              levels=c("several times a day", "daily", "2-5 times a week", "once a week", "2-3 times a month", "once a month", "less than once a month", "never")
)


str(data_na2)

data_na2$frequency2_recoded <- recode(var=data_na2$frequency2, 
                                      recodes="1=8; 2=7; 3=6; 4=5; 5=4; 6=3; 7=2; 8=1")


data_na2$frequency2_recoded <- factor(data_na2$frequency2_recoded, ordered=TRUE, 
                                      levels=c("never","less than once a month", "once a month","2-3 times a month","once a week","2-5 times a week","daily", "several times a day")
)


table(data_na2$frequency2_recoded)
table(data_na2$frequency2) #überprüfen

#frequency darstellen

#Faktor <- "frequency2_recoded" # Name der Gruppenvariable eingeben
#library(ggplot2); data_na2 <- na.omit(data_na2[,Faktor, drop=FALSE])
#ggplot(data_na2, aes_string(x=Faktor)) + geom_bar(colour="black", fill="ivory4") +
# theme_bw() + ylab("frequency")

#erst jetzt diese ausschliessen:

data_na2 <- filter(data_na, frequency_recoded != "never")

##id nominalskalieren anstatt numerisch
data_na2$ID <- as.character(data_na2$id)



#check
sum(is.na(data_na2))
str(data_na2)


is.data.frame(data_na2)
sapply(sapply(data_na2$age, unique), sort, na.last=TRUE)
summary(data_na2)

###weiteres für später
#barplot(prop_education,ylab= “Häufigkeit in Prozent“ ,ylim-c(0,100) 
# = Bildliche Darstellung des oben genannten Befehls (also hier Geschlecht)

###deskriptive Statistik

#frequency von podcast hören angeben, auch graphisch

table(data_na2$frequency2_recoded) #gibt die absoluten Häufigkeiten der einzelnen Ausprägungen an
table(data_na2$frequency2_recoded, data_na2$gender)

prop.table(table(data_na2$frequency2_recoded))*100 #in Prozent
prop.table(table(data_na2$frequency2_recoded, data_na2$gender))*100 #sortiert nach geschlecht

prop_frequency <- prop.table(table(data_na2$frequency2_recoded, data_na2$gender))*100

gglot
hist(prop_frequency)



## M & SD für jede variable
# figure 1

mean(data_na2$affiliations)
sd(data_na2$affiliations)

mean(data_na2$expert)
sd(data_na2$expert)

mean(data_na2$style)
sd(data_na2$style)

mean(data_na2$passionate)
sd(data_na2$passionate)

mean(data_na2$personal)
sd(data_na2$personal)

# figure 2
mean(data_na2$intentions)
sd(data_na2$intentions)

mean(data_na2$facts)
sd(data_na2$facts)

mean(data_na2$methods)
sd(data_na2$methods)

mean(data_na2$quality)
sd(data_na2$quality)

mean(data_na2$sources)
sd(data_na2$sources)

mean(data_na2$balance)
sd(data_na2$balance)


mean(data_na2$uncertainty)
sd(data_na2$uncertainty)

mean(data_na2$trust)
sd(data_na2$trust)

# Plotting ---------------------------------------------------------------------

###mit ggplot2 besser wenn long format; meins ist wide -> umwandeln:
##zuerst nur mit den 5 variablen aus podcast-literatur

podcast_variables <- data_na2 %>% 
  select( expert, style, passionate, affiliations, personal)


podcast.long <- pivot_longer(podcast_variables, 1:5, names_to = "podcast_item", values_to = "value_likert")
podcast.perc <- podcast.long %>% group_by(value_likert,podcast_item ) %>% tally()
podcast.perc$percent <- podcast.perc$n/114

ggplot(podcast.perc, aes(x=value_likert, y=percent, fill= podcast_item)) +
  geom_bar(position="dodge", stat="identity") + theme_minimal() +
  facet_grid(~ podcast_item, labeller = label_wrap_gen(width=40)) + scale_fill_manual(values=c( "#E0EEEE","#D1EEEE", "#B4CDCD", "#BDBDBD","#878787")) + 
  theme(legend.position="none") + labs(x="preference rating", y="percent responses")

#Adapt size of legends 
last_plot() + theme(axis.title.x = element_text(size =18))
last_plot() + theme(axis.title.y = element_text(size = 18, angle = 90))
last_plot() + theme(axis.text.x = element_text(size = 15))
last_plot() + theme(axis.text.y = element_text(size = 15))
last_plot() + theme(legend.text = element_text(size = 15))
last_plot() + theme(strip.text.x=element_text(size = 15), strip.text.y=element_text(size = 15, angle = -90))


##mit restlichen variablen das selbe machen
science_variables <- data_na2 %>% 
  select( intentions, facts, methods, quality, sources, balance)

science.long <- pivot_longer(science_variables, 1:6, names_to = "science_item", values_to = "value_likert")
science.perc <- science.long %>% group_by(value_likert,science_item ) %>% tally()
science.perc$percent <- science.perc$n/114

ggplot(science.perc, aes(x=value_likert, y=percent, fill= science_item)) +
  geom_bar(position="dodge", stat="identity") + theme_minimal() +
  facet_grid(~ science_item, labeller = label_wrap_gen(width=40)) + scale_fill_manual(values=c("#E0EEEE","#E0EEE0", "#C1CDC1","#838B83", "#636363", "#383838")) + 
  theme(legend.position="none") + labs(x="preference rating", y="percent responses")

#Adapt size of legends 
last_plot() + theme(axis.title.x = element_text(size =17))
last_plot() + theme(axis.title.y = element_text(size = 17, angle = 90))
last_plot() + theme(axis.text.x = element_text(size = 14))
last_plot() + theme(axis.text.y = element_text(size = 14))
last_plot() + theme(legend.text = element_text(size = 14))
last_plot() + theme(strip.text.x=element_text(size = 14), strip.text.y=element_text(size = 14, angle = -90))


#uncertainty separat

uncertainty_variables <- data_na2 %>% 
  select(uncertainty)

uncertainty.long <- pivot_longer(uncertainty_variables, 1:1, names_to = "uncertainty_item", values_to = "value_likert")
uncertainty.perc <- uncertainty.long %>% group_by(value_likert, uncertainty_item ) %>% tally()
uncertainty.perc$percent <- uncertainty.perc$n/114

ggplot(uncertainty.perc, aes(x=value_likert, y=percent, fill= uncertainty_item)) +
  geom_bar(position="dodge", stat="identity") + theme_minimal() +
  facet_grid(~ uncertainty_item, labeller = label_wrap_gen(width=40)) + scale_fill_manual(values=c("#483D8B")) + 
  theme(legend.position="none") + labs(x="preference rating", y="percent responses")



#Adapt size of legends 
last_plot() + theme(axis.title.x = element_text(size =18))
last_plot() + theme(axis.title.y = element_text(size = 18, angle = 90))
last_plot() + theme(axis.text.x = element_text(size = 15))
last_plot() + theme(axis.text.y = element_text(size = 15))
last_plot() + theme(legend.text = element_text(size = 15))
last_plot() + theme(strip.text.x=element_text(size = 15), strip.text.y=element_text(size = 15, angle = -90))



#trust separat
trust_variables <- data_na2 %>% 
  select(trust)

trust.long <- pivot_longer(trust_variables, 1:1, names_to = "trust_item", values_to = "value_likert")
trust.perc <- trust.long %>% group_by(value_likert, trust_item ) %>% tally()
trust.perc$percent <- trust.perc$n/114

ggplot(trust.perc, aes(x=value_likert, y=percent, fill= trust_item)) +
  geom_bar(position="dodge", stat="identity") + theme_minimal() +
  facet_grid(~ trust_item, labeller = label_wrap_gen(width=40)) + scale_fill_manual(values=c("#CD5B45")) + 
  theme(legend.position="none") + labs(x="preference rating", y="percent responses")



#Adapt size of legends 
last_plot() + theme(axis.title.x = element_text(size =18))
last_plot() + theme(axis.title.y = element_text(size = 18, angle = 90))
last_plot() + theme(axis.text.x = element_text(size = 15))
last_plot() + theme(axis.text.y = element_text(size = 15))
last_plot() + theme(legend.text = element_text(size = 15))
last_plot() + theme(strip.text.x=element_text(size = 15), strip.text.y=element_text(size = 15, angle = -90))


#trust & uncertainty zusammen

trustuncertainty_variables <- data_na2 %>% 
  select(uncertainty, trust)

trustuncertainty_variables<-trustuncertainty_variables %>%
  rename("1: uncertainty" = uncertainty, 
         "2: trust" = trust)

trustuncertainty.long <- pivot_longer(trustuncertainty_variables, 1:2, names_to = "trustuncertainty_item", values_to = "value_likert")
trustuncertainty.perc <- trustuncertainty.long %>% group_by(value_likert, trustuncertainty_item ) %>% tally()
trustuncertainty.perc$percent <- trustuncertainty.perc$n/114

ggplot(trustuncertainty.perc, aes(x=value_likert, y=percent, fill= trustuncertainty_item)) +
  geom_bar(position="dodge", stat="identity") + theme_minimal() +
  facet_grid(~ trustuncertainty_item, labeller = label_wrap_gen(width=40)) + scale_fill_manual(values=c("ivory4", "#CD5B45")) + 
  theme(legend.position="none") + labs(x="ratings", y="percent responses")

#Adapt size of legends 
last_plot() + theme(axis.title.x = element_text(size =18))
last_plot() + theme(axis.title.y = element_text(size = 18, angle = 90))
last_plot() + theme(axis.text.x = element_text(size = 15))
last_plot() + theme(axis.text.y = element_text(size = 15))
last_plot() + theme(legend.text = element_text(size = 15))
last_plot() + theme(strip.text.x=element_text(size = 15), strip.text.y=element_text(size = 15, angle = -90))


# Assumptions for linear regression ----------------------------------------------

#install.packages("jtools")
library(jtools)
#install.packages("olsrr")
library(olsrr)
#installed.packages("moments")
library(moments)
#install.packages("lmtest")
library(lmtest)
#install.packages("car")
library(car)
library(carData)



## Question 1: vergleicht zwei Modelle: model 1 und model 2
# model 1: podcast-prädiktorvariablen (5stk)
# model 2: alle prädiktorvariablen inkl. uncertainty (12stk)

model1 <- lm(trust ~ expert + style + passionate + affiliations + personal, data=data_na2)
summary(model1)

# F(5,108)=3.174; p=0.01032

model2 <- lm(trust ~ expert + style + passionate + affiliations + personal + intentions + facts + methods + quality + sources + balance + uncertainty, data=data_na2)
summary(model2)
# F(12,101)=2.223; p-value=0.01574

## Question 2: vergleicht die Modelle 3 und 2, um den erklärten Anteil von uncertainty zu untersuchen
# model 3: alle prädiktorvariablen ohne uncertainty

model3 <- lm(trust ~ expert + style + passionate + affiliations + personal + intentions + facts + methods + quality + sources + balance, data=data_na2)
summary(model3)
# F(11,101)=1.85; p=0.05499

model4 <- lm(trust ~ intentions + facts + methods + quality + sources + balance, data=data_na2)
summary(model4)




## Voruassetzungen überprüfen

konfidenz<-0.95
nachkomma <- 3

plot(model1)
plot(model2)
plot(model3)

# 1. normalverteilte Fehlerterme:

# grafic check
hist(rstandard(model1))
hist(residuals(model1))
ols_plot_resid_hist(model1)
ols_plot_resid_qq(model1)

ols_plot_resid_hist(model2)
ols_plot_resid_qq(model2)

ols_plot_resid_hist(model3)
ols_plot_resid_qq(model3)

# Shapiro-Wilk-Test: Ziel , die Nullhypothese nicht verwerfen zu können 
# Hierfür ist es notwendig, dass der Signifikanzwert (sog. p-Wert) über 0,05 liegt
shapiro.test(rstandard(model1)) 
#ist signifikant: p= 0.009 --> nicht gut..?
shapiro.test(rstandard(model2)) 
#nicht signifikant: p= 0.125
shapiro.test(rstandard(model3)) 
#nicht signifikant: p= 0.072

# --> Modell 1 hat nicht normalverteilte Residuen, der rest schon

#if distribution is normal; skew = 0 and kurtosis = 3
skewness(model1$residuals)
#model 1: - 0.214
kurtosis(model1$residuals)
#model 1: 2.639

# 2. Homoskedastizität:

#graphic check
plot(model1, 1)
#Linie ist krumm, nicht gut
plot(model2, 1)
#Linie krumm, nicht gut
plot(model3, 1)
#Linie weniger krumm  aber immernoch

#Breusch-Pagan-Test
#Ein geringer p-Wert verwirft die Nullhypothese und nimmt die Alternativhypothese von Heteroskedastizität an
# -> p-Wert über 0.05 nötig
bptest(model1)
# nicht sign., p= 0.184
bptest(model2)
# nicht sign., p= 0.234
bptest(model3)
# nicht sign., p= 0.325

# --> alle 3 Modelle erfüllen die Homoskedastizität 

# 3. keine Autokorrelation:

#Durbin-Watson-Test
durbinWatsonTest(model1)
# nicht sign., p= 0.278
durbinWatsonTest(model2)
# nicht sign., p= 0.316
durbinWatsonTest(model3)
# nicht sign., p= 0.328

# --> alle 3 Modelle besitzen keine autokorrelierten Residuen

# 4. keine Multikollinearität:
#mit Korrelationsmatrix
#Laut Field, A (2018), S. 402 sind Korrelationswerte über 0,8 ein Anzeichen für Multikollinearität.
#Sollten also zwei unabhängige Variablen mit 0,8 bzw. -0,8 oder mehr miteinander korrelieren,
#sollte man sich Gedanken darüber machen, eine der beiden aus der Analyse auszuschließen. 

subset2_cor <- subset(data_na2, select = c(expert, style, passionate, affiliations, personal, intentions, facts, methods, quality, sources, balance, uncertainty))
korr_tab2 <- cor(subset2_cor, method = "pearson")

#--> keine Korrelation von +/- 0.8

###Fazit: alle Voraussetzungen für alle 3 Modelle erfüllt AUSSER normalverteite Residuen bei model1!


# Modellvergleiche rechnen----------------------------------------------------
anova(model1, model2)

#p=0.1848 --> 

anova(model3, model2)

# Bayesian model averaging; PIP -------------------------------------------------


library(BAS)

model2BAS <- bas.lm(trust ~ expert + style + passionate + affiliations + personal + intentions + facts + methods + quality + sources + balance + uncertainty, data=data_na2,
                    prior="ZS-null", modelprior=uniform(), method = "MCMC")


diagnostics(model2BAS, type="pip", col = "blue", pch = 16, cex = 1.5)
diagnostics(model2BAS, type = c("pip", "model"))

library(BMA)
library(survival)

# RUI's CODE

mydata<-data %>% 
  select(trust,expert,style,passionate,affiliations,personal,intentions,facts,methods,quality,sources) %>% 
  filter(!is.na(trust)) %>% 
  tibble()

summary(lm(trust~expert+style+passionate+affiliations+personal+intentions+facts+methods+quality+sources,data=mydata))

model <- bic.glm (trust ~ expert+style+passionate+affiliations+personal+intentions+facts+methods+quality+sources,data=mydata, glm.family="gaussian")
summary(model,digits=2)
plot(model)
imageplot.bma(model)



blabla
