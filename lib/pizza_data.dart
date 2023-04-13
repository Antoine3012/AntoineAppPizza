import 'package:antoine_app_pizza/pizza.dart';

class PizzaData{
  static List<Pizza> buildList() {
    List<Pizza> list = [];
    list.add(Pizza(1, 'Barbecue', 'Sauce barbecue, mozzarella, oignons, poulet, jambon', 'pizza-bbq.jpg', 8));
    list.add(Pizza(2, 'Hawai', 'Sauce tomate, mozzarella, jambon, ananas', 'pizza-hawai.jpg', 9));
    list.add(Pizza(3, 'Epinards', 'Sauce tomate, mozzarella, épinards, champignons, oignons', 'pizza-spinach.jpg', 7));
    list.add(Pizza(4, 'Végétarienne', 'Sauce tomate, mozzarella, poivrons, champignons, oignons, olives, maïs', 'pizza-vegetable.jpg', 10));
    return list;
  }
}