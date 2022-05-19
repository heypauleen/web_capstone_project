class UserAccount {
  final String userid;

  UserAccount({required this.userid});

}
class UserAccountData {
   String userid;
   String email;
   String username;
   String password;
   String date_created;
   String user_type;

   UserAccountData({required this.userid, required this.email, required this.username,  required this.password,  required this.date_created, required this.user_type});
}
