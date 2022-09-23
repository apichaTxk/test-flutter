class ProfileModel{
  int id = 0;
  String firstname = '';
  String lastname = '';
  String email = '';
  String phone = '';

  ProfileModel(int id, String firstname, String lastname, String email, String phone){
    this.id = id;
    this.firstname = firstname;
    this.lastname = lastname;
    this.email = email;
    this.phone = phone;
  }

  ProfileModel.empty(){
    this.id = 0;
    this.firstname = '';
    this.lastname = '';
    this.email = '';
    this.phone = '';
  }
}