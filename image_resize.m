%---- this code pre-processes all the pictures in myFolder and saves them
%to myNewFolder ----
%---- this code also resizes all the images to 32x32

%specifying the folder where the files live
myFolder = 'C:\Users\nbtar\Documents\MSE 490\Training Data\Original Inclusions';
%specifying the folder where the files will be saved
myNewFolder = 'C:\Users\nbtar\Documents\MSE 490\Training Data\Inclusions';

%check to make sure that folder actually exists and warn the user if it doesn't
if ~isdir(myFolder)
  errorMessage = sprintf('Error: The following folder does not exist:\n%s', myFolder);
  uiwait(warndlg(errorMessage));
  return;
end

%get a list of all files in the folder with the desired file name pattern
filePattern = fullfile(myFolder, '*.tif'); %this is the pattern to recognize the file type
%counting up the number of files with this pattern
theFiles = dir(filePattern); 

for k = 1 : length(theFiles)
    I = theFiles(k).name;
    fullFileName = fullfile(myFolder, I);
    fprintf(1, 'Now reading %s\n', fullFileName);
    
    %reading the image as an image array with imread()
    imageArray = imread(fullFileName);
 
    %resizing the images to 32x32
    L = imresize(imageArray, [64 64]);
    M = rgb2gray(L);
    imshow(M);

    %saving the image to a new folder after it has been processed
    %using imwrite since it's faster and you don't save the image with the
    %white background
    imwrite(L, fullfile(myNewFolder, I), 'tif'); %saving the image to a new folder   
end
