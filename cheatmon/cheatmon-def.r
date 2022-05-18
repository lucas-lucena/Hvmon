library(tidyverse)
library(datapasta)
type_comparisons <- tibble::tribble(
     ~Attacking, ~Normal, ~Fire, ~Water, ~Wind, ~Grass, ~Earth, ~Light, ~Dark,  ~None,
       "Normal",       1,     1,      1,     1,      1,      1,      1,     1,      1,
         "Fire",       1,   0.5,    0.5,     2,      2,    0.5,      1,     1,      1,
        "Water",       1,     2,    0.5,   0.5,    0.5,      2,      1,     1,      1,
         "Wind",       1,   0.5,      2,   0.5,      2,    0.5,      1,     1,      1,
        "Grass",       1,   0.5,      2,   0.5,    0.5,      2,      1,     1,      1,
        "Earth",       1,     2,    0.5,     2,    0.5,    0.5,      1,     1,      1,
        "Light",       1,     1,      1,     1,      1,      1,    0.5,     2,      1,
         "Dark",       1,     1,      1,     1,      1,      1,      2,   0.5,      1,
         "None",       1,     1,      1,     1,      1,      1,      1,     1,      1,
 )
tidied_comparison <- type_comparisons %>%
  gather(Defending, outcome, -Attacking)

Weaknesses <- tidied_comparison %>%
  group_by(Defending) %>%
  summarize(Weaknesses = sum(ifelse(outcome > 1, 1, 0))) %>%
  arrange(desc(Weaknesses)) %>%
  knitr::kable()

Resistances <-tidied_comparison %>%
  group_by(Defending) %>%
  summarize(Resistances = sum(ifelse(outcome < 1, 1, 0))) %>%
  arrange(desc(Resistances)) %>%
  knitr::kable()

Immunities <- tidied_comparison %>%
  group_by(Defending) %>%
  summarize(Immunities = sum(ifelse(outcome == 0, 1, 0))) %>%
  arrange(desc(Immunities)) %>%
  head(6) %>%
  knitr::kable()

m <- as.matrix(type_comparisons[, -1])
rownames(m) <- type_comparisons$Attacking

m[m == 2] <- -1
m[m >= 0 & m < 1 ] <- 3
m[m == 1 ] <- 0
m[m == 3 ] <- 1

super_effective_m <- t(m)

super_effective_nb <- function(indices) {
  sum(colSums(super_effective_m[indices, ]) > 0)
}

all_combinations <- combn(8, 2)

super_effective_results <- apply(all_combinations, 2, super_effective_nb)

dim(all_combinations)

sort(super_effective_results,decreasing = TRUE)

head(sort(super_effective_results,decreasing = TRUE), n=41)

head(order(super_effective_results,decreasing = TRUE), n=41)

best_combos <- all_combinations[, head(order(super_effective_results,decreasing = TRUE), n=41)]

Weaknesses

Resistances

strongest_teams <- t(matrix(rownames(super_effective_m)[best_combos], nrow = 2))

strongest_teams

type <- strongest_teams %>%
  as_tibble() %>%
  gather(team, type) %>%
  count(type, sort = TRUE) %>%
  knitr::kable()

type