# CNN Image Characterization Project #

<img width="167" height="163" alt="Screenshot 2025-09-06 at 4 59 31 PM" src="https://github.com/user-attachments/assets/6e5fd4c1-8615-4062-adad-94ffade94db2" />
<img width="189" height="98" alt="Screenshot 2025-09-06 at 4 59 44 PM" src="https://github.com/user-attachments/assets/39b7a13e-5f2e-4190-9d58-d4d11090a30b" />
<img width="173" height="213" alt="Screenshot 2025-09-06 at 5 00 32 PM" src="https://github.com/user-attachments/assets/e72ee097-7c92-4181-8084-5a1cf0455de0" />
<img width="142" height="107" alt="Screenshot 2025-09-06 at 5 00 43 PM" src="https://github.com/user-attachments/assets/adbc8092-2247-4a84-b8f0-f3c24a57f94c" />

## Some Background ##

During my days as a research assistant, I was tasked with the responsibility of organizing thousands of microsctrual images and asked to sort the images based on key features: cracks and inclusions. This was a laborarious task that took me weeks to complete. Honestly, I couldn't be bothered to do such menial tasks so I developed an machine learning algorithm to sort through and identify crack features in microstructural images. 

I somehow convinced my lab PI that this project was a good idea and he trusted me to tackle it. Not only did I work my way out of dealing with menial tasks, but I also developed a machine learning algorithm back in 2019, before it was trendy to do such things. I also got credit for this project, research experience, and a peer-reviewed paper!

This repo is the result of my laziness and the creation of said project. 

## Project Details ##

As you'll see, this project contains a few files:

1. cnn.m: the real deal - this file contains the CNN algorithm that learns feature characteriation in image training data and performs feature predictions on image test data. This file also performs validation with validation data (to determine how well our model learns and predicts new features). Note that this script only handles images with dimensions of 64x64 pixels.
2. image_preprocess.m: this file crops out the scale bar from image data.
3. image_resize.m: this file resizes images to 32x32 pixels.
4. random_sampling.m: this file contains test code to ensure that images are randomly assigned to training, testing, and validation classes.
5. validation.m: this file tracks training and testing accuricies and cross-loss entropies and outputs these metrics with pretty graphs.

I've also supplied some wonderful data for those who are interested in testing this algorithm. Data is in the zip folder.

ENJOY =D
