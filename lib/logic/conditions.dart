class Condition{
  late String c;
  late String img;
  String GetCondition(String cond){
    if(cond.contains('rain')){
      c='Its Raining Outside';
      print("Its Raining");
      img="https://i.pinimg.com/736x/38/b0/4c/38b04ccb0dbdb3bb822f0e607d4da8da.jpg";
    }
    else if(cond.contains('clear')){
      c="Its Clear Sky Outside";
      print("Its clear");
      img="https://t3.ftcdn.net/jpg/02/70/92/68/360_F_270926864_i2D8igkbTP5EF2Fl9tU8Kcopa8EcZvC7.jpg";
    }
    else if (cond.contains('snow')){
      c="Its Snowing Outside";
      print('Its Snowing');
      img="https://img.freepik.com/premium-vector/snowy-winter-vertical-background-vector-illustration_506604-322.jpg?w=2000";
    }
    else{
      c=cond;
      img='https://images.unsplash.com/photo-1580826237584-fda5b612e1bc?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8fA%3D%3D';
    }
    return c;
  }
}