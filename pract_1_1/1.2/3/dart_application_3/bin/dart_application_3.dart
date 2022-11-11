import 'dart:io';
void main() {
  int n = 10;
  int m = 10;

  var x = List.generate(m, (i) => List.generate(n, (j) => 1));

  for(int i = 1; i < x.length; i++){
    for(int j = 1; j < x.length; j++){
      x [i] [j] = 0;

      if (x[i] [j] == 0){
        x[i] [j] = 1;
      }

      x [i][j] = x [i - 1][j] + x [i][j - 1];
    }
  }
  
  for (int i = 0; i < x.length; i++){
    for (int j = 0; j < x.length; j++){
      stdout.write("${x [i][j]} ");
      stdout.write("  ");
    }
    print("");
  }
}