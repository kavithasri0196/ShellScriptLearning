#!/bin/bash
#1ft = 12 in then 42 in = ? ft 
oneFtToInch=12;
oneMeterToFeet=.3048;
oneMeterToAcre=.000247105

totalFoot=`awk -vp=42 -vq=$oneFtToInch 'BEGIN{printf "%.2f" ,p/q}'`;
echo 42 inch is equal to $totalFoot Foot;

#Rectangular Plot of 60 feet x 40 feet in meter. 1 feet = .3048 Meter
areaOfSinlgePlotInFeet=$((60*40));
areaOfSinlgePlotInMeter=`awk -vp=$areaOfSinlgePlotInFeet -vq=$oneMeterToFeet 'BEGIN{printf "%.2f" ,p*q}'`;
echo Area of single plot: $areaOfSinlgePlotInMeter meter

#Calculate area of 25 such plots in acres
areaOf25PlotsInAcre=`awk -vp=$areaOfSinlgePlotInMeter -vq=$oneMeterToAcre 'BEGIN{printf "%.2f" ,p*q}'`;
echo Area of 25 plots: $areaOf25PlotsInAcre acre