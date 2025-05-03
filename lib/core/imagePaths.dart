class ImagePath {
  static String getImagePath(projectName,index){
    print("assets/${projectName}/unnamed (${index}).webp");
    return projectName == null?"assets/waquar_image3.jpg":"assets/${projectName}/unnamed (${index}).webp";
  }
}