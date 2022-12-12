document.getElementById("wall-comment").style.display = "none";

var menu = document.querySelectorAll(".tags ul li");
//console.log(menu);
for (var i = 0; i < menu.length; i++) {
    console.log(menu[i]);
    menu[i].addEventListener("click", function(e) {
        //var item = e.target.classList

        if (e.target.classList.contains("notes")) {
            alert("Poznamky");
            //reload_notes();
            //reload_pinned();
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
    var data = "note_text=" + encodeURIComponent(text);
    console.log(text);
    //console.log(data);

    if (text == "") {
        document.getElementById("wall-comment").style.display = "none";
    } else {
        const xhttp = new XMLHttpRequest();
        xhttp.onload = function() {
            reload_notes();
            document.getElementById("wall-comment").style.display = "none";
            document.getElementById("keep-text").value = "";
        }

        xhttp.open("POST", "create_note.php");
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        //var data = "&video_id=" + encodeURIComponent(video_id) + "&video_comment=" + encodeURIComponent(new_note);
        var data = "note_text=" + encodeURIComponent(text);
        xhttp.send(data);
        //xhttp.send("note_group="+group+"&note_text="+encodeURIComponent(text));
    }
}

function reload_notes() {
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
        reload_pinned();
        reload_notes();
    }

    xhttp.open("POST", "set_pinned.php");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    var data = "note_id=" + encodeURIComponent(note_id);
    xhttp.send(data);
}

function unpine_note(note_id) {
    //var note_id = this.getAttribute('note-id');
    console.log(note_id);
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
        reload_pinned();
        reload_notes();
    }

    xhttp.open("POST", "set_unpinned.php");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    var data = "note_id=" + encodeURIComponent(note_id);
    xhttp.send(data);
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

function remove_note(note_id) {
    console.log(note_id);

    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
        reload_notes();

    }
    xhttp.open("POST", "remove_note.php");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("note_id=" + note_id);
}

function search_notes(string) {
    console.log(string);
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {

            document.getElementById("keep-pinned").innerHTML = this.responseText;
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

function clock() {
    var now = new Date();
    var hours = checklength(now.getHours());
    var minutes = checklength(now.getMinutes());
    var seconds = checklength(now.getSeconds());
    var format = 1; //0=24 hour format, 1=12 hour format  
    var time;

    if (format == 1) {
        if (hours >= 12) {
            if (hours == 12) {
                hours = 12;
            } else {
                hours = hours - 12;
            }
            time = hours + ':' + minutes + ':' + seconds + ' PM';
        } else if (hours < 12) {
            if (hours == 0) {
                hours = 12;
            }
            time = hours + ':' + minutes + ':' + seconds + ' AM';
        }
    }
    if (format == 0) {
        time = hours + ':' + minutes + ':' + seconds;
    }
    document.getElementById("clock").innerHTML = time;
    setTimeout("clock();", 500);
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