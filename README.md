
RESEARCH MOTIVATION

● Portfolio Optimization is very important. Advisable to diversify investments 
across not just equity but also commodity markets.

● Commodity markets can be used to gauge Dow Jones Price Movement?

● Technical analysis is a way to forecast the markets. This helps traders and 
investors understand future price movement across variety of time frames.

● There are a whole lot of technical indicators. 

● Which are the ones that should be a “must use” for understanding and 
predicting Dow Jones? 




RESEARCH QUESTIONS

Q1: Predicting Dow Jones with the help of Crude and Gold previous day prices.

Q2: Which are the most important technical indicators to predict market bullish or bearish?


PROBLEM WE ARE SOLVING:

● Help predict Dow Jones market sentiment and Price with available data like:

1. Crude Oil previous Day Price
2. Gold Previous Day Price
3. Technical Indicators on previous Close Prices (lag) of Dow Jones

DATA PREPARATION

Question 1

● SAS Data Step

● CSV files loaded for Gold, Crude and Dow

● Merged using Date

● Using Lag function to calculate previous day close prices

Question 2

● SAS Data Step

● Technical Indicators CSV file loaded



ANALYSIS METHOD - CART

● Descriptive and correlation analysis conducted.

● Applied Classification and Regression Trees

Question 1: Dependent Variable - Dow Jones Close Price today, Independent 

Variable: Previous Day Close price of Gold and Crude

Question 2: Dependent Variable: Dow Jones Up/Down, Independent Variables: 

RSI, ADX, SMA and LMA



To lnow more about what we did, please check 

https://github.com/pessy123/DowJones-Prediction-Using-SAS-/blob/main/DowJonesPrediction.pdf





