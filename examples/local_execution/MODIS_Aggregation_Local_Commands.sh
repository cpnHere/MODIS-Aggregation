#!/bin/bash

# Guide of running the script:
# python MODIS_Aggregation_Local.py <Data Path file> <Start Date> <End Date>
#								  <Polygon boundaries: [lower lat, upper lat, left lon, right lon>
# 								<Lat & Lon Grid Size: [lat grid size, lon grid size]>
#								  <Sampling number larger than 0>
#								  <1/0 for Minimum> <1/0 for Maximum> <1/0 for Mean> <1/0 for Pixel Counts>
#								  <1/0 for Standard Deviation> <1/0 for Histogram Counts> <1/0 for Joint Histogram>
#								  <Variable Name List with Histogram Interval>
#								  <Variable Name List with Joint Histogram Interval>

# Example 1: Choose the time from 2008/01/01 to 2008/01/01 (Daily) with the region [-90,90,-180,180] with grid size [1,1] with sampling rate 1
#			 Calculate Minimum, Maximum, Mean, Pixel Counts, Standard Deviation, Histogram and Joint Histogram.
#			 Variables (5km resolution) in input_file_1km.csv & input_Jhist_1km.csv:
#              Cloud_Top_Pressure        
#              Cloud_Top_Temperature     
#              Cloud_Effective_Emissivity
#              cloud_fraction_CM         
#              Cloud_Top_Height          
python3 MODIS_Aggregation_Local.py ../data_path.csv 2008/01/01 2008/01/01 [-90,90,-180,180] [1,1] [1] 1 1 1 1 1 1 1 ../input_file_5km.csv ../input_Jhist_5km.csv

# Example 2: Choose the time from 2008/01/01 to 2008/01/31 (Monthly) with the region [-90,90,-180,180] with grid size [1,1] with sampling rate 1
#			 Calculate Minimum, Maximum, Mean, Pixel Counts, Standard Deviation, Histogram and Joint Histogram.
#			 Variables (5km resolution) in input_file_5km.csv & input_Jhist_5km.csv:
#              Cloud_Top_Pressure        
#              Cloud_Top_Temperature     
#              Cloud_Effective_Emissivity
#              cloud_fraction_CM         
#              Cloud_Top_Height          
# python3 MODIS_Aggregation_Local.py ../data_path.csv 2008/01/01 2008/01/31 [-90,90,-180,180] [1,1] [1] 1 1 1 1 1 1 1 ../input_file_5km.csv input_Jhist_5km.csv

# Example 3: Choose the time from 2008/01/01 to 2008/01/16 with the region [-20,20,0,35] with grid size [1,1] with sampling rate 5
#			 Calculate Minimum, Maximum, Mean, Pixel Counts.
#			 Variables (1km resolution) in input_file_1km.csv & input_Jhist_1km.csv:
#              cloud_top_pressure_1km   
#              cloud_top_temperature_1km
#              cloud_emissivity_1km     
#              cloud_fraction_CM        
#              cloud_top_height_1km     
# python3 MODIS_Aggregation_Local.py ../data_path.csv 2008/01/01 2008/01/16 [-20,20,0,35] [1,1] [5] 1 1 1 0 0 0 0 ../input_file_1km.csv ../input_Jhist_1km.csv

# Example 4: Choose the time from 2008/01/01 to 2008/01/09 with the region [-90,90,-180,180] with grid size [0.5,0.625] with sampling rate 5
#			 Calculate Standard Deviation, Histogram and Joint Histogram.
#			 Variables (1km resolution) in input_file_1km.csv & input_Jhist_1km.csv:
#              cloud_top_pressure_1km   
#              cloud_top_temperature_1km
#              cloud_emissivity_1km     
#              cloud_fraction_CM        
#              cloud_top_height_1km     
# python3 MODIS_Aggregation_Local.py ../data_path.csv 2008/01/01 2008/01/09 [-90,90,-180,180] [0.5,0.625] [5] 0 0 0 0 1 1 1 ../input_file_1km.csv ../input_Jhist_1km.csv
