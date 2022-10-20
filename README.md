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
● Q1: Predicting Dow Jones with the help of Crude and Gold previous day 
prices.
● Q2: Which are the most important technical indicators to predict market 
bullish or bearish?
PROBLEM WE ARE SOLVING:
● Help predict Dow Jones market sentiment and Price with available data like:
1. Crude Oil previous Day Price
2. Gold Previous Day Price
3. Technical Indicators on previous Close Prices (lag) of Dow Jones
METHODOLOGY
DATA COLLECTION
● Yahoo Finance
● Investing.com
● Data from 2017 to April 2022 - Q1
● Data from 2010 to April 2022 - Q2
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
CLASSIFICATION & REGRESSION TREES
● Regression and classification trees are methods for analyzing how a 
dependent variable is correlated with independent variables. PROC HPSPLIT 
and PROC DTREE can both create decision trees that look similar.
● When we want to explore the relationship of variables and outcome, that is 
the effect of variables on the outcome, PROC HPSPLIT is a useful tool.
● Decision trees are a machine learning technique for making predictors; they 
are built by repeatedly splitting data into smaller and smaller clusters. The 
trees are trained by passing data down from a root node to leaves. The data 
is repeatedly split based on predictor variables therefore the sub nodes would 
be more homogenous.
DATA ANALYSIS & FINDINGS

QUESTION 1:
Dow Jones Close ~ 
● Previous Day Crude Price, 
● Previous Day Gold Price).
Gold Price more important factor.
If Previous Gold Price greater than 
1365 and Previous Crude Price is 
greater than 35.36 and previous 
gold price greater than 1543 then 
the Dow Jones has got very high 
probability to close towards higher 
prices (blue spectrum).
QUESTION 2:
Most Important indicators RSI and ADX.
Dependent Variable: Up/Down
Independent Variables: RSI, ADX, SMA, LMA
If RSI is greater than 60.2, and 
LMA is greater than 27627, and 
RSI is greater than 62.1, then 
Market is Up!
CONCLUSION
● Investors and Traders participating in the U.S. equity markets can take help of 
Previous Day Gold and Crude prices to forecast next day close price using 
our Model 1.
● Investors and Traders can gauge price movement and sentiment of Dow 
Jones by making use of RSI and ADX.
THANK YOU






