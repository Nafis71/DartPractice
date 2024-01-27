var x = 10;
var y = 5.2922222;
var sum = x + y;
var msg = "Summation of x and y is : ";

void main(){
  print(msg);
  //printing double number with multiple decimal values
  print(sum);

  //printing double number with fixed decimal values in this case it's (3)
  print(sum.toStringAsFixed(3));

  //it will give us a round number (.toStringPrecision(2))
  print(sum.toStringAsPrecision(2));
}