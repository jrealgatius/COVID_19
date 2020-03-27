# COVID_19
Coronavirus (COVID-19) Mortality Rate

## 1. Objectius

Evaluar l'evolució de l'estimació de la taxa de mortalitat (letalitat) en casos confirmats de COVID-19 a Espanya

## 2. Mètode

- Dades diaries de casos confirmats de COVID-19 i mortalitat acumulada diaria per Comunitats autònomes
- Font: Repositori de Joe Brew actualitzat amb dades del ministeri
- S'inicia la sèrie fins que no han passat 7 dies per tenir casos potencials de mortalitat.
- No s'han considerat retards per al càlcul. O sigui la població a risc és la població acumulada contagiada en cada moment que es fa el càlcul. 
- Anàlisis descriptiva gràfica de la evoluació de la actualització de la taxa de mortalitat. 
- S'ha inclós una banda de confiança al 95% segons el mètode exacte de la binomial. 
- Es presenten figures de l'evolució diaria globalment i per comunitat autònoma

## 3. Referències

https://www.worldometers.info/coronavirus/coronavirus-death-rate/ 

https://smw.ch/article/doi/smw.2020.20203


## 4. Resultats 

### Globals

![Figura 1](figures/plot_esp.png)

### Per comunitats

![Figura 2](figures/Madrid.png)

![Figura 3](figures/Cataluña.png)

![Figura 4](figures/C. Valenciana.png)

![Figura 5](figures/Andalucía.png)

![Figura 6](figures/Galicia.png)

![Figura 7](figures/Aragón.png)

![Figura 8](figures/Asturias.png)

![Figura 9](figures/Baleares.png)

![Figura 10](figures/Canarias.png)

![Figura 11](figures/Cantabria.png)

![Figura 12](figures/Ceuta.png)

![Figura 13](figures/CLM.png)

![Figura 14](figures/CyL.png)

![Figura 15](figures/Extremadura.png)

![Figura 16](figures/La Rioja.png)

![Figura 17](figures/País Vasco.png)

![Figura 18](figures/Navarra.png)

![Figura 19](figures/Melilla.png)

### Comparativa Madrid la resta d'Espanya

![Figura 20](figures/plot_rest.png)






