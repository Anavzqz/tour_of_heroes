import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:tour_of_heroes/app_component.template.dart' as ng;

import 'main.template.dart' as self;

@GenerateInjector(
  routerProvidersHash, // You can use routerProviders in production
)
final InjectorFactory injector = self.injector$Injector;//Cambié self. por ng. antes de Injector por que salia error

void main() {
  runApp(ng.AppComponentNgFactory, createInjector: injector);
}
