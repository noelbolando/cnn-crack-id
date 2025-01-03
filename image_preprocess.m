%---- this code pre-processes all the pictures in myFolder and saves them
%to myNewFolder ----
%---- this code also crops out the scale bar and garbage out of the images

%specifying the folder where the files live
myFolder = 'C:\Users\nbtar\Documents\MSE 490\B89-(67.4dpa)-the-other-half';
%specifying the folder where the files will be saved
myNewFolder = 'C:\Users\nbtar\Documents\MSE 490\B89-(67.4dpa)-the-other-half-Processed-Images';

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
         
    %the first step is to smoothen the image so that precipitants and grain
    %boundaries are less pronounced and the cracks are more pronounced
    %J is the variable to be used for the smooth image
    J = wiener2(imageArray, [20,20]);     %wiener2 used to smoothen the image
    
    rect = [0 0 1280 820];  %use these dimensions to crop the photo
    K = imcrop(J,rect);
 
    L = imresize(K, [32 32]);
    imshow(L);

    %saving the image to a new folder after it has been processed
    %this is supposed to not allow the image to shrink but it's still
    %shrinking after saving?
    set(gcf, 'PaperPositionMode', 'auto'); 
    saveas(gcf, fullfile(myNewFolder, I), 'tif'); %saving the image to a new folder   
end
