#1.install packages and use library/reqquired
library(gapminder) #excerpt of the Gapminder data
library(dplyr)

#investigate gapminder
str(gapminder)

#2.the filter verb(zlecenie w infie)
#%>% - pipe for chaining operations, like dot in JS
gapminder %>%
  filter(year == 1957, country == "Australia")

#3. arrange verb - sort observations in ascend/descend order
gapminder %>%
  arrange(desc(lifeExp))

#filter by year and continet and arrange by gdpPercap
gapminder %>%
  filter(year == 2007, continent == 'Europe') %>%
  arrange(desc(gdpPercap))

gapminder %>%
  filter(country == "Poland")

#4.mutate verb - change or create a col

#create a gdp col and investigate what countries have the biggest gdp
gapminder %>%
  mutate(gdp = gdpPercap * pop) %>%
  filter(year == 2007) %>%
  arrange(desc(gdp))

#5.summarize verb
#you can use min, max, median, mean or sum for your summary

gapminder %>%
  filter(year == 2007) %>%
  summarize(meanLifeExp = mean(lifeExp))

gapminder %>%
  filter(year == 1957) %>%
  summarize(medianLifeExp = median(lifeExp),
            maxGdpPercap = max(gdpPercap))

#6.group_by verb
#within each year, within each continent
gapminder %>%
  group_by(year, continent) %>%
  summarize(medianLifeExp = median(lifeExp),
            maxGdpPercap = max(gdpPercap))

gapminder %>%
  filter(year == 2007) %>%
  group_by(continent) %>%
  summarize(medianLifeExp = median(lifeExp),
            maxGdpPercap = max(gdpPercap))

#7.visualization
library(ggplot2)

by_year <- gapminder %>%
  group_by(year) %>%
  summarize(medianLifeExp = median(lifeExp),
            maxGdpPercap = max(gdpPercap))

ggplot(by_year, aes(x = year, y = medianLifeExp)) +
  geom_point() + expand_limits(y=0)

by_year_continent <- gapminder %>%
  group_by(continent, year) %>%
  summarize(medianGdpPercap = median(gdpPercap))

ggplot(by_year_continent, aes(x = year, y = medianGdpPercap,
    color = continent)) + geom_point() +  expand_limits(y = 0)

by_continent_2007 <- gapminder %>%
  filter(year == 2007) %>%
  group_by(continent) %>%
  summarize(medianLifeExp = median(lifeExp),
            medianGdpPercap = median(gdpPercap))

ggplot(by_continent_2007, aes(x = medianGdpPercap,
    y = medianLifeExp, color = continent)) + geom_point() +
  expand_limits(y=0)
