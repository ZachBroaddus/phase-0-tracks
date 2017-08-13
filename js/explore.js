//String Reverse Function:
//Input--original string
//Output--reversed string
//For each letter of the original string, starting from the end of the string, 
//read the letter and add it to a new string

function reverse(string) {
  reversed_string = '';
  for (var i = string.length - 1; i >= 0; i--) {
    reversed_string += string[i];
  }
  return reversed_string;
}

processed_string = reverse("melon");
if (3 >= 3) {
  console.log("Your reversed string is: " + processed_string);
} else {
  console.log("Oops, your program is borked!");
}
