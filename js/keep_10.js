//hide add new note
document.getElementById("wall-comment").style.display = "none";

//hide color palette
//document.getElementById("color_palette").style.display="none"; 


//title onclick editable
const titles = document.querySelectorAll(".keep-header");
for(var i=0;i<titles.length;i++){
    titles[i].addEventListener("click", function(){
        //titles[i].setAttribute("contentEditable","true");
        var note_id = this.closest(".keep-note").getAttribute("note-id");
        this.contentEditable = "true";
        this.setAttribute("contenEditable","true");
        this.style.outline="0";
        console.log(note_id);
    })
}

const note_texts = document.querySelectorAll(".keep-body");
for(var i=0;i<note_texts.length;i++){
    note_texts[i].addEventListener("click", function(){
        //titles[i].setAttribute("contentEditable","true");
        var note_id = this.closest(".keep-note").getAttribute("note-id");
        this.contentEditable = "true";
        this.setAttribute("contenEditable","true");
        this.style.outline="0";
        console.log(note_id);
    })
}


//clock
var myVar = setInterval(function() {
  myTimer();
}, 1000);

// change font size based on stringth lenght
const keep_body = document.querySelectorAll(".keep-body");
for(var i=0; i<keep_body.length;i++){
    const dlzka_stringu = 50;
    
    //console.log(keep_body[i].innerHTML.length);

    if(keep_body[i].innerHTML.length>dlzka_stringu){
        //console.log("dlzka stringu je "+keep_body[i].innerHTML.length)
        keep_body[i].style.fontSize = "14px";
    }
}

//left side menu
var menu = document.querySelectorAll(".tags ul li");
//console.log(menu);
for (var i = 0; i < menu.length; i++) {
    console.log(menu[i]);
    menu[i].addEventListener("click", function(e) {
        //var item = e.target.classList

        if (e.target.classList.contains("notes")) {
            alert("Poznamky");
            reload_notes();
            reload_pinned();
        }
        if (e.target.classList.contains("modify_tags")) {
            alert("Upravit tagy");
        }
        if (e.target.classList.contains("archive")) {
            alert("Zobraz archiv");
            //reload_archived();
        }

        if (e.target.classList.contains("trash")) {
            alert("toto su vymazane spravy");
            reload_trash();
        }

    })
}

//kliknutim na poznamku sa zobrazi overlay s plnou sirkou poznamky
/*const keep_notes = document.querySelectorAll(".keep-note");
for(var i=0; i<keep_notes.length; i++){
    keep_notes[i].addEventListener("click",function(e){
       var note_id = this.getAttribute("note-id");
        localStorage.setItem("note-id",note_id);
        console.log(note_id);
        document.querySelector(".overlay").style.display="flex";
        //load_note(note_id);
    })
}*/





function add_new_cat() {

    var x = document.getElementById("new_group");
    if (x.style.display === "none") {
        x.style.display = "flex";
    } else {
        x.style.display = "none";
    }
}

function add_new_note() {
    var x = document.getElementById("wall-comment");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}

function save_note() {
    var text = document.getElementById("keep-text").value;
    var title = document.getElementById("keep-title").value;
    var data = "note_title=" + encodeURIComponent(title) + "&note_text=" + encodeURIComponent(text);
    /*console.log(title);
    console.log(text);
    console.log(data);*/

    if (text == "") {
        document.getElementById("wall-comment").style.display = "none";
    } else {
        const xhttp = new XMLHttpRequest();
        xhttp.onload = function() {
            reload_notes();
            document.getElementById("wall-comment").style.display = "none";
            document.getElementById("keep-text").value = "";
            document.getElementById("keep-title").value = "";
        }

        xhttp.open("POST", "create_note.php");
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        //var data = "&video_id=" + encodeURIComponent(video_id) + "&video_comment=" + encodeURIComponent(new_note);
        var data = "note_title=" + encodeURIComponent(title) + "&note_text=" + encodeURIComponent(text);
        xhttp.send(data);
        //xhttp.send("note_group="+group+"&note_text="+encodeURIComponent(text));
    }
}

function reload_notes() {
    document.getElementById("keep-pinned").style.display = "flex";
    document.getElementById("keep-notes").style.display = "flex";
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {

            document.getElementById("keep-notes").innerHTML = this.responseText;
        }
    };

    xhttp.open("GET", "reload_notes.php", true);
    xhttp.send();
}

function reload_pinned() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {

            document.getElementById("keep-pinned").innerHTML = this.responseText;
        }
    };

    xhttp.open("GET", "reload_pinned.php", true);
    xhttp.send();
}

function pine_note(note_id) {
    //var note_id = this.getAttribute('note-id');
    console.log(note_id);
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
        //reload_pinned();
        //reload_notes();
    }

    xhttp.open("POST", "set_pinned.php");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    var data = "note_id=" + encodeURIComponent(note_id);
    xhttp.send(data);
    /*xhttp.open("GET", "set_pinned.php?note_id="+note_id, true);
    xhttp.send();*/
}

