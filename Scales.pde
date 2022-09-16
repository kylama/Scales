void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}

void draw() {
  //scale(250,250);
  
  boolean shift = true;
  for(int y = 500; y >= 0; y -= 20)
  {
    for(int x = 0; x <= 500; x += 80)
    {
      if(shift == true)
        scale(x+40,y);
      else
        scale(x,y);
    }
    if(shift == true)
      shift = false;
    else
      shift = true;
  }
  
}

void scale(int x, int y) {
  noStroke();
  
  float r = (float)(Math.random() * 41) + 155; //175;
  float g = (float)(Math.random() * 41) + 150; //170;
  float b = (float)(Math.random() * 41) + 200; //220;
  
  fill(r,g,b);
  beginShape();
  curveVertex(x-12,y+22);
  curveVertex(x-12,y+22);
  curveVertex(x-4,y+30);
  curveVertex(x,y+35);
  curveVertex(x+4,y+30);
  curveVertex(x+12,y+22);
  curveVertex(x+12,y+22);
  endShape();
  
  int ellipseY = y;
  while(ellipseY >= y-25) {
    fill(r,g,b);
    ellipse(x,ellipseY,50,50);
    ellipseY -= 1;
    r = r - 175/50;
    g = g - 170/50;
    b = b - 220/50;
  }
}


