var colors = ["red", "white", "blue", "green"];
var horse_names = ["Ed", "Francis", "Zach", "Brian"];
colors.push("iridescent blue/green with silver sparkles");
horse_names.push("Jimbo");
console.log(colors);
console.log(horse_names);

var horse_info = {};
for (var i = 0; i < colors.length; i++ ) {
  horse_info[horse_names[i]] = colors[i];
}

console.log(horse_info);

