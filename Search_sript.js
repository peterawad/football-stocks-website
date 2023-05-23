//<script>
function selectchange() {
    DDl = document.getElementById("searchoption");
	document.write("<?php include('connectionGetdata.php'); ?>");
    document.write('<center>');
    document.write("<style>input[type=text]{width: 100%;padding: 12px 20px;margin: 8px 0;box-sizing: border-box;border: 2px solid red;border-radius: 4px;}");
    document.write("</style>");
	document.write("<form action='connectionGetdata.php' method='post'>");
    if (DDl.value == 0) {
        document.write(" Player Name : <input type='text' name='playertxt'>");
    }
    if (DDl.value == 1) {
        document.write("Player Gender : <input type='Radio' name='G' value=0 >Male");
        document.write("<input type='Radio' name='G' value=1 >Female");
    }
    if (DDl.value == 2) {
        document.write("CURRENT TEAM : <select name='CURRENTTEAMselect' style='border: 1;align-items: center;flex: 1;padding: 0 1em;color: black;background-color: var(--black);cursor: pointer;'>");
        document.write("<option value='DARK GREEN'> DARK GREEN</option>",
            "<option value='DARK KNIGHTS'> DARK KNIGHTS</option>",
            "<option value='GOLDWINGS'> GOLDWINGS</option>",
            "<option value='LIGHTBLUE'> LIGHTBLUE</option>",
            "<option value='LIGHTGREEN'> LIGHTGREEN</option>",
            "<option value='LIGHTRED'> LIGHTRED</option>",
            "<option value='PINKTEAM'> PINKTEAM</option>",
            "<option value='REDSOUTH'> REDSOUTH</option></select>",
        );
    }
    if (DDl.value == 3) {
        document.write("TEAM LOCATION : <select name='TEAMLOCATIONselect' style='width: 600px; height: 50px'>");
        document.write("<option value='LIVERPOOL'>LIVERPOOL</option>",
            "<option value='BRIGHTON'> BRIGHTON</option>",
            "<option value='COVENTRY'> COVENTRY</option>",
            "<option value='LEEDS'> LEEDS</option>",
            "<option value='OXFORD'> OXFORD</option>",
            "<option value='LONDON'> LONDON</option>",
            "<option value='PRESTON'> PRESTON</option>",
            "<option value='BRISTOL'> BRISTOL</option>",
            "<option value='NEWTOWN'> NEWTOWN</option></select>",
        );
    }
    if (DDl.value == 4) {
        document.write("Team Manager : <select name='teammangernselect' style='width: 600px; height: 50px'>");
        document.write("<option value='REDMAN'> REDMAN</option>",
            "<option value='SOUTHMAN'> SOUTHMAN</option>",
            "<option value='BROWN'> BROWN</option>",
            "<option value='GREENBOX'> GREENBOX</option>",
            "<option value='PINKMAN'> PINKMAN</option>",
            "<option value='POSHMAN'> POSHMAN</option>",
            "<option value='GREY'> GREY</option>",
            "<option value='WESTMAN'> WESTMAN</option>",
            "<option value='BLACK'> BLACK</option>",
            "<option value='BRIGHTMAN'> BRIGHTMAN</option></select>"
        );
    }
	
    document.write("<br><input type='Submit' value='Search' ID='btnSrch' name='btnSrch'></form>");
    document.write("</td></tr></table></center>");
}
//</script>