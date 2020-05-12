import jp.nyatla.nyar4psg.*;    // The NyARToolkit Processing library

// the dimensions at which the AR will take place. with the current library 1280x720 is about the highest possible resolution.
int arWidth = 1280;
int arHeight = 720;

MultiMarker nya;

void setupAR()
{
  // Create a new MultiMarker at a specific resolution (arWidth x arHeight), with the default camera calibration and coordinate system
  nya = new MultiMarker(this, arWidth, arHeight, "camera_para.dat", NyAR4PsgConfig.CONFIG_DEFAULT);

  // Set the delay after which a lost marker is no longer displayed. by default set to something higher, but here manually set to immediate.
  nya.setLostDelay(1);
  
  // Call of marker pattern
  nya.addARMarker("mcgMarker.pat", 80);
  nya.addNyIdMarker(0,80);
}
