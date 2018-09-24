#1.install and load those packages
library(gapminder)
library(dplyr)
library(ggplot2)

#2. variable assignment
gapminder_2007 <- gapminder %>%
  filter(year == 2007)

#3.create a scatter plot, geom_point is a layer!!
ggplot(gapminder_2007, aes(x = gdpPercap, y = lifeExp)) + geom_point()
#without geom_point there is literally nothing on the plot xDDD
ggplot(gapminder_2007, aes(x=lifeExp, y = gdpPercap)) + geom_point()

gapminder %>%
  filter(year == 1952) %>%
  arrange(desc(gdpPercap))

#4. log scales - for better visualization
ggplot(gapminder_2007, aes(x = pop, y = gdpPercap)) + geom_point() +
  scale_x_log10() + scale_y_log10()

#5. additional aesthetics
#there are 4 aes -> x, y, COLOUR, SIZE
ggplot(gapminder_2007, aes(x = gdpPercap, y = lifeExp,
      colour = continent, size = pop)) + geom_point() + scale_x_log10()

#6. faceting - dividing data into subplots
#~(tylda) in R means "by"
ggplot(gapminder_2007, aes(x=pop, y=lifeExp)) + geom_point() +
  scale_x_log10() + facet_wrap(~continent)

ggplot(gapminder, aes(x=gdpPercap, y = lifeExp, color = continent,
      size = pop)) + geom_point() + scale_x_log10() + facet_wrap(~year)
