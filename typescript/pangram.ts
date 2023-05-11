// A pangram is a sentence that contains every single letter of the alphabet at least once. 
// For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, 
// because it uses the letters A-Z at least once (case is irrelevant).
// 6 kyu
// 11 / 05 / 2023

// there are many ways to do that:

// First way: use regex and set
export const isPangramFirst = (phrase: string): boolean => new Set(phrase.toLowerCase().match(/[a-z]/g)).size === 26;

// Second way: make a map and use every to check
export const isPangramSecond = (phrase: string): boolean => ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
  .every(l => phrase.toLowerCase().includes(l))