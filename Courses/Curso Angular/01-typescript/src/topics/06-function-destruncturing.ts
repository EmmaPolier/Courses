export interface Product {
    description: string;
    price: number;
}

const phone: Product = {
    description: 'Nokia A1',
    price: 150.0
}

const tablet: Product = {
    description: 'iPad Air',
    price: 250.0
}

interface taxCalculationOptions {
    tax: number;
    products: Product[];
}

// [number, number] -> yo se que me va a devolver dos numeros y no un arreglo de numeros number[]
// function taxCalculation({products, tax}: taxCalculationOptions ): [number, number] {
export function taxCalculation(options: taxCalculationOptions ): [number, number] {
    let total = 0;
    // lo desestructuro dentro de la funcion
    const {tax, products} = options;
    // products lo desestructuro obteniendo su price
    products.forEach(({price}) => {
        total += price;
    });
    return [total, total * tax];
}

const shoppingCart = [phone, tablet];
const tax = 0.15;

// total y tax desestructurado
const [total, taxTotal] = taxCalculation({
    products: shoppingCart,
    tax,
})

console.log('Total', total);
console.log('Tax', taxTotal);