function NoChat() {

    var Merror = "";

    var text = document.getElementById("textchat").value;
    var noChat = text.indexOf("'");

    if (noChat != -1) {
        Merror = "The Symbol ' , can't be in the text";

        document.getElementById("Error").value = Merror;
        document.getElementById("Error").style.display = "inline";

        return false;
    }


    return true;

}