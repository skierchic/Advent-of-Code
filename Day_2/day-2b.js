// Read in input file and split into array of row strings
//.trim() removes any whitespace from the beginning or end (prevents a return at the end creating a line with NaN elements)
let fs = require('fs');
let input = fs.readFileSync('./day-2-input.txt', 'utf8').trim();
let rows = input.split('\n')

//loop through rows and find the amoun to add to the checksum
let checksum = 0
rows.forEach((row) => {
  //split rows into numbers
  nums = row.split('\t')

  //loop through all row number combinations to check for even divisibility
  for( i = 0; i < nums.length - 1; i++) {
    for( j = i + 1; j < nums.length; j++) {
      //if pair is evenly divisible add dividend to checksum and break from checking that row
      if(!(nums[i] % nums[j])){
        checksum += nums[i] / nums[j]
        break
      } else if (!(nums[j] % nums[i] )) {
        checksum += nums[j] / nums[i]
        break
      }
    }
  }
})
console.log(`checksum = ${checksum}`)
