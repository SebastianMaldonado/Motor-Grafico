Motor_Grafico motor = new Motor_Grafico (5100, 5100);
PImage temp;
SystemInfo RAM = new SystemInfo ();

void setup(){
  fullScreen();
  motor.inicializar();
}

void draw(){
      background(0);
         
         
      motor.mostrar("fila-1-columna-1", 0, 0, 1001, 1001);
      motor.mostrar("fila-1-columna-2", 1000, 0, 1001, 1001);
      motor.mostrar("fila-1-columna-3", 2000, 0, 1001, 1001);
      motor.mostrar("fila-1-columna-4", 3000, 0, 1001, 1001);
      motor.mostrar("fila-1-columna-5", 4000, 0, 1001, 1001);
      motor.mostrar("fila-2-columna-1", 0, 1000, 1001, 1001); 
      motor.mostrar("fila-2-columna-2", 1000, 1000, 1001, 1001); 
      motor.mostrar("fila-2-columna-3", 2000, 1000, 1001, 1001); 
      motor.mostrar("fila-2-columna-4", 3000, 1000, 1001, 1001); 
      motor.mostrar("fila-2-columna-5", 4000, 1000, 1001, 1001);
      
      motor.mostrar("fila-3-columna-1", 0, 2000, 1001, 1001);
      motor.mostrar("fila-3-columna-2", 1000, 2000, 1001, 1001);
      motor.mostrar("fila-3-columna-3", 2000, 2000, 1001, 1001);
      motor.mostrar("fila-3-columna-4", 3000, 2000, 1001, 1001);
      motor.mostrar("fila-3-columna-5", 4000, 2000, 1001, 1001);
      motor.mostrar("fila-4-columna-1", 0, 3000, 1001, 1001);
      motor.mostrar("fila-4-columna-2", 1000, 3000, 1001, 1001);
      motor.mostrar("fila-4-columna-3", 2000, 3000, 1001, 1001);
      motor.mostrar("fila-4-columna-4", 3000, 3000, 1001, 1001);
      motor.mostrar("fila-4-columna-5", 4000, 3000, 1001, 1001);
      motor.mostrar("fila-5-columna-1", 0, 4000, 1001, 1001);
      motor.mostrar("fila-5-columna-2", 1000, 4000, 1001, 1001);
      motor.mostrar("fila-5-columna-3", 2000, 4000, 1001, 1001);
      motor.mostrar("fila-5-columna-4", 3000, 4000, 1001, 1001);
      motor.mostrar("fila-5-columna-5", 4000, 4000, 1001, 1001);
      
  println(RAM.usedMem()/1000000); 
  
  
   //motor.mostrar("Tablero - Monopolio", 0,0, 3000, 3000);
   
   //image(temp, x, y);
    
  if (motor.mov_mg) {
    motor.mov_mg = false;
    motor.reiniciar();
  }
}

void mousePressed(){
  motor.presionar();
}

void keyPressed(){
  motor.mover();
}

void mouseWheel (MouseEvent event){
  motor.zoom(event.getCount());
}
