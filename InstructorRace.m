%% InstructorRace.m
%  This program animates a random race amongst three EG10112 instructors
%  using images.

% Jonathon Vasilak
% March 31, 2020
%  Clear memory
clear;
%  Clear Command Window
clc;
%  Close figures
close all;

%% Set Parameters
% Set default value for image width (we choose 20 for this application)
%    This will be used to make each of the images the same width
image_width = 20;

% y start value -- y value for where first image is located
yStart = 5; 

% default y spacing -- in between images
ySpacing = 5;

% Set the location of the finish line
finishLine = 145;

% Set the filename of the picture that you will read into MATLAB
%   the "filenames" variable is a cell array with each entry in the cell
%   array being filename
 filenames = {'ABartolini.jpg','BSmith.jpg','GWright.jpg','KMeyers.jpg',...
     'LMcWilliams.jpg','MLevis.jpg','MSeelinger.jpg','VGoodrich.jpg'};

% Get the number of filenames from the length of the cell array
num_files = length(filenames);

% Set the number of pictures to be used in the race
n_pictures = 3;

% Generate random indicies using the randperm function
%    picIndex will be an array of integers ranging from 1 to the length of
%    the filenames cell array.  It randomly selects nPictures number of
%    integers in the range without repeating any of the integers.
picIndex = randperm(num_files,n_pictures);

% Generate filenames
fileName1 = filenames{picIndex(1)};
fileName2 = filenames{picIndex(2)};
fileName3 = filenames{picIndex(3)};
%% READ IN IMAGES
% Read in the images using the imread function. Each image will be a
% three dimensional array with the information about the image:
%   the number of rows, number of columns, and RGB layers.
image1 = imread(fileName1);
image2 = imread(fileName2);
image3 = imread(fileName3);

% Flip the images (refer to the assigned videos for more information about
% why you need to flip the images)
for k = 1:3
   image1(:, :, k) = flipud(image1(:, :, k));
   image2(:, :, k) = flipud(image2(:, :, k));
   image3(:, :, k) = flipud(image3(:, :, k));
end

% Determine size of each
%     Remember MATLAB uses (row,column) order in storing 2-D arrays.\
%     Defining the x direction to be horizontal and y vertical
%     The row # corresponds to a y value or location
%     The column # correspons to a x value or location
[ny1, nx1, nz1] = size(image1);
[ny2, nx2, nz2] = size(image2);
[ny3, nx3, nz3] = size(image3);

%% SCALE THE IMAGE
% Scaling the images
%    As in the preparation videos we scale the image based on the desired
%    image_width which we defined at the top of the code.  We use the ratio
%    of ny/nx for each image to ensure that when the image is viewed at the
%    desired width, it will have the correct height to maintain the proper
%    image ratio.  Otherwise the image might look distorted (too wide or
%    too narrow).

% Scaling image 1
image1_height = image_width * (ny1/nx1);
xLL_image1 = image_width;
yLL_image1 = yStart;
xUR_image1 = xLL_image1 + image_width;
yUR_image1 = yLL_image1 + image1_height;
% Scaling Image 2
image2_height = image_width * (ny2/nx2);
xLL_image2 = image_width;
yLL_image2 = yUR_image1 + ySpacing;
xUR_image2 = xLL_image2 + image_width;
yUR_image2 = yLL_image2 + image2_height;
% Scaling Image 3
image3_height = image_width * (ny3/nx3);
xLL_image3 = image_width;
yLL_image3 = yUR_image2 + ySpacing;
xUR_image3 = xLL_image3 + image_width;
yUR_image3 = yLL_image3 + image3_height;

%% CREATE FIGURE
% Use the figure command to create a new figure
figure;

% Set the axis to the normal/default settings
axis xy;

% Ensure the spacing is equal in both x and y direction
axis equal;

% Set the axes limits
%   The x axis goes from 0 to a value of 5 past the finish line
%   The y axis will go from 0 to a value of 10 beyond the height of the
%   third image.
xMax = finishLine + 5;
yMax = yUR_image3 + 10;
% Turn hold on so the images plot all on one figure
hold on;

% Turn the grid on
grid on;

%% Plot images on the axis
% The image command puts the image on the current axis
pic(1,1) = image('CData', image1);
% The following commands set the position of the image on the current axis
pic(1,1).XData = [xLL_image1 xUR_image1];
pic(1,1).YData = [yLL_image1 yUR_image1];
% The image command puts the image on the current axis
pic(2,1) = image('CData', image2);
% The following commands set the position of the image on the current axis
pic(2,1).XData = [xLL_image2 xUR_image2];
pic(2,1).YData = [yLL_image2 yUR_image2];
% The image command puts the image on the current axis
pic(3,1) = image('CData', image3);
% The following commands set the position of the image on the current axis
pic(3,1).XData = [xLL_image3 xUR_image3];
pic(3,1).YData = [yLL_image3 yUR_image3];
%% ADDING FINISH LINE
% Add the finish line by plotting a vertical line
plot([finishLine, finishLine],[0,yMax], 'r--', 'LineWidth', 2);
text(finishLine - 20, yMax - 5, 'Finish Line');
% Pause for one second to update the display before the "race" starts
pause(1)

%% ANIMATING THE RACE
% Create a variable that controls whether the race continues or stops
doContinue = true;

% Use a while loop to continue the race until an image crosses the "finish
% line"
while doContinue
    % Cycle through the 3 images to update the position of each image based
    % on a random increase of position in the x direction
for iImage = 1:n_pictures
    
        % Create a step size between 1 and 10 (this is the distance the
        % image "travels" in each step.
cstep = randi([1,10]);
        
        % Update the XData property of the image corresponding to iImage by
        % the step size (i.e. cStep).
pic(iImage, 1).XData = pic(iImage, 1).XData + cstep;
        
        % Store the upper right coordinate of the current image to test
        % whether or not that image has crossed the finish line.
xUR_currentImage = pic(iImage, 1).XData(2);
        
        % If the image has crossed the finish line, change the doContinue
        % condition to be flase so the loop ends.
        if xUR_currentImage >= finishLine
            doContinue = false;
        end
end
        
    % Add a short pause to update the image and show the random step.
    pause(0.5)
end