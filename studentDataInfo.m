%% studentDataInfo.m
%  This program creates a structured array of student information with the 
%  following fieldnames:
%       - Name (name)
%       - Major (major)
%       - Graduation Year (gradYear)
% 
%  The data is then stored in a file called studentDataInfo.mat. 

%  Megan Levis
%  March 3, 2020

%  Clear memory
clear
%  Clear Command Window
clc

%% Set up Values
% Use assignment statements to input the information about the students.
% The information is stored in a data structure, called student. This data
% structure is an array (i.e., contains multiple students). Each student
% has a different index, that is the number in the () after  student. Then
% there are fieldnames that has more information about each student. The
% fieldnames come after the period. 
student(1).name = 'J. Bleck';
student(1).major = 'Electrical Engineering';
student(1).gradYear = 2018;

student(2).name = 'E. Mattel';
student(2).major = 'Electrical Engineering';
student(2).gradYear = 2017;

 student(3).name = 'C. McQuinn';
 student(3).major = 'Aerospace Engineering';
 student(3).gradYear = 2016;
 
 student(4).name = 'M. Williams';
 student(4).major = 'Chemical Engineering';
 student(4).gradYear = 2017;
 
 student(5).name = 'K. Hargs';
 student(5).major = 'Computer Science';
 student(5).gradYear = 2018;
 
 student(6).name = 'P. Falco';
 student(6).major = 'Civil Engineering';
 student(6).gradYear = 2017;
 
 student(7).name = 'G. Carver';
 student(7).major = 'Mechanical Engineering';
 student(7).gradYear = 2018;


%% Save the Data
% Use the save function to save the data on the students in a file called
% studentDataInfo.mat. 
% When using the save function, the first input is the filename where the
% data will be stored. The second input is the name of the variable that
% you want to store in the file. You can have additional inputs for
% additional variables that you want to store. The variables are listed as
% strings. If you only list the filename, all the variables in the
% Workspace are saved in the .mat file. 
save('studentDataInfo.mat', 'student');