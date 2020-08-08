// Main function 
void main() { 
    
  List<int> lst = [121, 12, 33, 14, 3]; 

  var largest = lst[0]; 

  lst.forEach((e) => e > largest ? largest = e : largest=largest);

  print("Largest value in the list : $largest"); 
}
