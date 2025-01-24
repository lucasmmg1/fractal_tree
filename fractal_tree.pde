float angle;

public void setup() 
{
  size(800, 600);
  background(255);
  stroke(0);
  angle = radians(35); 
  translate(width / 2, height);
  DrawTree(random(50, 175));
}
public void draw()
{
}

void keyPressed()
{
  if (key == 'r' || key == 'R')
  {
    background(255);
    angle = radians(35); 
    translate(width / 2, height);
    DrawTree(random(50, 175));
  }
}

private void DrawTree(float branchLength)
{
  DrawBranch(branchLength);
  
  if (branchLength > 4) 
  {
    Right(branchLength);
    Left(branchLength);
    return;
  }
  
  DrawLeaves();
}
private void DrawBranch(float branchLength) 
{
  line(0, 0, 0, -branchLength);
  translate(0, -branchLength); //<>//
}

private void Right(float branchLength)
{
  pushMatrix();
  rotate(angle + random(-0.2, 0.2));
  DrawTree(branchLength * (0.67 + random(-0.1, 0.1)));
  popMatrix();
}

private void Left(float branchLength)
{
  pushMatrix();
  rotate(-angle + random(-0.2, 0.2));
  DrawTree(branchLength * (0.67 + random(-0.1, 0.1)));
  popMatrix();
}
private void DrawLeaves()
{
  float leavesRadious = random(1, 5);
  fill(0, 50, 0);
  ellipse(0, 0, leavesRadious, leavesRadious);
}
