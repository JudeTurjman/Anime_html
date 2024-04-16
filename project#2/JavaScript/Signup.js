function CheckForm() {

    var Merror = "";

    // فحص أسم المستخدم
    var uName = document.getElementById("UName").value;
    if (uName.length < 6)
        Merror = "Username is too short! it must be more than 6 letters, and less than 30 letters.";
    else if (uName.length > 30)
        Merror = "Username is too long! it must be less than 30 letters, more than 6 letters.";
    if (Merror != "") {
        document.getElementById("mUName").value = Merror;
        document.getElementById("mUName").style.display = "inline";

        return false;
    }
    else document.getElementById("mUName").style.display = "none";

    // فحص ألأسم الشخصي
    var fName = document.getElementById("FName").value;
    if (fName < 3 || fName > 10) {
        document.getElementById("mFName").value = "Firsname must be 3-10 letters.";
        document.getElementById("mFName").style.display = "inline";

        return false;
    }
    else document.getElementById("mFName").style.display = "none";

    // فحص أسم العائلة
    var lName = document.getElementById("LName").value;
    if (lName < 3 || lName > 10) {
        document.getElementById("mLName").value = "Lastname must be 3-10 letters.";
        document.getElementById("mLName").style.display = "inline";

        return false;
    }
    else document.getElementById("mLName").style.display = "none";

    // فحص الميل
    var mail = document.getElementById("Email").value;
    var atS = mail.indexOf('@');
    var dotS = mail.indexOf('.', atS);

    if (mail.length < 6)
        Merror = "Email is too short";
    else if (mail.length > 30)
        Merror = "Email is too long";
    else if (atS == -1 || atS != mail.lastIndexOf('@'))
        Merror = "The mail must have one '@'";
    else if (atS == 0 || atS == mail.length - 1)
        Merror = "The Symbol '@', can't be in the beginning or the end";
    else if (dotS == -1)
        Merror = "The mail must have '.' after '@'";
    else if (dotS - atS < 2)
        Merror = "After '@' (more than 2 word), must be '.'";
    else if (dotS == mail.length - 1 || mail.indexOf('.') == 0)
        Merror = "The Symbol '@', can't be in the beginning or the end";

    if (Merror != "") {
        document.getElementById("mEmail").value = Merror;
        document.getElementById("mEmail").style.display = "inline";

        return false;
    }
    else document.getElementById("mEmail").style.display = "none";

    // فحص رقم الهاتف
    var phone = document.getElementById("Phone").value;
    if (phone.length != 7) {
        document.getElementById("mPhone").value = "The phone number must be 7 numbers";
        document.getElementById("mPhone").style.display = "inline";

        return false;
    }
    else document.getElementById("mPhone").style.display = "none";

    // فحص كلمة السر
    var p1 = document.getElementById("Password").value;
    var p2 = document.getElementById("Confirm").value;
    if (p1.length < 6 || p1.length > 8) {
        Merror = "The password must be between 6-8 letters";
        document.getElementById("mPassword").value = Merror;
        document.getElementById("mPassword").style.display = "inline";

        return false;
    }
    else document.getElementById("mPassword").style.display = "none";

    if (p1 != p2) {
        Merror = "Password and confirm password aren't similar";
        document.getElementById("mPassword").value = Merror;
        document.getElementById("mPassword").style.display = "inline";

        return false;
    }
    else document.getElementById("mPassword").style.display = "none";

}