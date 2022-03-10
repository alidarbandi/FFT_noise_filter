# FFT_noise_filter
Filter image noise through the frequency domain

This is a macro for ImageJ and Fiji. The macro will use a data sepecific mask to filter high frequency or low frequency noise in FFT domain. Final image will be reconstrcuted using inverse FFT. This maco assumes that the noise in your data is from a systematic source (pseudo periodic noise) that is predictable in every image. Random unpredicatable noise cannot be filtered with this macro. See an example of this filtering in the image below.

![before and after FFT notch filter](https://user-images.githubusercontent.com/36707458/157692826-01403f0f-7efb-44d8-be21-6bccea181c74.jpg)


# Tutorial
1. Download the file and place it in your imageJ folder or data folder.
2. Open ImageJ, go to Plugins --> Macros -->edit
3. Browse to the downloaded file
4. Import one of your noisy images from file -->import --> image sequenece (or import it with any desired method)
5. We assumed that the noise is predictable (i.e. DC or AC noise) and it happens at about same frequencies throughtout the dataset
6. Get fast fourier transform of the image: Process-->FFT-->FFT
7. Noises will appear as bright spots or strikes in the FFT. 
8. click Plugins -->macrors --> record. A window will poop and it will record all your interactions.
9. Select the oval tool and draw and oval around the noise spot on the FFT image. The Macro recorder will show you the coordinates of the oval that you drew. Copy the coordinates and paste it in the notch filter macro. The makeoval list in the filter macro starts from line 5 and has a format of makeOval(x, x, x, x).
10. Continue step 9 until you cover all noise spots in your image. The notch filter macro has 18 oval masks. You can add or remove notch masks as required. 
11. save the macro.
12. Edit the number of images in the for-loop counter
13. Click run. 
14. the program prompts you to choose the input and output folder. 
 
