import { Routes } from '@angular/router';

export const routes: Routes = [
  {
    path: 'dashboard',
    loadComponent: () =>
      import('./gifs/pages/dashboard/dashboard'),
    children: [
      {
        path: 'trending',
        loadComponent: () =>
          import('./gifs/pages/trending/trending'),
      },
      {
        path: 'search',
        loadComponent: () =>
          import('./gifs/pages/search/search'),
      },
      {
        // mandar argumentos dinamicos /:persona, tantos como queramos /:persona/:nombre
        path: 'history/:query',
        loadComponent: () =>
          import('./gifs/pages/gif-history/gif-history'),
      },
      {
        path: '**',
        redirectTo: 'trending',
      },
    ],
  },
  {
    path:'**',
    redirectTo: 'dashboard',
  }
];
