/*
宮下研B4M1スキルアップゼミ用サンプルコードのサンプルコード
出典:https://processing.org/examples/createimage.html
*/

PImage img;

void setup() {
  size(640, 360);
  img = createImage(230, 230, ARGB);
  for(int i = 0; i < img.pixels.length; i++) {
    float a = map(i, 0, img.pixels.length, 255, 0);
    img.pixels[i] = color(0, 153, 204, a);
  }
}

void draw() {
  background(0);
  image(img, 90, 80);
  image(img, mouseX-img.width/2, mouseY-img.height/2);
}
