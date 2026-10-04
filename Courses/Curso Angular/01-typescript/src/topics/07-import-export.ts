import { type Product, taxCalculation } from './06-function-destruncturing'

const shoppingCart: Product[] = [
    {
        description: 'Nokia',
        price: 120
    },
    {
        description: 'iPad',
        price: 150
    }
];

const [total, tax] = taxCalculation({
    products: shoppingCart, 
    tax: 0.03
});

console.log('Total', total);
console.log('Tax', tax);