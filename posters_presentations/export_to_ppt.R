#### SAVE FIGURES IN .SVG TO FURTHER CUSTOMIZE IN POWER POINT ####
## Required packages
library(ggplot2) # For ggplot
library(palmerpenguins) # Practice data

## Make sample figure
ppt_fig = ggplot(penguins) +
  aes(x = flipper_length_mm,
      y = body_mass_g) +
  geom_point(aes(color = species, 
                 shape = species),
             size = 3,
             alpha = 0.8) +
  scale_color_manual(values = c("darkorange","purple","cyan4"))

## Export as .svg
ggsave(
  plot = ppt_fig,
  filename = "posters_presentations/ppt_fig.svg"
)

## Now you can paste the figure in Power Point 

#### SAVE TABLES IN WORD FORMAT TO COPY-PASTE ON PPT ####
library(tinytable)
library(tidyr) # sample data
# Also needs pandoc package

table1 %>% 
  tt() %>% 
  save_tt("posters_presentations/ppt_tab.docx")

