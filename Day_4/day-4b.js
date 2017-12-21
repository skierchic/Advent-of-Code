// Read in input file and split into array of row strings
//.trim() removes any whitespace from the beginning or end (prevents a return at the end creating a line with NaN elements)
let fs = require('fs');
let input = fs.readFileSync('./day-4-input.txt', 'utf8').trim();
let rows = input.split('\n')

// takes in a passphrase and returns true if it's valid and false if it's not.
let checkPassphrase = (passphrase) => {
  words = passphrase.split(' ')
  let alphWords = words.map((word) => {
    word = word.split('').sort().join('')
    return word
  })
  alphWords = alphWords.sort()
  for(let i = 0; i < alphWords.length - 1; i++) {
    if (alphWords[i] == alphWords[i + 1]) {
      return false
    }
  }
  return true
}

//loop through rows and find the amoun to add to the checksum
let validPassphrases = 0
rows.forEach((row) => {
  //split rows into numbers initialize min and max to first number
  if (checkPassphrase(row)) {
    validPassphrases++
  }

})
console.log(`There are ${validPassphrases} valid passphrases`)
