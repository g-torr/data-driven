# data-driven
data found   [here](http://bnci-horizon-2020.eu/database/data-sets)
## What is inside?
Four ipython notebook:
* **oxy** gives the standard analysis on data (no changepoint)
* **changepoint** compares different method for change point detection and makes the plots
* **multiple_changepoint** uses two methods for multiple change point detection, namely:
	* optimal decision
	* window slising
* **averaged_signal** which does all the previous steps for the signal averaged over 8 people

Matlab notebook *oxy.mat* which  invoques the matlab function  *cusum_padding.m* that computes the cusum for the mean, and function *cusum_covariance.m* for the change in covariance. 

The script *mat2python.py* which allows to load data from *.mat* into numpy array.

Folder data contains the dataset downloaded. This is the menthal arithmetic task.
