# Touchless Interaction with 3D Object

This is my final year project with full title "REAL-TIME VISION-BASED TOUCHLESS INTERACTION IN COMPUTER GENERATED HEART MODEL USING A PRE-DEFINE OFFSET SCREEN DISTANCE (POSD) METHOD."


[Publication link](http://www.ums.edu.my/fssa/profile/index.php?page=indexpub&id_pekerja=2)

This prototype is built on Processing 2+ in 2014. The overall project can be split to 3 parts.

## 3D modelling

Software used to model the virtual heart is Autodesk 3DS. The heart model (exported as *.obj format) is then import into the Processing project with objLoader library and then render using the opengl library

```model.load("Heart.obj");```

## Augmented Reality (AR)

The AR concept used in the project is marker-based. A custom made marker is generated from [Marker Generator](https://webxr.io/marker-generator/) and inject into the Processing project with NyARToolkit AR library.

```
nya.addARMarker("mcgMarker.pat", 80);
nya.addNyIdMarker(0,80);
```

## Java code for interaction

There is a build in GUI for simple interaction with the following option to choose from: translate, rotate or to scale the size of the virtual heart. Boolean is declared for each operation as below.

```
boolean trans = true;
boolean rot = false;
boolean sca = false;
```

The GUI is being initiated upon startup ```void setup()``` togther with the rest of the background properties.

Next in ```void draw()```, this function allow us to turn on the camera and try to detect the marker. 

Once the program detected the marker ```void drawHeart() ```, the program will first set the matrix for the marker position and then interate all the pixels on the screen to store the background color. Some methematical operations are perform based on the changes of the pixel color at the background. Yay! Noq try to play around by using your bare hands to perform different operation at the virtual heart!

1. Translate (virtual heart will following the position of your hand)
2. Rotation (left side will rotate the virtual heart in clockwise on Y-axis meanwhile right side will rotate it counter-clockwise)
3. Scale (left side will enlarge the virtual heart with 0.01 scaling for every seconds meanwhile right side will reduce it by 0.01 scaling)