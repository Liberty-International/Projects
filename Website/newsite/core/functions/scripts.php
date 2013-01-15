<!-- Swap Image Code-->
<script type="text/javascript">
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
</script>

<script type=text/javascript>
function changetext(theID, theText){
	var theHTMLText = theText;
	var id = document.getElementById(theID);
	id.innerHTML=theText;
}
function changetextback(){
	var sid = document.getElementById("service_change");
	sid.innerHTML="Liberty\’s team believes that our company is about our people.  We are more than a collection of service offerings.  We actively contribute value to our clients\’ businesses.";
	
	var rid = document.getElementById("resources_change");
	rid.innerHTML="Our team provides your business with unparalleled resources culled from their extensive experience and training.";
	
	var aid = document.getElementById("aboutus_change");
	aid.innerHTML="In 1982, Nick, Chuck & Ken wanted to create a place where hard working young people would have an opportunity to grow and advance…  Click “About Us” to read Liberty’s story.";
}
</script>

<script>
function unifyHeights(childOne, childTwo, paddingOne, paddingTwo) {
	var theChildOne = document.getElementById(childOne);
	var theChildTwo = document.getElementById(childTwo);
	
		if (theChildOne.scrollHeight  > theChildTwo.scrollHeight){ // if child one is larger than child two
			if((theChildOne.scrollHeight-paddingOne)>theChildTwo.scrollHeight){
				theChildTwo.style.height  = (theChildOne.scrollHeight-paddingTwo)+"px";
			}
			else{
				theChildTwo.style.height  =  theChildOne.scrollHeight + (theChildTwo.scrollHeight - (theChildOne.scrollHeight -paddingOne))+"px";
			}
		}
		else{
			if((theChildTwo.scrollHeight-paddingTwo)>theChildOne.scrollHeight){
				theChildOne.style.height  = (theChildTwo.scrollHeight-paddingOne)+"px";
			}
			else{
				theChildOne.style.height  =  theChildTwo.scrollHeight + (theChildOne.scrollHeight - (theChildTwo.scrollHeight -paddingTwo))+"px";
			}
		}

}
function unifyParent(theParent, theChild) {
	var parent = document.getElementById(theParent);
	var child = document.getElementById(theChild);
	
	if(child.style.height>child.scrollHeight){
		parent.style.height = child.style.height+"px";
	}
	else{
		parent.style.height = child.scrollHeight+"px";
	}
	
}
</script>

<!--Jquery scripts for uploader-->
<!--script src="core/functions/scripts/jquery.js"></script>  
<script src="core/functions/scripts/jquery.tipsy.js"></script> 
<script src="core/functions/scripts/jquery-ui-1.8.13.custom.min.js"></script--> 
    
    


<!--Google Analytics-->
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-33758588-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
