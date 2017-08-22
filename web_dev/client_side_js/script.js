console.log("The script is running fast!");

var content = document.getElementsByClassName('top');
var content = content[0];
var para = document.createElement('p');
var node = document.createTextNode('I love bacon!');
var baconPhoto = document.getElementById("bacon-heart-photo");
var baconDance = document.getElementById("dancing-bacon");
var danceOn = document.getElementById('dance-on');
var danceOff = document.getElementById('dance-off');


para.appendChild(node);
content.appendChild(para);
content.childNodes[9].parentNode.insertBefore(content.childNodes[9], baconPhoto);
