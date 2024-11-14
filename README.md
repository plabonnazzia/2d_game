Simple Snake Game in MATLAB

This code implements a basic 2D snake game in MATLAB. The player controls a snake that grows longer by eating food (represented by a red square) and avoids colliding with itself or the walls.

How to Run:

Save the code: Save the provided code as a .m file (e.g., snake_game.m).
Run in MATLAB: Open MATLAB and navigate to the directory where you saved the file. Type snake_game in the command window and press Enter.
Gameplay:

The snake moves continuously to the right initially.
Change direction: While the game is running, use the following keyboard keys to change direction:
Up arrow: Move up
Down arrow: Move down
Left arrow: Move left
Right arrow (default): Move right
Eating food: When the snake's head (first element in the snake_x and snake_y arrays) collides with the food, the snake grows longer and the food reappears in a random location.
Game over: The game ends if the snake collides with itself or the walls. A message will be displayed indicating "Game Over!"
Code Breakdown:

Game parameters:
screen_width: Width of the game screen (pixels)
screen_height: Height of the game screen (pixels)
snake_length: Initial length of the snake
food_x and food_y: Randomly generated initial coordinates of the food
Initialize snake:
snake_x and snake_y: Arrays storing the x and y coordinates of the snake's body segments
Game loop (for loop):
The game runs for 1000 iterations (adjustable) to simulate continuous movement.
Inside the loop:
Player input is currently simulated as "right" movement. Replace this with actual keyboard input handling.
The snake's position is updated by shifting the body segments one position forward. The head (first element) is moved based on the current direction.
Food collision is checked. If a collision occurs, the snake grows, and the food is repositioned.
Self-collision and wall collision are checked. If a collision occurs, the game ends with a "Game Over!" message.
Visualization:
The game screen is cleared using clf.
A gray background rectangle representing the game area is drawn.
The food (red square) and the snake segments (green squares) are drawn using rectangle.
The axis limits are set to match the screen size.
The visualization is updated using drawnow to show the changes in real-time.
Customization:

You can modify the game parameters (screen_width, screen_height, snake_length) to adjust the game size and difficulty.
Implement proper keyboard input handling to control the snake's direction.
Enhance the game by adding features like speed control, point system, or power-ups.
