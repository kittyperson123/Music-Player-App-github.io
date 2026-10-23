image_One





































 */
//Display
//fullScreen(); //Landscape
size(150, 250); //Portrait, testing smaller DIVs ONLY
int appWidth = width; // displayWidth
int appHeight = height; // displayHeight
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\theight:\t\t"+height);
//
//Population
float imageDivX = appWidth * 50/217; //Akward DIVs and Variables, must use formulae
float imageDivY = appHeight * 43/176;
float imageDivWidth = appWidth * 120/221;
float imageDivHeight = appHeight * 95/189;
//
//Image Aspect Ratio Vars & Algorithm
//Directory or Pathway, Concatenation
String upArrow = "../../";
String folder = "Dependancies/Images/";
String bike = "bike";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow + folder + bike + fileExtensionJPG;
//println("Bike Pathway:", imagePathway1);
//
//Image Loading
PImage image1 = loadImage( imagePathway1 );
//println(image1.width, image1.height, image1.parent);
//
//Aspect Ratio
float image1AspectRatio_GreaterOne = ( image1.width >= image1.height ) ? float(image1.width)/float(image1.height) : float(image1.height)/float(image1.width) ; //Ternary Operator
//ERROR, int populating float: truncating-adding zeros, casting
/* Line Notes
//
 */
//println("Testing for Decimals, formula unsing ints:", image1.width/image1.height);
//println("After casting added, Aspect Ratio >1:", image1AspectRatio_GreaterOne);
//Algorithm Decisions (choice)
float imageWidthAdjusted1 = imageDivWidth;
float imageHeightAdjusted1 = ( image1.width >= imageDivWidth ) ? imageWidthAdjusted1 * image1AspectRatio_GreaterOne : imageWidthAdjusted1 / image1AspectRatio_GreaterOne ; //Ternary Operator
//Verification: does it look good
//Must change Design of DIVs | Resize Image File
//Verification by println ... if imageHeightAdjusted1>imageDivHeight, then it will not fit even though adjusted width fits
//
//DIV
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//
image (image1, 0, 0, appWidth, appHeight );
//image( image1, imageDivX, imageDivY, imageDivWidth, imageDivHeight );
image( image1, imageDivX, imageDivY, imageWidthAdjusted1, imageHeightAdjusted1 );
//
//End MAIN Program
