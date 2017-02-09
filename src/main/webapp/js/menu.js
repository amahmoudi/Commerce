/**
 * @author amahmoudi
 */
function Home() {
	document.forms[0].action=buildUniqueUrl("Home.action");
    document.forms[0].submit();
    //the showWait() called in actionfltDqhistoryClick() function, to cancel the wait action,  hideWait() must executed in the end.
    hideWait();
    return false;
}

function buildUniqueUrl(url){
	var separator = "?";
	if(url.indexOf("?") > 0)
		separator = "&";
	//return encodeURI(url + separator + "uid="+(new Date()).getTime());
	// Delete the encode URI for specials characters
	// Set the timeout timer after an user action 
	parent.parent.setTimeoutTimer();
	return url + separator + "uid="+(new Date()).getTime();
}