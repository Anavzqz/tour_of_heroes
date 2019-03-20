import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'hero.dart';

@Component(
  selector: 'my-hero',
  template: '''
    <div *ngIf="hero != null">
      <h2>{{hero.name}}</h2>
      <div><label>id: </label>{{hero.id}}</div>
      <div>
        <label>name: </label>
        <input [(ngModel)]="hero.name" placeholder="name">
      </div>
    </div>''',
  directives: [coreDirectives, formDirectives],
)
class HeroComponent {
  @Input() //Con ngModel modifica la linea 9, dependiendo lo que haya en el input
  Hero hero;
}