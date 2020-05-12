import saito.objloader.*;       // For loading obj file (3D)

// Declaration of objects
OBJModel model;  
OBJModel tmpModel;

void setupModel()
{
  // Constructor
  model = new OBJModel(this);  
  tmpModel = new OBJModel(this);
  model.enableDebug();
  
  // Load filename
  model.load("Heart.obj");
  tmpModel.load("Heart.obj");
  
  model.translateToCenter();
  tmpModel.translateToCenter();
}

void drawModel()
{
  pushMatrix();
  tmpModel.draw();  // Render the temporary model
  popMatrix();
}
