%% processStudents.m
% This program will use the function DisplayStudentRecord to display the
% names and GPAs of students in a class, using structure arrays to store
% the student's information

% Jonathon Vasilak
% April 8, 2020
clear

clc

%% Create Data
% Uses structured arrays to create data concerning the students in class

student(1).firstName = 'Alfonso';
student(1).lastName = 'Bedoya';
student(1).gpa = 3.43;

student(2).firstName = 'Tonya';
student(2).lastName = 'Harding';
student(2).gpa = 2.77;

student(3).firstName = 'Warren';
student(3).lastName = 'Harding';
student(3).gpa = 2.30;

student(4).firstName = 'Warren';
student(4).lastName = 'Pierce';
student(4).gpa = 3.25;

%% Display Data
% Uses a for loop and the function DisplayStudentRecord to display the
% names and gpas of the students in the class

for i = 1:4
DisplayStudentRecord(student(i));
end