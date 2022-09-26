data <- read.csv("survey_184695_R_data_file.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE, fileEncoding="UTF-8-BOM")


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
data[, 6] <- factor(data[, 6], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07","AO08"),labels=c("mehrmals täglich", "täglich", "2-5-mal wöchentlich", "1-mal wöchentlich", "2-3-mal monatlich", "1-mal monatlich", "seltener als 1-mal monatlich", "nie"))
names(data)[6] <- "G02Q01"
# LimeSurvey Field type: F
data[, 7] <- as.numeric(data[, 7])
attributes(data)$variable.labels[7] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin anerkannter Experte auf seinem / ihrem Gebiet ist?     Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig"
names(data)[7] <- "G02Q02"
# LimeSurvey Field type: F
data[, 8] <- as.numeric(data[, 8])
attributes(data)$variable.labels[8] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin über einen packenden Gesprächsstil verfügt?     Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig"
names(data)[8] <- "G02Q19"
# LimeSurvey Field type: F
data[, 9] <- as.numeric(data[, 9])
attributes(data)$variable.labels[9] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin leidenschaftlich seiner / ihrer Tätigkeit beim Podcast nachgeht?     Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig"
names(data)[9] <- "G02Q03"
# LimeSurvey Field type: F
data[, 10] <- as.numeric(data[, 10])
attributes(data)$variable.labels[10] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin transparent darlegt, welchen Organisationen er / sie angehört und wer den Podcast und die Forschung unterstützt?     Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig"
names(data)[10] <- "G02Q04"
# LimeSurvey Field type: F
data[, 11] <- as.numeric(data[, 11])
attributes(data)$variable.labels[11] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin persönliche Informationen über sich mit den Zuhörenden teilt?        Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig   "
names(data)[11] <- "G02Q18"
# LimeSurvey Field type: F
data[, 12] <- as.numeric(data[, 12])
attributes(data)$variable.labels[12] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin transparent darlegt, was seine / ihre persönlichen Absichten und Überzeugungen sind?         Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig"
names(data)[12] <- "G02Q05"
# LimeSurvey Field type: F
data[, 13] <- as.numeric(data[, 13])
attributes(data)$variable.labels[13] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin neue, aktuelle Erkenntnisse diskutiert?        Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig"
names(data)[13] <- "G02Q06"
# LimeSurvey Field type: F
data[, 14] <- as.numeric(data[, 14])
attributes(data)$variable.labels[14] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin wissenschaftliche Methoden ausführlich erklärt?        Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig"
names(data)[14] <- "G02Q07"
# LimeSurvey Field type: F
data[, 15] <- as.numeric(data[, 15])
attributes(data)$variable.labels[15] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin die Qualität von präsentierten Studien diskutiert?     Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig"
names(data)[15] <- "G02Q08"
# LimeSurvey Field type: F
data[, 16] <- as.numeric(data[, 16])
attributes(data)$variable.labels[16] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin die Quellen der besprochenen Studien angibt?        Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig"
names(data)[16] <- "G02Q17"
# LimeSurvey Field type: F
data[, 17] <- as.numeric(data[, 17])
attributes(data)$variable.labels[17] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin verschiedene Sichtweisen in Betracht zieht?     Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig"
names(data)[17] <- "G02Q9"
# LimeSurvey Field type: F
data[, 18] <- as.numeric(data[, 18])
attributes(data)$variable.labels[18] <- "Wie wichtig ist es Ihnen, dass der Podcaster / die Podcasterin sagt, was man aufgrund der aktuellen Forschungslage noch nicht weiss, also was zur jetzigen Zeit ungewiss ist?        Bitte beachten Sie:   1 = überhaupt nicht wichtig  5 = extrem wichtig"
names(data)[18] <- "G02Q11"
# LimeSurvey Field type: F
data[, 19] <- as.numeric(data[, 19])
attributes(data)$variable.labels[19] <- "Wie sehr vertrauen Sie allgemein der Kommunikation von Podcastern und Podcasterinnen im Rahmen eines Wissenschaftspodcasts?        Bitte beachten Sie:   1 = überhaupt nicht   5 = extrem"
names(data)[19] <- "G02Q12"
# LimeSurvey Field type: A
data[, 20] <- as.character(data[, 20])
attributes(data)$variable.labels[20] <- "Bitte geben Sie Ihr Geschlecht an:"
data[, 20] <- factor(data[, 20], levels=c("AO01","AO02","AO03"),labels=c("männlich", "weiblich", "andere"))
names(data)[20] <- "G03Q15"
# LimeSurvey Field type: A
data[, 21] <- as.character(data[, 21])
attributes(data)$variable.labels[21] <- "Wie alt sind Sie?"
names(data)[21] <- "G03Q17"
# LimeSurvey Field type: A
data[, 22] <- as.character(data[, 22])
attributes(data)$variable.labels[22] <- "Was ist zur jetztigen Zeit Ihr höchster Schulabschluss?"
data[, 22] <- factor(data[, 22], levels=c("AO01","AO02","AO06","AO03","AO04","AO05","AO08","AO07"),labels=c("Kein Schlusabschluss", "Obligatorische Schule", "Fachmaturität oder gleichwertiger Abschluss", "Maturität oder gleichwertiger Abschluss", "Bachelor-Abschluss", "Master-Abschluss", "Doktorat", "Anderer"))
names(data)[22] <- "G03Q4"
# LimeSurvey Field type: A
data[, 23] <- as.character(data[, 23])
attributes(data)$variable.labels[23] <- "Können wir Ihre Antworten für die Studie verwenden?  Falls Sie \'Nein\' angekreuzt haben, haben Sie zusätzlich die Möglichkeit, den Grund zu nennen."
data[, 23] <- factor(data[, 23], levels=c("AO01","AO02"),labels=c("Ja, meine Daten können normal verwendet werden.", "Nein, meine Daten können nicht verwendet werden."))
names(data)[23] <- "G03Q1"
# LimeSurvey Field type: A
data[, 24] <- as.character(data[, 24])
attributes(data)$variable.labels[24] <- "[Kommentar] Können wir Ihre Antworten für die Studie verwenden?  Falls Sie \'Nein\' angekreuzt haben, haben Sie zusätzlich die Möglichkeit, den Grund zu nennen."
names(data)[24] <- "G03Q1_comment"
