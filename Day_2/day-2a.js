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
  let max = parseInt(nums[0])
  let min = parseInt(nums[0])
  nums.forEach((num) => {
    num = parseInt(num)
    max = num > max ? num : max
    min = num < min ? num : min
  })
  checksum += max - min
})
console.log(`checksum = ${checksum}`)
