function plotImagesF(app)
% Jonathon Vasilak
%% plotImages.m
% This program loads an image in and then plots the original image
% in a GUI, along with a grayscale version of the image, an altered version
% of the grayscale image where the rows are rearranged, and a second
% altered version where the intenstiy of the grayscale image has changed. 


% Author: Jonathon Vasilak
%% Read in the image
% Set the filename of the picture that you will read into MATLAB
filename = 'ABartolini.jpg';

% Read in the image using the imread function. imageOriginal will be a 
% three dimensional array with the information about the image.
imageOriginal = imread(filename);


%% Display the Original Image

% Display the original image using the imshow function. You must make sure
% that you tell the GUI what axes to plot this image on.
imshow(imageOriginal, 'InitialMagnification', 'fit', 'Parent', app.originalAxes);
% Turn the axis off 
axis(app.originalAxes, 'off');
% Add a title
title(app.originalAxes, 'Original Image');


%% Convert the Image to Grayscale and Plot

% Use the rgb2gray function to convert the color image from color to
% grayscale. Now, the imageGrayscale array is a two-dimensional array
imageGrayscale = rgb2gray(imageOriginal);

% Display the grayscale image using the imshow function. You must make sure
% that you tell the GUI what axes to plot this image on.
imshow(imageGrayscale, 'InitialMagnification', 'fit', 'Parent', app.grayscaleAxes)


% Turn the axis off 
axis(app.grayscaleAxes,'off')
% add a title
title(app.grayscaleAxes,'Grayscale Image');

%% Move Some Bottom Rows of Pixels and Plot


% Set the variable newBottom equal to the top 200 rows of pixels
newBottom = imageGrayscale(1:200, :);

% Set the variable newTop equal to the remaining rows of pixels (201 to the
% end).
newTop = imageGrayscale(201:end, :);

% Combine the new top and bottom sets of pixels. This essentially takes the
% bottom 200 rows of pixesl and moves them to the top of the picture
Mnew = [newTop; newBottom];

% Display the new image using the imshow function. You must make sure
% that you tell the GUI what axes to plot this image on.
imshow(Mnew, 'InitialMagnification', 'fit', 'Parent', app.movedAxes);

% Turn the axis off 
axis(app.movedAxes,'off')
% Add a title
title(app.movedAxes,'Image with Shifted Rows');


%% Change Pixel Values and Plot

% Save a copy of the grayscale image that we will edit by changing the
% intensity
imageIntensity = imageGrayscale;

% Determine the number of pixels in the image by using the size function
[Nrow, Ncol] = size(imageIntensity);

% Use a nested FOR loop to cycle through each pixel, i.e., start at the
% first row and then cycle through each column before moving to the second
% row. This process continues for all the rows.
for iRow = 1:Nrow
    for iCol = 1:Ncol
        % If the pixle value is less than 100, reset the value to 0. If the
        % pixel value is between 100 and 150, reset the value to 100. For
        % all other pixel values, reset the value to 255 (the maximum
        %   value).
        if imageIntensity(iRow, iCol) < 100
            imageIntensity(iRow, iCol) = 0;
        elseif imageIntensity(iRow, iCol) < 150
            imageIntensity(iRow, iCol) = 100;
        else
            imageIntensity(iRow, iCol) = 255;
        end
    end
end
% Display the intensity altered image using the imshow function. You must
% make sure that you tell the GUI what axes to plot this image on.
imshow(imageIntensity, 'InitialMagnification', 'fit', 'Parent', app.intensityAxes);

% Turn the axis off 
axis(app.intensityAxes,'off')
% add a title
title(app.intensityAxes,'Image with Altered Intensity');