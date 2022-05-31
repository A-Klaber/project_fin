# Electric Vehicle Analysis

## Overview of Project
We are engaging in research on behalf of the state of Florida to determine how many electic vehicle charging stations will be needed by the year 2025. We will use information about the number of EVs registered in each county for years 2018, 2019 and 2020 and regression analysis to figure out our predictions for 2025 and provide these to the state on a county by county basis. We will then be able to advise if the amount of stations is sufficent, needs to be improved, or if stations provided by local and/or state goverment can be reduced for a cost savings.

## Plan
*Use pandas to filter data to provide number of stations per county in FL, as well as number of EVs registered in the state in 2018, 2019, 2020

*Machine learning - use regression to determine the growth factor of EV ownership in the state by county

*Tableau dashboard - will provide information to state on areas most in need of stations as well as possible surplus stations to be investigated


## Resources/Data
* alt_fuel_stations.csv
* fl_ev_reg.csv
* zip_county.csv



## Topic Choice
Coming to an agreement on a topic was not an easy task.  However, once we were able to locate some recent data on electronic vehicles, the ideas started flowing.  Maybe it's the high gas prices, or the fact that many car companies are promising to refocus and produce more electric vehicles.  Ultimately, we found this to be an interesting topic with a wealth of data to explore.


## Preliminary data 
### Week 2
![Prelim](QuickDBD_EV.png)  
- Each memeber contributed to the selection of topic and searching for data
- All members participated and helped each other in multiple roles.
- Communication is maintained on slack  
#### technology
- Data cleaning and analysis will be done via Jupyter
- Database will be hosted on aws
- Final graphs will be completed using tableau and google
- sample of left join is in file [alt_fuel_cleanup](alt_fuel_cleanup.ipynb) (block 20),  
         the ev shows the multiple joins to be acomplished, thus be removed from cleanup.
- 

#### Preliminary Google slides Presentation

https://docs.google.com/presentation/d/1Ib3dUdZEBJ4KgSuwq_63bpVVxFNANwChGiVY6BfxTS4/edit?usp=sharing

# Week 2 Update

### Machine Learning Model:
- Description of preliminary data preprocessing
- Description of preliminary deature engineering and preliminary feature selection, including their decision making process
- Description of how data was split into trainig and testing sets
- Explanation of model choice, including limitations and benefits
