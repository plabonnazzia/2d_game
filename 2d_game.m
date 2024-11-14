clc;
clear all;
close all;

% Game parameters
screen_width = 600;
screen_height = 400;
snake_length = 3;
food_x = randi([1, screen_width]);
food_y = randi([1, screen_height]);

% Initialize snake
snake_x = [screen_width/2, screen_width/2-10, screen_width/2-20];
snake_y = [screen_height/2, screen_height/2, screen_height/2];

% Game loop
for t = 1:1000
    % Get player input (replace with actual input method)
    direction = 'right'; % Example: Get direction from keyboard input

    % Update snake position
    for i = snake_length:-1:2
        snake_x(i) = snake_x(i-1);
        snake_y(i) = snake_y(i-1);
    end

    switch direction
        case 'up'
            snake_y(1) = snake_y(1) - 10;
        case 'down'
            snake_y(1) = snake_y(1) + 10;
        case 'left'
            snake_x(1) = snake_x(1) - 10;
        case 'right'
            snake_x(1) = snake_x(1) + 10;
    end

    % Check for food collision
    if snake_x(1) == food_x && snake_y(1) == food_y
        snake_length = snake_length + 1;
        food_x = randi([1, screen_width]);
        food_y = randi([1, screen_height]);
    end

    % Check for self-collision and wall collision
    for i = 2:snake_length
        if snake_x(1) == snake_x(i) && snake_y(1) == snake_y(i)
            disp('Game Over!');
            break;
        end
    end

    if snake_x(1) < 1 || snake_x(1) > screen_width || snake_y(1) < 1 || snake_y(1) > screen_height
        disp('Game Over!');
        break;
    end

    % Visualize the game
    clf;
    rectangle('Position', [0, 0, screen_width, screen_height], 'FaceColor', [0.8 0.8 0.8]);
    rectangle('Position', [food_x-5, food_y-5, 10, 10], 'FaceColor', 'r');

    for i = 1:snake_length
        rectangle('Position', [snake_x(i)-5, snake_y(i)-5, 10, 10], 'FaceColor', 'g');
    end

    axis([0 screen_width 0 screen_height]);
    drawnow;
end