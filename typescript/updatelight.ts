// Thinkful - Logic Drills: Traffic light
// the logic of traffic light
// 8 kyu
// 23 / 05 / 2023

// traffic light logic use switch
export function updateLight(current: string): string {
    switch (current){
        case 'green':
            return 'yellow';
        case 'yellow':
            return 'red';
        case 'red':
            return 'green';
    }
    return 'error';
}

// traffic light logic use table driven
export function updateLighttable(current: string): string {
    const lighttable:Map<string,string> =new Map ([["green","yellow"], ["yellow","red"],["red","green"]])
    return lighttable.has(current)? lighttable.get(current)!:"error";
}

// why not use the table way? because for this situation, the traffic light doesn't change in a long time.
// we don't need to use the table driven way, just use switch is OK.