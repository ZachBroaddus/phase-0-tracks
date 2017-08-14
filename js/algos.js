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
  for (var i = 0; i < obj2.length; i++) {

  }
}

//Release 0 test code:
// var array = ["some words", "transmogrification", "some other words", "Saskatchewan", "antidisestablishmentarianism"];
// console.log(longest_item(array));

//Release 1 test code:
var obj1 = {};
var obj2 = {};
console.log(object_matcher(obj1, obj2));


