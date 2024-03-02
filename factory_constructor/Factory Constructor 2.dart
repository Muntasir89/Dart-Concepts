//import 'package:meta/meta.dart';

void main(List<String>arguments){
    final user = User.admin(true);
}

class User{
    final String _firstName;
    final String _lastName;
    
    User(this._firstName, this._lastName);

    factory User.admin(bool admin){
        if(admin){
            print("It is admin user");
            return Admin(
            specialAdminField: 123,
            firstName: 'a',
            lastName: 'b',
        );
        }else{
            print("It is general user");
            return User('c', 'd');
        }
    }

    String get fullName => "$_firstName $_lastName";

    void signOut(){
        print('Signing Out.');
    }
}
class Admin extends User{
    final double specialAdminField;

    Admin({
        required this.specialAdminField,
        required String firstName,
        required String lastName,
    }): super(firstName, lastName);

    @override
    String get fullName => 'Admin: ${super.fullName}';

    @override
    void signOut(){

    }
}