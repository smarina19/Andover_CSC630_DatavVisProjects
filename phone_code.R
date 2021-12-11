mobile <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-11-10/mobile.csv')
landline <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-11-10/landline.csv')
library(ggplot2)
# Question to answer: How has the number of mobile phone vs landline subscriptions changed over the
# past 30 years in the United States, Russia, China, and France?

# Separating US data
us <- data.frame(year = 1990:2017, 
                landline_subs = subset(landline, entity == "United States" & year <= 2017)[["landline_subs"]],
                cell_subs = subset(mobile, entity =="United States")[["mobile_subs"]])

# Plotting US data
ggplot(us, aes(year)) + 
  geom_line(aes(y = landline_subs, color = "Landline"), size = 1.5) + 
  geom_line(aes(y = cell_subs, color = "Cell"), size = 1.5) +
  labs(y = "Fixed Subscriptions (per 100 people)", x = "Year") +
  ggtitle("Phone Subscriptions in the United States (1990-2017)") +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# Separating Russia data
us <- data.frame(year = 1990:2017, 
                 landline_subs = subset(landline, entity == "Russia" & year <= 2017)[["landline_subs"]],
                 cell_subs = subset(mobile, entity =="Russia")[["mobile_subs"]])

# Plotting Russia data
ggplot(us, aes(year)) + 
  geom_line(aes(y = landline_subs, color = "Landline"), size = 1.5) + 
  geom_line(aes(y = cell_subs, color = "Cell"), size = 1.5) +
  labs(y = "Fixed Subscriptions (per 100 people)", x = "Year") +
  ggtitle("Phone Subscriptions in Russia (1990-2017)") +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# Separating China data
us <- data.frame(year = 1990:2017, 
                 landline_subs = subset(landline, entity == "China" & year <= 2017)[["landline_subs"]],
                 cell_subs = subset(mobile, entity =="China")[["mobile_subs"]])

# Plotting China data
ggplot(us, aes(year)) + 
  geom_line(aes(y = landline_subs, color = "Landline"), size = 1.5) + 
  geom_line(aes(y = cell_subs, color = "Cell"), size = 1.5) +
  labs(y = "Fixed Subscriptions (per 100 people)", x = "Year") +
  ggtitle("Phone Subscriptions in China (1990-2017)") +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# Separating China data
us <- data.frame(year = 1990:2017, 
                 landline_subs = subset(landline, entity == "China" & year <= 2017)[["landline_subs"]],
                 cell_subs = subset(mobile, entity =="China")[["mobile_subs"]])

# Plotting China data
ggplot(us, aes(year)) + 
  geom_line(aes(y = landline_subs, color = "Landline"), size = 1.5) + 
  geom_line(aes(y = cell_subs, color = "Cell"), size = 1.5) +
  labs(y = "Fixed Subscriptions (per 100 people)", x = "Year") +
  ggtitle("Phone Subscriptions in China (1990-2017)") +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# Separating Nigeria data
us <- data.frame(year = 1990:2017, 
                 landline_subs = subset(landline, entity == "Nigeria" & year <= 2017)[["landline_subs"]],
                 cell_subs = subset(mobile, entity =="Nigeria")[["mobile_subs"]])

# Plotting Nigeria data
ggplot(us, aes(year)) + 
  geom_line(aes(y = landline_subs, color = "Landline"), size = 1.5) + 
  geom_line(aes(y = cell_subs, color = "Cell"), size = 1.5) +
  labs(y = "Fixed Subscriptions (per 100 people)", x = "Year") +
  ggtitle("Phone Subscriptions in Nigeria (1990-2017)") +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))



