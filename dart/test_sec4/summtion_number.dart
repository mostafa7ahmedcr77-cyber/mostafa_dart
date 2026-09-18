void main() {
  List<int> array = [2,3,4,5,6,7,8];

  int res = summationArray(array);
  print(res);

}

int summationArray(List<int> array) {
  int sum =0;

  for(int i=0 ; i<array.length ; i++) {
    sum = sum + array[i];

  }

  return sum ;

}