function unpine_note(note_id) {
    //var note_id = this.getAttribute('note-id');
    console.log(note_id);
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
        //reload_pinned();
        //reload_notes();
    }

    xhttp.open("POST", "set_unpinned.php");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    var data = "note_id=" + encodeURIComponent(note_id);
    xhttp.send(data);
}


function remove_note(note_id) {
    console.log(note_id);
    const xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange  = function() {
        //reload_notes();
    }
      /*xhttp.open("POST", "remove_note.php",true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    var data = "note_id=" + encodeURIComponent(note_id);
    xhttp.send(data);*/
    xhttp.open("GET", "remove_note.php?note_id="+note_id,true);
    xhttp.send();
}

function search_notes(string) {
    console.log(string);
    document.getElementById("keep-pinned").style.display = "none";
    document.getElementById("keep-notes").style.display = "none";
    document.getElementById("keep-search").style.display = "flex";
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {

            document.getElementById("keep-search").innerHTML = this.responseText;
        }
    };

    xhttp.open("GET", "search_note.php?search_string=" + string, true);
    xhttp.send();
}

function checklength(i) {
    if (i < 10) {
        i = "0" + i;
    }
    return i;
}

// clock
function myTimer() {
  var d = new Date();
  document.getElementById("clock").innerHTML = d.toLocaleTimeString();
}

function reload_trash() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {

            document.getElementById("keep-notes").innerHTML = this.responseText;
        }
    };

    xhttp.open("GET", "reload_trash.php", true);
    xhttp.send();
}

function reload_archived() {
    console.log(string);
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {

            document.getElementById("keep-notes").innerHTML = this.responseText;
        }
    };

    xhttp.open("GET", "reload_archived.php", true);
    xhttp.send();
}


function remove_pernamently(id) {

}

function remove_from_trash(id) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {

            document.getElementById("keep-notes").innerHTML = this.responseText;
        }
    };

    xhttp.open("GET", "reload_trash.php", true);
    xhttp.send();
}

/*window.onload = function (){
    document.getElementById("color_palette").style.display="none"; 
    document.querySelector(".event_color").addEventListener("click", function(){
      //alert("test");
      if(document.getElementById("color_palette").style.display=="none"){
        document.getElementById("color_palette").style.display="block"; 
      } else {
        document.getElementById("color_palette").style.display="none"; 
      }
    });

    var parent = document.getElementById("color_palette");
      var div = document.createElement('div');
      //let colors=["#ede7f6","#9575cd","#b3e5fc","#4fc3f7","#b2dfdb","#4db6ac","#c5e1a5","#aed581","#ffcdd2","#ef9a9a","#fcdc29","#7ba8ef","#b3cff3","#fb819b","#8bc34a"];
      var colors = ["#f28b82","#fbbc04","#fff475","#ccff90","#a7ffeb","#cbf0f8","#aecbfa","#d7aefb","#fdcfe8","#e6c9a8","#e8eaed","#ffffff"];

      for ( i=0; i<colors.length;i++ ){
        parent.innerHTML+="<div class='palette_item'></div>";
        let palette_items = document.querySelectorAll(".palette_item");
        for (y=0;y<palette_items.length;y++){
          var color = colors[y];
          palette_items[y].style.background=color;
          //https://stackoverflow.com/questions/20805505/addeventlistener-not-working-on-list-of-elements
          //palette_items[y].innerHTML=y;
        } // set all divs background color from the list
      }  
      //get number of all colors
     
        document.querySelectorAll('.palette_item').forEach(item => {
          item.addEventListener('click', event => {
            //handle click
          
            //alert(item.style.backgroundColor);
            document.querySelector(".event_color").style.backgroundColor = item.style.backgroundColor;
            var event_id = localStorage.getItem("event_id");
            var color = item.style.backgroundColor;
           console.log(event_id, color);
           update_event_color(color, event_id);
          })
        })
  }
*/

/*function load_note(note_id) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {

            document.getElementById("keep-notes").innerHTML = this.responseText;
        }
    };

    xhttp.open("GET", "load_note.php?node_id=" + note_id, true);
    xhttp.send();
}

function is_pinned(note_id) {
    //var note_id = this.getAttribute('note-id');
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
        unpin_note(note_id);
    }

    xhttp.open("POST", "set_unpinned.php");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    var data = "note_id=" + encodeURIComponent(note_id);
    xhttp.send(data);
}

function clone_note(note_id){
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
        //unpin_note(note_id);
    }

    xhttp.open("POST", "clone_note.php");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    var data = "note_id=" + encodeURIComponent(note_id);
    xhttp.send(data);
}

function update_background(note_id){
     const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
       //unpin_note(note_id);
    }

    xhttp.open("POST", "set_backgroud.php");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    var data = "note_id=" + encodeURIComponent(note_id)+"backgroud="+encodeURIComponent(new_background);
    xhttp.send(data);
}
 
    function load_palette(){
     var colors = ['#f28b82','#fbbc04','#fff475','#ccff90','#a7ffeb','#cbf0f8','#aecbfa','#d7aefb','#fdcfe8','#e6c9a8','
#e8eaed','#ffffff']
    }

*/

  function hide(){
    document.querySelector(".overlay").style.display="none";
  }