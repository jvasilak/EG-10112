function DisplayStudentRecord(theStudent)

%% DisplayStudentRecord.m
% Jonathon Vasilak
% This program reads a structured array which is prespecified and then
% displays  the name of the student and their GPA when called upon


disp(['Name: ', theStudent.firstName, ' ', theStudent.lastName])
disp(['GPA: ', num2str(theStudent.gpa)])
