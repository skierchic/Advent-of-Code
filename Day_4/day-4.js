// Read in input file and split into array of row strings
//.trim() removes any whitespace from the beginning or end (prevents a return at the end creating a line with NaN elements)
let fs = require('fs');
let input = fs.readFileSync('./day-4-input.txt', 'utf8').trim();
let rows = input.split('\n')

// takes in a passphrase and returns true if it's valid and false if it's not.
let check_passphrase = (passphrase) => {
  words = passphrase.split(' ').sort()
  for(let i = 0; i < words.length - 1; i++) {
    if (words[i] == words[i + 1]) {
      return false
    }
  }
  return true
}

//loop through rows and find the amoun to add to the checksum
let valid_passphrases = 0
rows.forEach((row) => {
  //split rows into numbers initialize min and max to first number
  if (check_passphrase(row)) {
    valid_passphrases++
  }

})
console.log(`There are ${valid_passphrases} valid passphrases`)
