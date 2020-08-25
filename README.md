# Predictive Model of Covid-19 in USA
### Project Description
Summer Research 2020
+ **Projec title**: The Ensemble Model to Predict Total Deaths in USA
+ **Instructors**: Victor de la Pena, Demissie Alemayehu
+ **Team members**
	+ team member 1: Saier Gong [sg3772@columbia.edu]
	+ team member 2: Zhijie Huang [zh2415@columbia.edu]
+ **Project summary**:
  
  In this project, we learned the basic SIR and SEIR models, studied 4 models from website https://viz.covid19forecasthub.org/ and understood the mathematics behind them. Based on our own understanding of these models, we tried out these models and made some improvements. After that, according to the performance of each model(RMSE), we gave them weights and got the final ensemble model.
  + **Model 1**: SuEIR Model: Based on the basic SEIR model, after reading references we added a new state called 'unreported recovery'.
  + **Model 2**: Shorterm Forecasting assuming the length of time window is 7 days according to the reports from Imperal College Model 1.
  + **Model 3**: Shorterm Forecasting using Accumulated Predictive Error(APE) to get the best length of time window according to the reports from Imperal College Model 2.
  + **Model 4**: Shorterm Forecasting when considering a known distribution for delay from report to death according to the reports from Imperial College Model 3.
+ **Contribution statement**:
  + Saier Gong took the lead in carrying out Model 2, Model 3 and Model 4. She finished all the codes of these 3 models.
  + Zhijie Huang carried out the data processing part, and Model 1.
+ **References**
  + https://viz.covid19forecasthub.org/
  + https://covid19.uclaml.org/model.html
  + https://mrc-ide.github.io/covid19-short-term-forecasts/index.html#methods
