%% Coding Update

% This program will place three disks on a predefined window and simulate
% the movement of the disks, when the disks collide with each other or the
% wall, they change their direction of movement. The disks continue to move
% until they have collided with the wall a total of 20 times combined.

% Jonathon Vasilak
% April 16, 2020

clear
clc

%% Define Parameters
% Creates a window and places three disks in the window

f = createWindow(200,300);
B1 = drawBall(100,50,10,'b');
B2 = drawBall(130,80,10,'r');
B3 = drawBall(40,200,10,'g');

% Records the intitial center point of the balls
centerB1 = [100, 50];
centerB2 = [130, 80];
centerB3 = [40, 200];

% Records the intitial number of wall interactions
wall_interactions = 0;

% Sets the initial movement directions of all three balls
dx1 = randi([-1 1]);
dy1 = randi([-1 1]);
dx2 = randi([-1 1]);
dy2 = randi([-1 1]);
dx3 = randi([-1 1]);
dy3 = randi([-1 1]);

%% Animate movement
% Uses a while loop to move the balls, simulating collisions between the
% balls and each other as well as the balls and the walls
while wall_interactions < 20
    % Move Balls
    xMove(B1, dx1);
    centerB1(1,1) = centerB1(1,1) + dx1;
    yMove(B1, dy1);
    centerB1(1,2) = centerB1(1,2) + dy1;
    xMove(B2, dx2);
    centerB2(1,1) = centerB2(1,1) + dx2;
    yMove(B2, dy2);
    centerB2(1,2) = centerB2(1,2) + dy2;
    xMove(B3, dx3);
    centerB3(1,1) = centerB3(1,1) + dx3;
    yMove(B3, dy3);
    centerB3(1,2) = centerB3(1,2) + dy3;
    drawnow
    
    % Wall collisions
    
    % Ball 1
    % right
    if centerB1(1,1) >= 195
        dx1 = -dx1;
        wall_interactions = wall_interactions + 1;
    end
    % left
    if centerB1(1,1) <= 5
        dx1 = -dx1;
        wall_interactions = wall_interactions + 1;
    end
    % top
    if centerB1(1,2) >= 295
        dy1 = -dy1;
        wall_interactions = wall_interactions + 1;
    end
    % bottom
    if centerB1(1,2) <= 5
        dy1 = -dy1;
        wall_interactions = wall_interactions + 1;
    end
    
    % Ball 2
    % right
    if centerB2(1,1) >= 195
        dx2 = -dx2;
        wall_interactions = wall_interactions + 1;
    end
    % left
    if centerB2(1,1) <= 5
        dx2 = -dx2;
        wall_interactions = wall_interactions + 1;
    end
    % top
    if centerB2(1,2) >= 295
        dy2 = -dy2;
        wall_interactions = wall_interactions + 1;
    end
    % bottom
    if centerB2(1,2) <= 5
        dy2 = -dy2;
        wall_interactions = wall_interactions + 1;
    end
    
    % Ball 3
    % right
    if centerB3(1,1) >= 195
        dx3 = -dx3;
        wall_interactions = wall_interactions + 1;
    end
    % left
    if centerB3(1,1) <= 5
        dx3 = -dx3;
        wall_interactions = wall_interactions + 1;
    end
    % top
    if centerB3(1,2) >= 295
        dy3 = -dy3;
        wall_interactions = wall_interactions + 1;
    end
    % bottom
    if centerB3(1,2) <= 5
        dy3 = -dy3;
        wall_interactions = wall_interactions + 1;
    end
    
    % Two Ball Collisions
    % Balls 1 and 2
    if abs(centerB1 - centerB2) <= 10
        if dx1 == dx2
            dy1 = -dy1;
            dy2 = -dy2;
        elseif dy1 == dy2
            dx1 = -dx1;
            dx2 = -dx2;
        else
            dx1 = -dx1;
            dy1 = -dy1;
            dx2 = -dx2;
            dy2 = -dy2;
        end
    end
    % Balls 1 and 3
    if abs(centerB1 - centerB3) <= 10
        if dx1 == dx3
            dy1 = -dy1;
            dy3 = -dy3;
        elseif dy1 == dy3
            dx1 = -dx1;
            dx3 = -dx3;
        else
            dx1 = -dx1;
            dy1 = -dy1;
            dx3 = -dx3;
            dy3 = -dy3;
        end
    end
    % Balls 2 and 3
    if abs(centerB2 - centerB3) <= 10
        if dx2 == dx3
            dy2 = -dy2;
            dy3 = -dy3;
        elseif dy2 == dy3
            dx2 = -dx2;
            dx3 = -dx3;
        else
            dx2 = -dx2;
            dy2 = -dy2;
            dx3 = -dx3;
            dy3 = -dy3;
        end
    end
    
end