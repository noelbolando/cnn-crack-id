# CNN Image Characterization Project #

<img width="167" height="163" alt="Screenshot 2025-09-06 at 4 59 31 PM" src="https://github.com/user-attachments/assets/6e5fd4c1-8615-4062-adad-94ffade94db2" />

## Project Background ##

This project was born from a menial task: labeling SEM images containing unique features such as microcracks and inclusion formation. We couldn't be bothered to label thousands of images so we developed an machine learning algorithm to sort through and identify crack features in microstructural images. 

It has been said that this repo is the result of my task avoidance.

## Project Details ##

As you'll see, this project contains a few files:

1. cnn.m: the real deal - this file contains the CNN algorithm that learns feature characteriation in image training data and performs feature predictions on image test data. This file also performs validation with validation data (to determine how well our model learns and predicts new features). Note that this script only handles images with dimensions of 64x64 pixels.
2. image_preprocess.m: this file crops out the scale bar from image data.
3. image_resize.m: this file resizes images to 32x32 pixels.
4. random_sampling.m: this file contains test code to ensure that images are randomly assigned to training, testing, and validation classes.
5. validation.m: this file tracks training and testing accuricies and cross-loss entropies and outputs these metrics with pretty graphs.

I've also supplied some wonderful data for those who are interested in testing this algorithm. Data is in the zip folder.

ENJOY =D
