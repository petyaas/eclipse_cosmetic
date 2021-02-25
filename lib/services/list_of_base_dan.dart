class List_of_plan_base {
  bool plancheck;
  String plantext;
  String plantextmini;

List_of_plan_base({
    this.plancheck,
    this.plantext,
    this.plantextmini
    }
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