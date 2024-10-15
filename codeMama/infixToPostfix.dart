/*
Problem Statement
Write a program to convert infix expression into postfix expression.
Infix Expression: Operator will be between operands.
e.g. 1+2 Postfix Expression: Operator will be after operands.e.g. 12+

Input
The program will take a string
S as input.

Output
The output will print a string consists of operators and operands.

Constraints
0 ≤ |S| ≤ 10000
Only characters from 0-9 will be used
/ will be there as operator along with ( ) in input.
 */

import 'dart:collection';
import 'dart:io';

String infixToPostfix(String infix){
  Queue<String> operatorStack = Queue();
  String postFix = "";
  for(int i = 0; i<infix.length; i++){
    String char = infix[i];
    //if character is an operand, add it to the result
    if(isOperand(infix[i])){
      postFix += infix[i];
    } else if(char == "("){
      operatorStack.addFirst(char);
    } else if(char == ")"){
      while(operatorStack.isNotEmpty && operatorStack.first != "("){
        postFix += operatorStack.removeFirst();
      }
      operatorStack.removeFirst(); //to remove "(";
    } else{
      /* check current operator precedence with the top most
       operator's precedence in the stack */
      while(operatorStack.isNotEmpty && precedence(char) <= precedence(operatorStack.first)){
        postFix += operatorStack.removeFirst();
      }
      operatorStack.addFirst(char);
    }
  }
  while(operatorStack.isNotEmpty){
    postFix += operatorStack.removeFirst();
  }
  return postFix;
}

bool isOperand(String char){
  RegExp digRegExp = RegExp(r'[0-9]');
  if(digRegExp.hasMatch(char)){
    return true;
  }
  return false;
}

int precedence(String char){
  if(char == "+" || char == "-") return 1;
  if(char == "*" || char == "/") return 2;
  return -1;
}

main() {
  String infix = stdin.readLineSync()!;
  print(infixToPostfix(infix));
}
