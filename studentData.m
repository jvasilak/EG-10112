%% studentData.m
%  This program creates a structured array of student information and then
%  uses conditionals and loops to display only students that are: 
% 
%       1) Members of the class of 2018
%       2) Members of the class of 2018 and computer science majors
%
%  The fieldnames of the structured array are: 
%       - Name (name)
%       - Major (major)
%       - Graduation Year (gradYear)

%  
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

% Student 1: J. Bleck, Electrical Engineering, 2018;
% Student 2: E. Mattel, Electrical Engineering, 2017;
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

%% Display All Student Names with Grad Year = 2018
% Determine how many students there are in the data structure
Nstudents = length(student);

% Display a header that provides information about what will be displayed
disp('Students Graduating in 2018: ');

% Use a FOR loop to cycle through each student in the data structure.
for i = 1:Nstudents
   if student(i).gradYear == 2018
       disp(student(i).name);
   end
end
    % Use an IF statement to determine if the graduation year field (which
    % has a fieldname gradYear) is equal to 2018. If the graduation year is
    % 2018, display the student's name to the Command Window by 
    % using the name fieldname of the data structure.


%% Display Students with Grad Year = 2018 and Major in Comp Science
% Use a blank display to create an empty line in the Command Window

disp(' ');
% Display a header that provides information about what will be displayed
disp('Students Graduating in 2018 and majoring in computer science: ');

% Use a FOR loop to cycle through each student in the data structure.
    % Use an IF statement to determine if the graduation year field (which
    % has a fieldname gradYear) is equal to 2018 AND have a major of 
    % 'Computer Science'. Note that for AND conditional, we use &&. 
    % Additionally, since we are comparing a string, we use the strcmp 
    % function. If these two conditions are BOTH met, display the student
    % name.
    for i = 1:Nstudents
        if student(i).gradYear == 2018 && strcmp(student(i).major, 'Computer Science')
            disp(student(i).name);
        end
    end