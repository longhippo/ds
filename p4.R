# install.packages("tidyverse", type="source")
library(tidyverse)

head(billboard)

billboard_long <- billboard |> 
  pivot_longer(
    cols = starts_with('wk'),
    names_to = 'week',
    values_to = 'rank'
  )

billboard_long

billboard_long |> 
  pivot_wider(
    names_from = week,
    values_from = rank
  )
