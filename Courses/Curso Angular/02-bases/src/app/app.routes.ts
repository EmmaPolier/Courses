import { Routes } from '@angular/router';
import { Counter } from './pages/counter/counter';
import { HeroPageComponent } from './pages/hero/hero-page';
import { Homework } from './pages/homework/homework';
import { Dragonball } from './pages/dragonball/dragonball';
import { DragonballSuper } from './pages/dragonball-super/dragonball-super';

export const routes: Routes = [
  // { path: '', redirectTo: '/hero', pathMatch: 'full'},
  {
    path: '',
    component: Counter,
  },
  {
    path: 'hero',
    component: HeroPageComponent,
  },
  {
    path: 'homework',
    component: Homework,
  },
  {
    path: 'dragonball',
    component: Dragonball,
  },
  {
    path: 'dragonball-super',
    component: DragonballSuper,
  },
  {
    path: '**',
    redirectTo: '',
  }
];
