  int a = 25;
  int c1 = (int) (Math.random() * 225);
  int c2 = (int) (Math.random() * 225);
  int c3 = (int) (Math.random() * 225);
  
  public void setup() {
    size(400, 400);
  }

  public void draw() {
    background(0);
    fill(c1, c2, c3);
    sierpinski(85, 350, a);
  }

  public void mouseDragged() { // drag on the top of the screen to increase len; drag on the bottom to decrease
                               // len
    if (mouseY < 200) {
      a += 5;
    }
    if (mouseY > 200) {
      a -= 5;
    }
    c1 = (int) (Math.random() * 225);
    c2 = (int) (Math.random() * 225);
    c3 = (int) (Math.random() * 225);
  }

  public void sierpinski(int x, int y, int len) {
    if (len <= 50) {
      triangle(x, y, x + len / 2, y - len, x + len, y);
    } else {
      sierpinski(x, y, len / 2);
      sierpinski(x + len / 2, y, len / 2);
      sierpinski(x + len / 4, y - len / 2, len / 2);
    }
  }
