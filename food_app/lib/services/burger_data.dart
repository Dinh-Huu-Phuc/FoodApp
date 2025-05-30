
import 'package:food_app/model/burger_model.dart';


List<BurgerModel> getBurger(){
List<BurgerModel> burger=[];

BurgerModel burgerModel = new BurgerModel();

burgerModel.name = "Cheese Burger";
burgerModel.image = "assets/images/burger1.png";
burgerModel.price ="50";
burger.add(burgerModel);
burgerModel= new BurgerModel();

burgerModel.name = "TĐSV Burger";
burgerModel.image = "assets/images/burger2.png";
burgerModel.price ="80";
burger.add(burgerModel);
burgerModel= new BurgerModel();

burgerModel.name = "TTH Burger";
burgerModel.image = "assets/images/burger2.png";
burgerModel.price ="1000";
burger.add(burgerModel);
burgerModel= new BurgerModel();

burgerModel.name = "Hoang Burger";
burgerModel.image = "assets/images/burger2.png";
burgerModel.price ="100";
burger.add(burgerModel);
burgerModel= new BurgerModel();

burgerModel.name = "Margherita Burger";
burgerModel.image = "assets/images/burger2.png";
burgerModel.price ="100";
burger.add(burgerModel);
burgerModel= new BurgerModel();

burgerModel.name = "Margherita Burger";
burgerModel.image = "assets/images/burger2.png";
burgerModel.price ="100";
burger.add(burgerModel);
burgerModel= new BurgerModel();

return burger ;
}