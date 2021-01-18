import interfascia.*;
import processing.sound.*;

/*

parentDirectory
  mods
    format.md
    exampleMod
      data
      mod.json
  application.windows64
    data
    java
    lib
    source
    Skratch_Tower.exe
  updater.windows64
    java
    lib
    Update.exe
*/

boolean inDevelopment = true;
boolean init = true;
JSONObject unitProperties;
JSONArray maps;
String parentDirectory;
String[] test;

void setup() {
  if(inDevelopment) {
    background(#FF0000);
    fill(255);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("In Dev", 50, 47);
  }
  parentDirectory = sketchFile("").getParent();
  test = loadStrings("test.SKmap");
}

void draw() {
  if(init) {
    delay(1000);
    init = false;
  } else {
    println(parentDirectory);
    printArray(test);
    exit();
    
  }
}
