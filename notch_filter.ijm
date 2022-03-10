function fft_notch_filter(img){
         image=inputDir+ img;
         open(image);
         run("FFT");
         makeOval(799, 911, 55, 26);
 		 setBackgroundColor(0, 0, 0);
		 run("Clear", "slice");
		 makeOval(803, 615, 55, 27);
		 run("Clear", "slice");
		 makeOval(806, 1201, 40, 22);
		 run("Clear", "slice");
		 makeOval(809, 1489, 51, 42);
		 run("Clear", "slice");
  		 makeOval(794, 1789, 74, 23);
		 run("Clear", "slice");
		 makeOval(473, 327, 16, 52);
 		 run("Clear", "slice");
 		 makeOval(802, 332, 61, 8);
	  	 run("Clear", "slice");
		 makeOval(811, 13, 35, 128);
		 run("Clear", "slice");
		 makeOval(1190, 238, 67, 23);
		 run("Clear", "slice");
		 makeOval(1189, 532, 70, 26);
		 run("Clear", "slice");
		 makeOval(1205, 826, 41, 27);
		 run("Clear", "slice");
		 makeOval(1208, 1123, 52, 22);
		 run("Clear", "slice");
		 makeOval(1192, 1403, 68, 38);
		 run("Clear", "slice");
		 makeOval(1184, 1702, 76, 21);
		 run("Clear", "slice");
		 makeOval(1166, 1999, 129, 19);
		 run("Clear", "slice");
 		 makeOval(1215, 1859, 12, 184);
		 run("Clear", "slice");
		 makeOval(1566, 1671, 5, 52);
		 run("Clear", "slice");
		 makeOval(727, 36, 203, 16);
		 run("Clear", "slice");
         run("Inverse FFT");
         run("Enhance Contrast", "saturated=0.35"); // enhances contrast to 35% saturation
	     name = getTitle(); // gets name of image 
         save_name=outputDir + name + "_corrected";
         saveAs("TIF", save_name);
         close();
         close();
         close();      
         
}


// choose input folder
inputDir = getDirectory("Choose your input folder");
outputDir= getDirectory("Select your save folder");

// get files list
list=getFileList(inputDir);

// loop through all items in input directory
for (i=0; i<68; i++)
 
    // if(endsWith(list[i], ".tif"))
     fft_notch_filter(list[i]);
    
