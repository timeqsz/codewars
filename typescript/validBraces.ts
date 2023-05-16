// A function that takes a string of braces, and determines if the order of the braces is valid.
// 6 kyu
// 16 / 05 / 2023

// use Table-Driven Approach

export function validBraces(braces: string): boolean {
    let map = new Map<string, string>([['(',')'],['[',']'],['{', '}']])
    let stack = new Array<string>()
    for(let nextsymbol of braces){
      if(map.has(nextsymbol)){
        stack.unshift(nextsymbol)
      }
      else{
        let top = stack.shift()
        if(top === undefined || nextsymbol !== map.get(top)){
          return false
        }
      }
    }
    return stack.length === 0
  }