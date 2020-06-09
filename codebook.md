
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Names of the variables

[1] "Subject" = ID of subjects(volunteers)  :int: 1,2,3,.....,29,30                               
[2] "Activities" = Activities performed by subject  :char "WALKING","WALKING_UPSTAIRS,"WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"                                               [3] "Time:BodyAcceleration-mean()-X"  :num                                
[4] "Time:BodyAcceleration-mean()-Y"  :num                              
[5] "Time:BodyAcceleration-mean()-Z"  :num                               
[6] "Time:BodyAcceleration-Standard Deviation()-X"  :num                  
[7] "Time:BodyAcceleration-Standard Deviation()-Y"  :num                  
[8] "Time:BodyAcceleration-Standard Deviation()-Z"  :num                  
[9] "Time:GravityAcceleration-mean()-X"   :num                             
[10] "Time:GravityAcceleration-mean()-Y"  :num                             
[11] "Time:GravityAcceleration-mean()-Z"  :num                             
[12] "Time:GravityAcceleration-Standard Deviation()-X"  :num               
[13] "Time:GravityAcceleration-Standard Deviation()-Y"  :num              
[14] "Time:GravityAcceleration-Standard Deviation()-Z"  :num              
[15] "Time:BodyAccelerationJerk-mean()-X"   :num                           
[16] "Time:BodyAccelerationJerk-mean()-Y"   :num                           
[17] "Time:BodyAccelerationJerk-mean()-Z"   :num                           
[18] "Time:BodyAccelerationJerk-Standard Deviation()-X"  :num              
[19] "Time:BodyAccelerationJerk-Standard Deviation()-Y"  :num              
[20] "Time:BodyAccelerationJerk-Standard Deviation()-Z"  :num              
[21] "Time:BodyGyroscope-mean()-X"    :num                                 
[22] "Time:BodyGyroscope-mean()-Y"    :num                                 
[23] "Time:BodyGyroscope-mean()-Z"    :num                                
[24] "Time:BodyGyroscope-Standard Deviation()-X"   :num                    
[25] "Time:BodyGyroscope-Standard Deviation()-Y"   :num                    
[26] "Time:BodyGyroscope-Standard Deviation()-Z"   :num                    
[27] "Time:BodyGyroscopeJerk-mean()-X"   :num                              
[28] "Time:BodyGyroscopeJerk-mean()-Y"   :num                              
[29] "Time:BodyGyroscopeJerk-mean()-Z"    :num                             
[30] "Time:BodyGyroscopeJerk-Standard Deviation()-X"   :num                
[31] "Time:BodyGyroscopeJerk-Standard Deviation()-Y"   :num               
[32] "Time:BodyGyroscopeJerk-Standard Deviation()-Z"   :num                
[33] "Time:BodyAccelerationMagnitude-mean()"   :num                        
[34] "Time:BodyAccelerationMagnitude-Standard Deviation()"  :num           
[35] "Time:GravityAccelerationMagnitude-mean()"   :num                     
[36] "Time:GravityAccelerationMagnitude-Standard Deviation()"  :num        
[37] "Time:BodyAccelerationJerkMagnitude-mean()"    :num                   
[38] "Time:BodyAccelerationJerkMagnitude-Standard Deviation()" :num       
[39] "Time:BodyGyroscopeMagnitude-mean()"      :num                        
[40] "Time:BodyGyroscopeMagnitude-Standard Deviation()"    :num            
[41] "Time:BodyGyroscopeJerkMagnitude-mean()"   :num                       
[42] "Time:BodyGyroscopeJerkMagnitude-Standard Deviation()" :num           
[43] "Frequency:BodyAcceleration-mean()-X"    :num                         
[44] "Frequency:BodyAcceleration-mean()-Y"    :num                        
[45] "Frequency:BodyAcceleration-mean()-Z"    :num                         
[46] "Frequency:BodyAcceleration-Standard Deviation()-X"   :num            
[47] "Frequency:BodyAcceleration-Standard Deviation()-Y"   :num           
[48] "Frequency:BodyAcceleration-Standard Deviation()-Z"   :num           
[49] "Frequency:BodyAcceleration-meanFreq()-X"    :num                     
[50] "Frequency:BodyAcceleration-meanFreq()-Y"    :num                     
[51] "Frequency:BodyAcceleration-meanFreq()-Z"    :num                     
[52] "Frequency:BodyAccelerationJerk-mean()-X"    :num                    
[53] "Frequency:BodyAccelerationJerk-mean()-Y"    :num                     
[54] "Frequency:BodyAccelerationJerk-mean()-Z"    :num                     
[55] "Frequency:BodyAccelerationJerk-Standard Deviation()-X"  :num         
[56] "Frequency:BodyAccelerationJerk-Standard Deviation()-Y"  :num         
[57] "Frequency:BodyAccelerationJerk-Standard Deviation()-Z"  :num         
[58] "Frequency:BodyAccelerationJerk-meanFreq()-X"  :num                   
[59] "Frequency:BodyAccelerationJerk-meanFreq()-Y"  :num                   
[60] "Frequency:BodyAccelerationJerk-meanFreq()-Z"  :num                   
[61] "Frequency:BodyGyroscope-mean()-X"   :num                             
[62] "Frequency:BodyGyroscope-mean()-Y"   :num                            
[63] "Frequency:BodyGyroscope-mean()-Z"   :num                            
[64] "Frequency:BodyGyroscope-Standard Deviation()-X"  :num                
[65] "Frequency:BodyGyroscope-Standard Deviation()-Y"  :num               
[66] "Frequency:BodyGyroscope-Standard Deviation()-Z"  :num                
[67] "Frequency:BodyGyroscope-meanFreq()-X"   :num                         
[68] "Frequency:BodyGyroscope-meanFreq()-Y"   :num                         
[69] "Frequency:BodyGyroscope-meanFreq()-Z"   :num                         
[70] "Frequency:BodyAccelerationMagnitude-mean()"  :num                    
[71] "Frequency:BodyAccelerationMagnitude-Standard Deviation()" :num       
[72] "Frequency:BodyAccelerationMagnitude-meanFreq()"  :num                
[73] "Frequency:BodyBodyAccelerationJerkMagnitude-mean()"  :num            
[74] "Frequency:BodyBodyAccelerationJerkMagnitude-Standard Deviation()" :num
[75] "Frequency:BodyBodyAccelerationJerkMagnitude-meanFreq()"   :num       
[76] "Frequency:BodyBodyGyroscopeMagnitude-mean()"   :num                  
[77] "Frequency:BodyBodyGyroscopeMagnitude-Standard Deviation()"   :num    
[78] "Frequency:BodyBodyGyroscopeMagnitude-meanFreq()"   :num              
[79] "Frequency:BodyBodyGyroscopeJerkMagnitude-mean()"   :num              
[80] "Frequency:BodyBodyGyroscopeJerkMagnitude-Standard Deviation()" :num  
[81] "Frequency:BodyBodyGyroscopeJerkMagnitude-meanFreq()"  :num

