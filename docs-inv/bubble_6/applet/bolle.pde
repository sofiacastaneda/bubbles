class Bolle {
  float x;
  float y;
  float vx;
  float vy;
  float s = 40;
  
  PImage img;

  Bolle(float _x, float _y, PImage _img) {
    x = _x;
    y = _y;
    vx = random(-2, 2);
    vy = random(-2, 2);
    img = _img;
  }

  void drawShape() {

    float y2 = y;

    x=x+2;
    y2 = y + sin(x / 13) * 10;

    image(img, x, y2, big, big);

  }

  void move() {
    x = x + vx;
    y = y + vy;

    if (x <= s/2 || x >= width - s/2) {
      vx = -vx;
    }

    if (y <= s/2 || y >= height - s/2) {
      vy = -vy;
    }
  }  

}

