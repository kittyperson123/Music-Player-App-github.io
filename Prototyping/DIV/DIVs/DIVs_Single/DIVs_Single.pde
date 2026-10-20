DIVs_Single
















































*/
//
//Display CANVAS
println(displayWidth, displayHeight);
//size(); //displayWidth //displayHeight
int appWidth = displayWidth;
int appHeight = displayHeight;














*/
//
//rect(X, Y, Width, Height); //From debugger and opnline documentation
//Note: the debugger expects rectangles to have float or double type variables
//Using Ratios measured by ruler
int paperWidth = 228;
int paperHeight = 188;
//
int divX = 60;
int divY = 43;
int divWidth = 120;
int divHeight = 92;
//

*/
float testDivX = appWidth * divX/paperWidth; //Awkward DIV, must rename all Mr. Mercer's Variables
float testDivY = appHeight * divY/paperHeight;
float testDivWidth = appWidth * divWidth/paperWidth;
float testDivHeight = appHeight * divHeight/paperHeight;
//
//DIVs: dividing out the CANVAS in non-overlapping sections
rect(testDivX, testDivY, testDivWidth, testDivHeight);
//


 
 
 
 
 
*/
//
//End MAIN Program
