function detectField() {
    if (document.getElementById("secfield").value == "Gender") {
        document.getElementById("secquery").innerHTML =
            "<input type='radio'; name='secvalue'; value='male' checked='checked' />male &nbsp;&nbsp;" +
            "<input type='radio'; name='secvalue'; value='female' />female";
    }
    else {
        if (document.getElementById("secfield").value == "YearBorn") {
            var yearStr = "<select name='secvalue'>";
            var currYear = new Date().getFullYear();
            var fromYear = currYear - 70;
            var toYear = currYear - 10;

            for (var i = fromYear; i <= toYear; i++)
                yearStr += "<option value='" + i + "'>" + i + "</option>";

            document.getElementById("secquery").innerHTML = yearStr + "</select>";
        }
        else {
            if (document.getElementById("secfield").value == "Prefix") {
                var prefixStr = "<select name='secvalue'>";

                prefixStr += "<option value='050'> 050 </option>";
                prefixStr += "<option value='051'> 051 </option>";
                prefixStr += "<option value='052'> 052 </option>";
                prefixStr += "<option value='053'> 053 </option>";
                prefixStr += "<option value='054'> 054 </option>";
                prefixStr += "<option value='055'> 055 </option>";
                prefixStr += "<option value='056'> 056 </option>";
                prefixStr += "<option value='057'> 057 </option>";
                prefixStr += "<option value='058'> 058 </option>";
                prefixStr += "<option value='059'> 059 </option>";

                document.getElementById("secquery").innerHTML = prefixStr + "</select>";
            }
            else {
                if (document.getElementById("secfield").value == "Hobby") {
                    var hobbyStr = "<select name='secvalue'>";

                    hobbyStr += "<option value='1'> Playing Sports </option>";
                    hobbyStr += "<option value='2'> Reading </option>";
                    hobbyStr += "<option value='3'> Drawing </option>";
                    hobbyStr += "<option value='4'> Rizzing </option>";
                    hobbyStr += "<option value='5'> Edging </option>";

                    document.getElementById("secquery").innerHTML = hobbyStr + "</select>";
                }
                else {
                    if (document.getElementById("secfield").value == "City") {
                        var cityStr = "<select name='secvalue'>";

                        cityStr += "<option value='Nazareth'> Nazareth </option>";
                        cityStr += "< option value = 'Safed' > Safed </option >";
                        cityStr += "<option value='Afula' > Afula </option>";
                        cityStr += "<option value='Haifa'> Haifa </option>";
                        cityStr += "<option value='Tiberias'> Tiberias </option>";
                        cityStr += "<option value='Karmiel'> Karmiel </option>";
                        cityStr += "<option value='Acre'> Acre </option>";
                        cityStr += "<option value='Netanya'> Netanya </option>";
                        cityStr += "<option value='Nablus'> Nablus </option>";
                        cityStr += "<option value='Tel Aviv'> Tel Aviv </option>";
                        cityStr += "<option value='Ramallah'> Ramallah </option>";
                        cityStr += "<option value='Jerusalem'> Jerusalem </option>";
                        cityStr += "<option value='Ashkelon'> Ashkelon </option>";
                        cityStr += "<option value='Gaza'> Gaza </option>";
                        cityStr += "<option value='Beer Sheva'> Beer Sheva </option>";
                        cityStr += "<option value='Eilat'> Eilat </option>";

                        document.getElementById("secquery").innerHTML = cityStr + "</select>";
                    }
                    else {
                        if (document.getElementById("secfield").value == "Phone")
                            document.getElementById("secquery").innerHTML = "<input type='number' name='secvalue'/>";
                        else
                            document.getElementById("secquery").innerHTML = "<input type='text' name='secvalue'/>";
                    }
                }
            }
        }
    }
}