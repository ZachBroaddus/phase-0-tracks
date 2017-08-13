//String Reverse Function:
//Input--original string
//Output--reversed string
//Break string into individual characters
//For each letter of the string, starting from the end of the string, 
//read the character and add it to a new string
//Store the new string

function reverse(string) {
  reversed_string = '';
  for (var i = string.length - 1; i >= 0; i--) {
    reversed_string += string[i];
  }
  return reversed_string;
}

reverse(string);
// console.log(reverse(string));
// console.log(reversed_string);