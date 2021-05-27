# APCS-Tetris
Prototype: https://docs.google.com/document/d/1BRN-SeDw0srAglKlCprYc-ydPAaK-cCEwl2CCe1ZDyI/edit?usp=sharing <br />
Group Name: Tete-a-Tetris <br />
Group Member names: Alexander Dickerson, Josephine Lee <br />
# Brief Project Description:
Differently shaped tetrominoes fall from the top of the grid. A completed row clears the row and the remaining blocks above the completed row shift down, and the score increases. The game ends when the user can not play the current piece because the user tries to play a piece that does not fit in the window.
# Log
**5/25:** Josephine: I constructed all the methods outlined in our current UML design. I also created private int[][] for each of the 7 shapes and completed shiftDownContinuously() in Piece.pde and void draw() in Tetris.pde

**5/25:** Alexander: Created the background and added the background reset to draw(). Added a color variable and an isActive variable to Piece. Created a skeleton for the Piece constructor; it still needs different colors, and the coordinates will either be changed here or adapted by the display.

**5/26** Josephine: We created the constructor for the Background class and its display(). We started the left(), right(), and down() for Piece, but they still need to check for occupied spaces. Access methods getCoords() and getColor() were adde to Piece for the Background methods.

Alexander: We created the constructor for the Background class and its display(). We started the left(), right(), and down() for Piece, but they still need to check for occupied spaces. Access methods getCoords() and getColor() were adde to Piece for the Background methods.
