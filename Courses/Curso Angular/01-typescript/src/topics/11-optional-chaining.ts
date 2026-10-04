export interface Passenger {
    name: string;
    children?: string[];
}

const passenger1: Passenger = {
    name: 'Fernando',
}

const passenger2: Passenger = {
    name: 'Emmanuel',
    children: ['Abraham', 'Sofia'],
}

const returnChildrenNumber = ({name, children}: Passenger): number => {
    const amountOfChlidren = children?.length || 0;

    // si o si va a tener un children
    // if (!children) return 0;
    // const amountOfChlidren = children!.length || 0; Non-Null Assertion Operator 

    console.log(`${name} has ${amountOfChlidren} children`);
    
    children?.forEach(child => {
        console.log(child);
    })

    return amountOfChlidren;
}

returnChildrenNumber(passenger2);
returnChildrenNumber(passenger1);