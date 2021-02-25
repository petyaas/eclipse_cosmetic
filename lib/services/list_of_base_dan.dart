class List_of_plan_base {
  bool plancheck;
  String plantext;

List_of_plan_base({
    this.plancheck,
    this.plantext}
    );

  void setcheckplan(bool check){
    plancheck=check;

  }
  void setplanktext(String text){
        plantext=text;

  }
  bool getplanchek(){
    return plancheck;
  }
  String getplantext(){
    return plantext;
  }
}