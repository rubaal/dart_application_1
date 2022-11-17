main(){
var cust1= saveAccount();
cust1.balance= 600000;
cust1.withdraw();
cust1.diposit();
var cust2= customer();
cust2.balance=500;
cust2.newbalance=40000;
cust2.diposit();
cust2.withdraw();
}

abstract class bank{
  num? balance;
  String? name;
  void withdraw();
  void diposit();
}

class saveAccount extends bank{
  @override
  void withdraw() {
    // TODO: implement diposit
    if(balance!>=50000){
      print("you can");
    } else{
      print("you'r balance not enough");
    }
  }

  @override
  void diposit() {
    // TODO: implement withdraw
    print("you'r balance =${balance}");
  }
}

class customer extends bank{
  num? newbalance;
  @override
  void diposit() {
    // TODO: implement diposit
    
    newbalance!= newbalance!+balance!;
    print("acount = ${newbalance}");
  }

  @override
  void withdraw() {
    // TODO: implement withdraw
    print(balance);
  }

}