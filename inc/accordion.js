<!-- Copyright 2007, Sandeep Gangadharan -->
<!-- For more free scripts go to http://www.sivamdesign.com/scripts/ -->
<!--
if (document.getElementById) {
 document.write('<style type="text/css">.texter {display:none; border-left:white 20px solid; color:#404040; font-family:verdana,arial,helvetica,sans-serif; font-size:9pt} @media print {.texter {display:block;}}</style>') }

if (document.getElementById) {
 document.write('<style type="text/css">.texter2 {display:block; border-left:white 20px solid; color:#404040; font-family:verdana,arial,helvetica,sans-serif; font-size:9pt} @media print {.texter {display:block;}}</style>') }

 var divNum = new Array("a01","a02","a03","a04","a05","a06","a07","a08","a09","a10","a11","a12","a13","a14","a15","a16");  // at the left you should add a1, a2 etc. for each header you wish to include
                                          // so if you want 4 headers you should add a1, a2, a3, a4 in the format shown
                                          // enclosed in double quotes

function closeOpen(theID) {
 for(var i=0; i < divNum.length; i++) {
  if (divNum[i] == theID) {
   if (document.getElementById(divNum[i]).style.display == "none") { document.getElementById(divNum[i]).style.display = "block" }
   else { document.getElementById(divNum[i]).style.display = "none" }
  }
  else { document.getElementById(divNum[i]).style.display = "none"; }
 }
}

function openClose(theID) {
 for(var i=0; i < divNum.length; i++) {
  if (divNum[i] == theID) {
   if (document.getElementById(divNum[i]).style.display == "block") { document.getElementById(divNum[i]).style.display = "none" }
   else { document.getElementById(divNum[i]).style.display = "block" }
  }
  else { document.getElementById(divNum[i]).style.display = "none"; }
 }
}

function openAll() {
 for(var i=0; i < divNum.length; i++) {
   document.getElementById(divNum[i]).style.display = "block";
 }
}

function closeAll() {
 for(var i=0; i < divNum.length; i++) {
   document.getElementById(divNum[i]).style.display = "none";
 }
}
// -->

