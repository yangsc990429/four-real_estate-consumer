//Ã·Ωª
function indextj(){
if(indexserid==1){na=19;}
else if(indexserid==2){na=2;}
else if(indexserid==3){na=1;}
else if(indexserid==4){na=10;}
else if(indexserid==5){na=9;}
fstxt=document.getElementById("fstxt"+na).value;
if(fstxt=="«Î ‰»Îπÿº¸¥ "){alert("«Î ‰»Îπÿº¸¥ ");document.getElementById("fstxt"+na).focus();return false;}
f1.action="../search/index.php?admin="+na;
}
function fstxtfocus(x){
a=document.getElementById("fstxt"+x).value;
if(a=="«Î ‰»Îπÿº¸¥ "){document.getElementById("fstxt"+x).value="";}
}
function fstxtblur(x){
a=document.getElementById("fstxt"+x).value;
if(a==""){document.getElementById("fstxt"+x).value="«Î ‰»Îπÿº¸¥ ";}
}

//µº∫Ω«–ªª
var indexserid=1;
function serover(x){
 indexserid=x;
 for(i=1;i<=5;i++){
 document.getElementById("sercap"+i).className="l1";
 document.getElementById("sermain"+i).style.display="none";
 }
 document.getElementById("sercap"+x).className="l1 l11";
 document.getElementById("sermain"+x).style.display="";
}

//¬•≈Ã«–ªª 
function lpcapover(x){
for(i=0;i<=3;i++){
document.getElementById("lpcap"+i).className="l0";
document.getElementById("lpmain"+i).style.display="none";
}
document.getElementById("lpcap"+x).className="l0 l1";
document.getElementById("lpmain"+x).style.display="";
}

//«–ªª
function banner(){	
	var bn_id = 0;
	var bn_id2= 1;
	var speed33=10000;
	var qhjg = 1;
    var MyMar33;
	$("#banner .d1").hide();
	$("#banner .d1").eq(0).fadeIn("slow");
	if($("#banner .d1").length>1)
	{
		$("#banner_id li").eq(0).addClass("nuw");
		function Marquee33(){
			bn_id2 = bn_id+1;
			if(bn_id2>$("#banner .d1").length-1)
			{
				bn_id2 = 0;
			}
			$("#banner .d1").eq(bn_id).css("z-index","2");
			$("#banner .d1").eq(bn_id2).css("z-index","1");
			$("#banner .d1").eq(bn_id2).show();
			$("#banner .d1").eq(bn_id).fadeOut("slow");
			$("#banner_id li").removeClass("nuw");
			$("#banner_id li").eq(bn_id2).addClass("nuw");
			bn_id=bn_id2;
		};
	
		MyMar33=setInterval(Marquee33,speed33);
		
		$("#banner_id li").click(function(){
			var bn_id3 = $("#banner_id li").index(this);
			if(bn_id3!=bn_id&&qhjg==1)
			{
				qhjg = 0;
				$("#banner .d1").eq(bn_id).css("z-index","2");
				$("#banner .d1").eq(bn_id3).css("z-index","1");
				$("#banner .d1").eq(bn_id3).show();
				$("#banner .d1").eq(bn_id).fadeOut("slow",function(){qhjg = 1;});
				$("#banner_id li").removeClass("nuw");
				$("#banner_id li").eq(bn_id3).addClass("nuw");
				bn_id=bn_id3;
			}
		})
		$("#banner_id").hover(
			function(){
				clearInterval(MyMar33);
			}
			,
			function(){
				MyMar33=setInterval(Marquee33,speed33);
			}
		)	
	}
	else
	{
		$("#banner_id").hide();
	}
}
