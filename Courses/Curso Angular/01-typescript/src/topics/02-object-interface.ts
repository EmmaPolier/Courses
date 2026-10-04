
const skills: string[] = ['Bash', 'Counter', 'Healing'];

//Las interfaces son equivalentes a 0 lineas de codigo en javascript
interface Character {
    name: string,
    hp: number,
    skills: string[]
    hometown?: string;
    // hometown: string | undefined;
}

const strider: Character = {
    name: 'Strider',
    hp: 100,
    skills: ['Bash', 'Counter']
}

strider.hometown = 'Rivendell';

console.table(strider);

export {};