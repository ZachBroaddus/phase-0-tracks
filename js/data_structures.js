// ***************Releases 0-1**************
// var colors = ["red", "white", "blue", "green"];
// var horse_names = ["Ed", "Francis", "Zach", "Brian"];
// colors.push("iridescent blue/green with silver sparkles");
// horse_names.push("Jimbo");
// console.log(colors);
// console.log(horse_names);

// var horse_info = {};
// for (var i = 0; i < colors.length; i++ ) {
//   horse_info[horse_names[i]] = colors[i];
// }

// console.log(horse_info);

// ***************Release 2**************
function Car(make, model, age, mileage) {
  this.make = make;
  this.model = model;
  this.age = age;
  this.mileage = mileage;

  this.rating = function() {
    var rating = "";
    if (this.mileage < 10000) { 
      rating = "excellent"; 
    } else if (this.mileage < 30000) {
      rating = "good";
    } else if (this.mileage < 80000) {
      rating = "fair";
    } else {
      rating = "poor";
    }
    return rating
  }
}

var car1 = new Car("Honda", "Civic", "10", 114000)
console.log(car1)
console.log(car1.rating())

var car2 = new Car("Toyota", "Camry", "5", 70000)
console.log(car2)
console.log(car2.make)
console.log(car2.model)

var car3 = new Car("Slave1", "Boba Fett", "30", 2500000)
console.log(car3)
console.log(car3.age)
console.log(car3.mileage)