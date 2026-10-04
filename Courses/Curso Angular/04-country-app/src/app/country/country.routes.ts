import { Routes } from "@angular/router";
import { ByCapital } from "./pages/by-capital/by-capital";
import { CountryLayout } from "./layouts/CountryLayout/CountryLayout";
import { ByCountry } from "./pages/by-country/by-country";
import { ByRegion } from "./pages/by-region/by-region";
import { CountryPage } from "./pages/country-page/country-page";


export const countryRoutes: Routes = [
  {
    path: '',
    component: CountryLayout,
    children: [
      {
        path: 'by-country',
        component: ByCountry,
      },
      {
        path: 'by-capital',
        component: ByCapital,
      },
      {
        path: 'by-region',
        component: ByRegion,
      },
      {
        path:'by/:code',
        component: CountryPage,
      },
      {
        path: '**',
        redirectTo: 'by-capital',
      },
    ]
  },
  // {
  //   path: 'country',
  //   loadChildren: () => import(''),
  // },
];

export default countryRoutes;
