//hide add new note
//document.getElementById("wall-comment").style.display = "none";
/*document.getElementById("keep-title").style.display='none';
document.getElementById("keep-text").style.height='25px';*/

 window.sessionStorage.setItem("expanded","false");

 document.getElementById("keep-text").onclick = expand_add_note_form;

/*change color scheme for note                             */
//get note_id

const colors = document.querySelectorAll(".palette-item");
 for(var i=0;i<colors.length;i++){
     colors[i].addEventListener("click",function(){
     const container = this.closest(".keep-note");
     const note_id = container.getAttribute("note-id");
     


    if(this.classList.contains("red")){
        container.style.backgroundColor="#f28b82";
        container.style.borderColor="#f28b82";
        var color_scheme="red";
    }

    if(this.classList.contains("orange")){
        container.style.backgroundColor="#fbbc04";
        container.style.borderColor="#fbbc04";
        var color_scheme="orange";
    }

    if(this.classList.contains("yellow")){
        container.style.backgroundColor="#fff475";
        container.style.borderColor="#fff475";
        var color_scheme="yellow";
    }

    if(this.classList.contains("green")){
        container.style.backgroundColor="#ccff90";
        container.style.borderColor="#ccff90";
        var color_scheme="green";
    }

    if(this.classList.contains("bluegreen")){
        container.style.backgroundColor="#a7ffeb";
        container.style.borderColor="#a7ffeb";
        var color_scheme="bluegreen";
    }

    if(this.classList.contains("blue")){
        container.style.backgroundColor="#cbf0f8";
        container.style.borderColor="#cbf0f8";
        var color_scheme="blue";
    }

     if(this.classList.contains("darkblue")){
        container.style.backgroundColor="#aecbfa";
        container.style.borderColor="#aecbfa";
        var color_scheme="darkblue";
    }

     if(this.classList.contains("purple")){
        container.style.backgroundColor="#d7aefb";
        container.style.borderColor="#d7aefb";
        var color_scheme="purple";
    }

     if(this.classList.contains("pink")){
        container.style.backgroundColor="#fdcfe8";
        container.style.borderColor="#fdcfe8";
        var color_scheme="pink";
    }

     if(this.classList.contains("brown")){
        container.style.backgroundColor="#e6c9a8";
        container.style.borderColor="#e6c9a8";
        var color_scheme="brown";
    }

     if(this.classList.contains("gray")){
        container.style.backgroundColor="#e8eaed";
        container.style.borderColor="#e8eaed";
        var color_scheme="gray";
    }

     if(this.classList.contains("default")){
        container.style.backgroundColor="#ffffff";
        container.style.borderColor="#d1d1d1";
        var color_scheme="default";
    }
        update_color_scheme(note_id, color_scheme);
    });
}


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
        x.style.display = "flex";
    } else {
        x.style.display = "none";
    }
}

function save_note() {
    var text = document.getElementById("keep-text").value;
    var title = document.getElementById("keep-title").value;
    if(text=="" && title==""){
        //alert("empty");
        shrink_add_note_form();
    } else{
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
    document.getElementById("keep-search").style.display = "flex"
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




function show_palette(e){
    //show paletter
    const parent = e.closest(".keep-footer");
    const container = e.closest(".keep-note");
    const note_id = container.getAttribute("note-id");
    //alert(note_id);
    const child = document.querySelector(".color_palette");
    parent.appendChild(child);

    //child.style.display = (child.style.display == "flex") ? "none" : "flex";
     
    if (child.style.display === "flex") {
              
        child.style.display = "none";
        } else {
        child.style.display = "flex";
              
        //console.log(colors.length);

            }
    //prirad funkcie

}

function add_listener(e){
    //console.log(e);
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

function update_color_scheme(note_id,color_scheme){
     const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
       //unpin_note(note_id);
    }

    xhttp.open("POST", "set_background.php");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    var data = "note_id=" + encodeURIComponent(note_id)+"&color_scheme="+encodeURIComponent(color_scheme);
    xhttp.send(data);
}


  function hide(){
    document.querySelector(".overlay").style.display="none";
  }

  function export_note_axoloth_is(note_id){
     const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
       alert("Export done!");
    }

    xhttp.open("POST", "export_note_axoloth_is.php");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    var data = "note_id=" + encodeURIComponent(note_id);
    xhttp.send(data);
  }

  function expand_add_note_form(){
    document.getElementById("keep-title").style.display="flex";
    document.getElementById("keep-text").style.height="100px";
  }

  function shrink_add_note_form(){
   document.getElementById("keep-title").style.display="none";
    document.getElementById("keep-text").style.height="45px"; 
  }


  function get_tags(note_id){
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
        document.querySelector(".tags_body").innerHTML=this.responseText;
    }
    xhttp.open("GET", "get_keep_tags?note_id="+note_id, true);
    xhttp.send();
  }


  function add_tag(keep_id){
    var x = document.getElementById("keep_tags");
    console.log(keep_id);
    if (x.style.display === "none") {
        x.style.display = "flex";
        //alert("hallo");
        get_tags(keep_id);
    } else {
        x.style.display = "none";
    } 
  }

  function archive_note(id) {

        const xhttp = new XMLHttpRequest();
        xhttp.onload = function() {

        }

        xhttp.open("POST", "archive_note.php");
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        //var data = "&video_id=" + encodeURIComponent(video_id) + "&video_comment=" + encodeURIComponent(new_note);
        var data = "note_id=" + encodeURIComponent(id);
        xhttp.send(data);
    }
   
function close_tags(){
    document.getElementById("search_tags").value="";
    document.getElementById("keep_tags").style.display="none";
}

function update_tag_name(tag_name){
    document.querySelector(".new_tag_name").innerHTML=tag_name;
}