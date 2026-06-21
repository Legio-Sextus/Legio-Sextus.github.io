
menuActive = false;


function menuClick()
{
    let menu = document.getElementById("menu-panel");
    if (menuActive === true)  {
	console.log("menu was active");
	menuActive = false;
	menu.style.display = "none";
	
    } else {
	console.log("menu was NOT active");
	menuActive = true;
	menu.style.display = "block";
    }
}
