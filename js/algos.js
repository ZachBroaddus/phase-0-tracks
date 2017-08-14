//Release 0: Write a function that takes an array of words or phrases and returns the longest word or phrase in the array
//Input: array of words and phrases
//Output: longest word or phrase
//For each item in an array, check the length of the item and the item immediately preceding it
//Compare the length of both items and store the item that is longest in a variable, but only if its length is 
//longer than the length of the current item stored in that variable

function longest_item(array) {
  var longer_string = "";
  var longest_string = "";
  if (array.length > 1) {
    for (var i = 1; i < array.length; i++) {
      if (array[i].length > array[i-1].length) {
        longer_string = array[i];
        if (longer_string.length > longest_string.length) {
        longest_string = longer_string;
        }
      } else {
        longer_string = array[i-1];
          if (longer_string.length > longest_string.length) {
          longest_string = longer_string;
        }
      }
    }
  } else {
    longest_string = array[0];
  }
  return longest_string;
}

//Release 1: Write a function that takes two objects and checks to see if the objects share at least one key-value pair
//Input: object1 & object2
//Output: bool
//For each element of object1, check object2 to see if there is a match
//If a match is found, give verification
//If no match is found, report that outcome

function object_matcher(obj1, obj2) {
  if (obj1['animal'] == obj2['animal'] || obj1['name'] == obj2['name']) {
    return true;
  } else {
    return false;
  }
}

//Release 2: Write a function that takes an integer for length, and builds and returns an array of random strings of the 
//given length
//Input: Integer
//Output: Array of strings. Array is of length 'integer'. Strings are of random length.
//For each string to be added to the array:
//Generate random number for length of string (1-10)
//Generate random character for each letter of string
//Add each random character to string
//Add string to array

function rand_array(int) {
  new_array = [];
  alphabet = "abcdefghijklmnopqrstuvwxyz";
  for (i = 0; i < int; i++) {
    new_string = "";
    for (x = 0; x < Math.floor((Math.random() * 10) + 1); x++){
    new_string += alphabet[Math.floor(Math.random() * 26)];
    }
    new_array.push(new_string);
  }
  return new_array;
}

//Release 0 test code:
// var array = ["some words", "transmogrification", "some other words", "Saskatchewan", "antidisestablishmentarianism"];
// console.log(longest_item(array));

//Release 1 test code:
// var obj1 = {animal: "Bunny", name: "Cleo"};
// var obj2 = {animal: "Cat", name: "Alex"};
// console.log(object_matcher(obj1, obj2));

//Release 2 test code:
// console.log(rand_array(3));
// console.log(longest_item(rand_array(3)));


for (y = 0; y < 10; y++) {
  test_array = [];
  test_array = rand_array(Math.floor((Math.random() * 5) + 1));
  console.log("Array number " + (y + 1) + ":");
  console.log(test_array);
  console.log("Longest word in array:");
  console.log(longest_item(test_array));
}