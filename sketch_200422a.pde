int x = 100;
void setup(){
  size(900, 900);
  background(244, 194, 194);
  
}


void draw(){
  
  int travel = 8;
  float ang = 0.152;
  
  
  for(int i = 1; i <= x; i++){
    IntList seq = new IntList();
    int n = i;
    while(n != 1){ 
    seq.append(n);
    n = collatz(n);
  }

  seq.append(1);
  seq.reverse();
  resetMatrix();
  translate(0, 500);
  //resetMatrix();
  
  for(int j = 0; j < seq.size(); j++){
  int val = seq.get(j);
  if(val % 2 == 0)
  rotate(ang);
  else
  rotate(-ang);
  
  stroke(255, 46, 182, 20);
  strokeWeight(1);
  line(0, 0, travel, 0);
  translate(travel, 0);
  }
 }
 x = x + 100;

}

int collatz(int n){
  if(n % 2 == 0)
  return n/2;
  else 
  return (3 * n + 1)/2;
}
