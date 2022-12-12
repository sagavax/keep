document.getElementById("wall-comment").style.display = "none";

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
    
*/

