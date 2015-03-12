<#-- reference to global functions [Required to run macros] -->
<#assign FLTFile= companyhome.childByNamePath["Data Dictionary/Web Scripts/bootstrappedFiles/functions.ftl"] > 
<#include "${FLTFile.nodeRef}" > 
<#assign channel = args["channel"] />
<#assign language = args['language']?lower_case />


<style type="text/css">
.hello {display:none}
/* Full width content */
body {background: url(/alfresco/nap/webAssets/webPage/Adidas-McCartney/headerbg.jpg) center 144px repeat-x; background-color: none}
#main {width:100%;}
#header {margin:0 auto; width:950px; float:none;}
#content {width:100%!important; background:none !important}

.wideTitle {margin: 20px 0; text-align: center; font-family: GillSans !important ; font-size: 14px; color: #000000 }
.holder {max-width: 950px; margin: 0 auto; position: relative;}
.videoholder {position: absolute; top:35px;}
.imageoverlay {position: absolute; top:107px; left:81px; z-index: 5; width:790px; background: url(<@imgURL src="overlay.jpg" />); background-size: 100% auto}
#adidasplayer {position: absolute; top:107px;  z-index: 2; width: 790px; height: 482px; left: 81px }

.carousel {height: 300px; overflow: hidden; width:910px; position: absolute;left:24px; font-family:GillSans; font-size: 12px}
.carousel a {color: #000000; text-decoration: none}
.slidetext {padding: 10px 0 0 0; line-height: 14px; text-transform: uppercase;}
.carouselholder {width: 950px; position: relative; margin-top: 20px; border-bottom: 1px solid #cccccc; height: 140px}
.carousel div {margin: 0 10px 0 0}
.leftarrow {width: 26px; height: 124px; display: block; background: url(/alfresco/nap/webAssets/webPage/Adidas-McCartney/carousel-arrow_left@2x.png) no-repeat center; position: absolute; top:0; left: 0;  background-size: 100% }
.rightarrow {width: 26px; height: 124px; display: block; background: url(/alfresco/nap/webAssets/webPage/Adidas-McCartney/carousel-arrow_right@2x.png) no-repeat center;position: absolute; top:0; left: 920px;  background-size: 100%  }
.slidefade {background: url(<@imgURL src="slidefade.png" />); position: absolute; top: 0; left: 892px; z-index: 5; width: 38px; height: 119px}
.slidefadeleft {background: url(<@imgURL src="slidefadeleft.png" />); position: absolute; top: 0; left: 24px; z-index: 5; width: 38px; height: 119px; display: none}

.adidas_ImageRepeater {width: 316px; height:316px; float:left; position: relative;}
.adidas_ImageHoverBox {position: absolute;width: 316px; height: 316px;  z-index: 10; top: 0; left:0; background-color: rgba(0,0,0,0.25);}
.adidas_ImagesCaption {position: absolute; top:318px; left:0px; width: 316px; padding: 6px; background-color: rgba(255,255,255,0.6); font-size: 14px; height:16px; white-space: nowrap;font-family: ModernNAP-TextItalic; color:#333333;z-index: 7;overflow: hidden}
.adidasImageHolder {position: absolute; width: 560px; height:316px; overflow: hidden; z-index: 5; top: 0; left:0;}
.photoRow {display: none; clear:both}
#row0, #row1, #row2, #row3 {display:block}

.adidasProductRepeater {width: 230px; margin-right: 7px; height:480px; float:left; position: relative;overflow: hidden; position: relative; text-align: center}
.adidasProductImage {width: 237px; float:left; margin:0 3px;overflow: hidden;width:230px; height: 265px }
.adidasProductTitle {font-family: GillSans !important ; font-size: 12px; font-weight: bold; text-align: left; width: 237px;margin:25px 0 0 0; float: left;}
.adidasProductDescription, .adidasProductPrice {font-family: arial; font-size: 12px; text-align: left; width: 217px; margin:2px 0 0 0;}
.adidasProductTitle a, .adidasProductDescription a{color: #000000; text-decoration: none}

.slug {font-family: gillsans; border: 1px solid #999;color:#666;font-size: 10px;padding: 1px 5px;position: relative;top: 4px;text-transform: uppercase;letter-spacing: 1px; margin:0 auto; display: none}

.adidasImageHolder img {margin-right: 60px}

.productHolder {margin-top: 30px}
.videoAndTileHolder {height: 589px}
.adidastitle {position: absolute; top: 28px; width: 100%; height: 30px; font-family: "ModernNAP-Text"; font-size: 24px; text-align: center; text-transform: uppercase;}
.adidasStrapline { width: 74%; left:13%; font-family: gillsanslight; position: absolute; top: 72px; text-align: center; font-size: 16px}

.contentslide {width: 950px; height: 498px; position: relative;}
.imagearea1 {position: absolute; top:0; left:0; z-index: 2}
.imagearea2 {position: absolute; top:0; left:0; z-index: 2}
.contentslidetext {position: absolute; left: 580px; top:50px; padding:40px; background-color: #ffffff;height: 320px; width: 240px; z-index: 5; border: none}
.contentcarouselholder {position: relative; width: 100%; float: left}

.leftarrowcontent {width: 26px; height: 500px; display: block; background: url(/alfresco/nap/webAssets/webPage/Adidas-McCartney/content-arrow_left@2x.png) no-repeat center;  position: absolute; top:0; left: 0; background-size: 50% ; z-index: 10; display: none}
.rightarrowcontent {width: 26px; height: 500px; display: block; background: url(/alfresco/nap/webAssets/webPage/Adidas-McCartney/content-arrow_right@2x.png) no-repeat center;position: absolute; top:0; left: 920px; background-size: 50%; z-index: 10 }
.contentslidetitle {font-size: 24px;font-family: "ModernNAP-Text"; margin-bottom: 50px; text-transform: uppercase; }
.contentslidecontent {font-family: gillsanslight; font-size: 14px; line-height: 19px}

.videooverlaytitle {width: 100%;  font-size:52px ;font-family: "ModernNAP-Display"; text-align: center; color: #000000; position: absolute; top: 66%; text-transform: uppercase; }
.videooverlaysubtitle {width: 100%;  font-size:32px ;font-family: "ModernNAP-DisplayItalic"; text-align: center; color: #000000; position: absolute; bottom: 12% }
.adidasAdvert {width: 451px; height: 354px; float: left; background-color: #454545; display: block; background: url(/alfresco/nap/webAssets/webPage/Adidas-McCartney/advertbg.jpg); margin-left:20px; position: relative;}

.advertLine1 {position: absolute; width: 140px; height: 45px; top: 240px; left: 25px; font-family: gillsanslight; font-size: 13px; color: #ffffff}
.advertLine2 {position: absolute; width: 140px; height: 45px; top: 275px; left: 25px; font-family: "ModernNAP-Display"; font-size: 22px; color: #ffffff; line-height: 19px}
.advertLine3 {position: absolute; width: 140px; height: 45px; top: 298px; left: 25px; font-family: "ModernNAP-Display"; font-size: 22px; color: #ffffff; line-height: 19px}


.advertMobile {display: none}
.contentsliderVideo {width: 49%; margin-left: 7%; padding-bottom: 30.8%; position: relative;height: 0; margin-top: 11%}


.contentsliderVideo iframe {  position: absolute; top: 0; left: 0; width: 100%; height: 100%;}

.videoslide {background-image: url(/alfresco/nap/webAssets/webPage/Adidas-McCartney/product_slide2.jpg); background-size: 100%}

.slide1 .contentslidetext {width: 310px; padding:20px 40px 20px 20px; height: 380px; left: 550px }
.slide1 .contentslidetitle {margin-bottom:20px;}

.slide2 .contentslidetext {width: 300px; padding:20px 40px; height: 254px; left: 532px; top:104px;  }
.slide2 .contentslidetitle {margin-bottom:20px;}

.slide3 .contentslidetitle {margin-bottom:10px;}
.slide3 .contentslidetext {width: 350px; padding:10px; height: 400px; left: 550px }


@media (max-width: 768px) {
  .advertMobile {width: 60%;margin: 0 auto 30px auto;border: 1px solid #cccccc;border-radius: 4px;font-family: gillsanslight;font-size: 13px;color: #000000;display: block;float: left;margin-left: 15%;padding: 5%;text-align: center;}
  .adidasAdvert {display: none}

  .adidasImageHolder img {width: 110px; margin-right: 430px;}



    .videooverlaytitle {font-size: 18px}
.videooverlaysubtitle {font-size: 16px}

.leftarrowcontent, .rightarrowcontent  {height: 150px; background-position: center}
.rightarrowcontent  {right:10px; left:auto;}

.contentcarousel {width: 100%}
.contentslide {width: 100%; height: auto; position: relative;}
.imagearea1 {position: relative; top:auto; left:auto; z-index: 2; float: left; background-size: 100% auto}
.imagearea2 { position: relative; top:auto; left:auto; z-index: 2; float: left; background-size: 100% auto}
.contentslidetext {position: relative; left: auto; top:auto; padding:10px; background-color: #ffffff; border: none; height: auto; width: 97%; z-index: 5; float: left ;}
.contentsliderVideo {width: 70%; margin-left: 15%; padding-bottom: 46.8%; position: relative;height: 0; margin-top: 1%}
.contentcarouselholder {position: relative; width: 96%; left: 2%}



  body {background: none !important; background-color: none}
  .holder{float: left}
  .videoAndTileHolder {height: auto; width:96%; margin-left:2%;}
  .adidastitle {position: relative; width: 100%; top:auto; float: left; font-family: "ModernNAP-Text"; font-size: 24px; text-align: center; text-transform: uppercase; margin-top: 20px; left:auto;}
  .adidasStrapline { width: 100%; font-family: gillsanslight; position: relative; top:auto; text-align: center; font-size: 16px; top: auto; left:auto;}

  .holder {max-width: 100%; margin: 0 auto; position: relative;}
  .carouselholder {width: 96%; position: relative; margin: 20px 0 20px 2%; border-bottom: 1px solid #cccccc; height: 140px; float: left;}
  #adidasplayer {width: 100%; left:0;  float:left; top:auto;}
  .videoholder {position: relative; left:0; float:left; width: 100%; height: auto}
  .imageoverlay {left:0; width: 100%; top:auto; position: relative; float: left}
  .leftarrow  {display: none !important}
  .rightarrow {display: none !important}
  .slidefade {right:9px; height: 89px}
  .slidefadeleft {height: 89px; left: -6px}
  .carousel {width: 100%; position: relative; float: left; left:auto;}
  .carousel img {width: 99%; }
  .carousel div {margin: 0 0;}


  .adidasProductRepeater {width: 150px; height: 310px}
  .adidasImageHolder img {width: 110px; margin-left: 18px}
  .adidasProductDescription, .adidasProductPrice, .adidasProductTitle    {width: 150px; text-align: center;}
  .adidasProductDescription {text-transform: none;}
  .adidasProductImage {height: 150px}

}


@media (max-width: 450px) {

  .videooverlaytitle {font-size:18px}
.videooverlaysubtitle {font-size: 16px}

}
</style>

  <body>
    <div class="holder">
      <div class="videoAndTileHolder">
      <div class="adidastitle">${message("page.title_" + language)}</div>
      <div class="adidasStrapline">${message("page.subtitle_" + language)}</div>
      <div class="videoholder">
      <div class="imageoverlay"><div class="videooverlaytitle"></div>
      <div class="videooverlaysubtitle"></div>
    </div>
      <div id="adidasplayer"></div>
    </div>
    </div>
    <div class="carouselholder">
        <div class="slidefadeleft"></div>
        <div class="slidefade"></div>
        <a class="leftarrow" onclick="$('.carousel').slickPrev();"><a>
      <div class="carousel">
        <div><a href="javascript:playlistJump(0)"><img src="/alfresco/nap/webAssets/webPage/Adidas-McCartney/1.jpg" width="150px" height="84px" /><div class="slidetext">${message("video0.overlaytitle_" + language)}</div></a></div>
        <div><a href="javascript:playlistJump(1)"><img src="/alfresco/nap/webAssets/webPage/Adidas-McCartney/2.jpg" width="150px" height="84px" /><div class="slidetext">${message("video1.overlaytitle_" + language)}</div></a></div>
        <div><a href="javascript:playlistJump(2)"><img src="/alfresco/nap/webAssets/webPage/Adidas-McCartney/3.jpg" width="150px" height="84px" /><div class="slidetext">${message("video2.overlaytitle_" + language)}</div></a></div>
        <div><a href="javascript:playlistJump(3)"><img src="/alfresco/nap/webAssets/webPage/Adidas-McCartney/4.jpg" width="150px" height="84px" /><div class="slidetext">${message("video3.overlaytitle_" + language)}</div></a></div>
        <div><a href="javascript:playlistJump(4)"><img src="/alfresco/nap/webAssets/webPage/Adidas-McCartney/5.jpg" width="150px" height="84px" /><div class="slidetext">${message("video4.overlaytitle_" + language)}</div></a></div>
        <div><a href="javascript:playlistJump(5)"><img src="/alfresco/nap/webAssets/webPage/Adidas-McCartney/6.jpg" width="150px" height="84px" /><div class="slidetext">${message("video5.overlaytitle_" + language)}</div></a></div>
        <div><a href="javascript:playlistJump(6)"><img src="/alfresco/nap/webAssets/webPage/Adidas-McCartney/7.jpg" width="150px" height="84px" /><div class="slidetext">${message("video6.overlaytitle_" + language)}</div></a></div>
      </div>
      <a class="rightarrow" onclick="$('.carousel').slickNext();" ><a>
    </div>

    <div class="wideTitle">${message("adidas_mobile_link_" + language)} </div>

    <div class="productHolder">
      <div class="adidasProducts">

        <div class="adidasAdvert">
          <div class="advertLine1">${message("adidas_advertline1_" + language)}</div>
          <div class="advertLine2">${message("adidas_advertline2_" + language)}</div>
          <div class="advertLine3">${message("adidas_advertline3_" + language)}</div>
        </div>
        <a class="advertMobile" href="#">${message("adidas_mobile_link_" + language)}</a>
      </div>
    </div>

    <div class="contentcarouselholder">
      <a class="leftarrowcontent" onclick="$('.contentcarousel').slickPrev();"><a>
    <div class="contentcarousel">
        <div class="contentslide slide1"> 
            <div class="imagearea1"><img src="/alfresco/nap/webAssets/webPage/Adidas-McCartney/product_slide1.jpg" style="width:100%; height:auto"></div>
            <div class="contentslidetext">
              <div class="contentslidetitle">${message("slide1.title_" + language)}</div>
              <div class="contentslidecontent">${message("slide1.text_" + language)}</div>
            </div>
        </div>

        <div class="contentslide videoslide  slide2"> 
              <div class="contentsliderVideo"><iframe id="carouselVideo" width="853" height="480" src="" frameborder="0" allowfullscreen></iframe></div>

               <div class="contentslidetext">
              <div class="contentslidetitle">${message("slide2.title_" + language)}</div>
              <div class="contentslidecontent">${message("slide2.text_" + language)}</div>
              </div>
        </div>

        <div class="contentslide slide3"> 
            
                 <div class="imagearea2"><img src="/alfresco/nap/webAssets/webPage/Adidas-McCartney/product_slide3.jpg" style="width:100%; height:auto"></div>

            <div class="contentslidetext">
              <div class="contentslidetitle">${message("slide3.title_" + language)}</div>
              <div class="contentslidecontent">${message("slide3.text_" + language)}</div>
              </div>
       </div>
       
  </div>
  <a class="rightarrowcontent" onclick="$('.contentcarousel').slickNext();"><a>
      </div>
  </div>
    <script>

videoOverlayTitles = ["${message("video0.overlaytitle_" + language)}", "${message("video1.overlaytitle_" + language)}", "${message("video2.overlaytitle_" + language)}", "${message("video3.overlaytitle_" + language)}", "${message("video4.overlaytitle_" + language)}", "${message("video5.overlaytitle_" + language)}", "${message("video6.overlaytitle_" + language)}", "${message("video7.overlaytitle_" + language)}", "${message("video8.overlaytitle_" + language)}", "${message("video9.overlaytitle_" + language)}", "${message("video10.overlaytitle_" + language)}"];

videoOverlaySubTitles = ["${message("video0.overlaysubtitle_" + language)}", "${message("video1.overlaysubtitle_" + language)}", "${message("video2.overlaysubtitle_" + language)}", "${message("video3.overlaysubtitle_" + language)}", "${message("video4.overlaysubtitle_" + language)}", "${message("video5.overlaysubtitle_" + language)}", "${message("video6.overlaysubtitle_" + language)}", "${message("video7.overlaysubtitle_" + language)}", "${message("video8.overlaysubtitle_" + language)}", "${message("video9.overlaysubtitle_" + language)}", "${message("video10.overlaysubtitle_" + language)}"];


var tag = document.createElement('script');

tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

 
var player;
function onYouTubeIframeAPIReady() {
  player = new YT.Player('adidasplayer', {
      
  events: {
    'onReady': onPlayerReady,
    'onStateChange': onPlayerStateChange
  }
  });
}      

      if ($('.l-service-message-extended-wrapper').length < 1) {
        $('body').css('background', 'url(/alfresco/nap/webAssets/webPage/Adidas-McCartney/headerbg.jpg) center 109px repeat-x')
      }


      function onPlayerReady(event) {

    

        event.target.cuePlaylist({list: "PLvb-ozNJbiMhzMDYcIo8HxpwNl-g4h534", index: 0, startSeconds: 0});

      
        //event.target.playVideo()
        //setTimeout(stopVideo, 10);

        var videoId = getParameterByName("videoId");

      

   


  if (videoId != "") {
    cuelistItem(videoId)
    $(".videooverlaytitle").html(videoOverlayTitles[videoId])
    $(".videooverlaysubtitle").html(videoOverlaySubTitles[videoId])
  } else {
    $(".videooverlaytitle").html(videoOverlayTitles[0])
    $(".videooverlaysubtitle").html(videoOverlaySubTitles[0])
  }
      }


      function onPlayerStateChange(event) {
         
        //if (event.data == YT.PlayerState.PLAYING && !done) {
        //  setTimeout(stopVideo, 600);
        //  done = true;
       // }


      }
      
      function stopVideo() {
        player.stopVideo();
      }

      function playlistJump(to) {
        $(".imageoverlay").fadeOut();
        player.playVideoAt(to);
        player.playVideo();
      }

      function cuelistItem(to) {
        player.playVideoAt(to);
      }

$(".imageoverlay").click(function() {
  $(".imageoverlay").fadeOut()
  player.playVideo();
});

Array.prototype.contains = function(k) {
    for(var p in this)
        if(this[p] === k)
            return true;
    return false;
}

function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

var wrapEveryN = function(n, elements, wrapper) {
   for (var i=0; i< elements.length; i+=n) {
       elements.slice(i,i+n).wrapAll(wrapper);
   }
}

function productHover(productID) {
  $('#product' + productID +' .adidasImageHolder').css('left', '-240px')
  $('#'+ productID +' .adidasProductTitle a').css('background-color', '#000000')
  $('#'+ productID +' .adidasProductTitle a').css('color', '#ffffff')
  $('#product' + productID).css('cursor','pointer');

}

function productHoverOut(productID) {
  $('#product' + productID +' .adidasImageHolder').css('left', '-0px')
  $('#'+ productID +' .adidasProductTitle a').css('background-color', '#ffffff')
  $('#'+ productID +' .adidasProductTitle a').css('color', '#000000')
  $('#product' + productID).css('cursor','pointer');
}

function loadProducts() {

soldout = String("${message("adidas_soldout_" + language)}")

if ($(window).width() > 767){



$.ajax({
      type: "GET",
        dataType: "xml",
        cache: false,
        url: "/Shop/Designers/Adidas_by_Stella_McCartney?view=xml",
        success: function(data) {

          var i = 0
          $(data).find("product").each(function(){

          i = i+1
        
          if (i  > 10) {return false;}
        
          altimage = $(this).attr("altImage").substr(0, 2);

          if (altimage == 'el') {altimage = 'l'}


          if ( $(this).attr("slugImage") != null){ 


            $(".adidasProducts").prepend("<div class='adidasProductRepeater' id='product"+ $(this).attr("id") +"''><div class='adidasProductImage' onmouseover='javascript:productHover("+$(this).attr("id")+")' onmouseout='javascript:productHoverOut("+$(this).attr("id")+")' id='product"+$(this).attr("id")+"' ><a class='adidasExlusive' href='/product/" + $(this).attr("id") + "'></a><div class='adidasImageHolder' ><a href='/product/" + $(this).attr("id") + "'><img src='http://www.net-a-porter.com/images/products/" + $(this).attr("id") + "/" + $(this).attr("id") + "_in_sl.jpg'/><img src='http://www.net-a-porter.com/images/products/" + $(this).attr("id") + "/" + $(this).attr("id") + "_ou_sl.jpg'/></a></div></div><div id="+ $(this).attr("id") +"><div class='adidasProductTitle'><a href='/product/" + $(this).attr("id") + "'>" + $(this).attr("manufacturer") + "</a></div></div><div class='adidasProductDescription'>" + $(this).attr("title") + "</div><div class='adidasProductPrice'>" + $(this).attr("currentPrice") + "</div><span class='slug'>"+ soldout + "</span></div>")
            
  
          } else {

            $(".adidasProducts").prepend("<div class='adidasProductRepeater'><div class='adidasProductImage' onmouseover='javascript:productHover("+$(this).attr("id")+")' onmouseout='javascript:productHoverOut("+$(this).attr("id")+")' id='product"+$(this).attr("id")+"' ><div class='adidasImageHolder'><a href='/product/" + $(this).attr("id") + "'><img src='http://www.net-a-porter.com/images/products/" + $(this).attr("id") + "/" + $(this).attr("id") + "_in_sl.jpg'/><img src='http://www.net-a-porter.com/images/products/" + $(this).attr("id") + "/" + $(this).attr("id") + "_ou_sl.jpg'/></a></div> </div><div id="+ $(this).attr("id") +"><div class='adidasProductTitle'><a href='/product/" + $(this).attr("id") + "'>" + $(this).attr("manufacturer") + "</a></div></div><div class='adidasProductDescription'>" + $(this).attr("title") + "</div><div class='adidasProductPrice'>" + $(this).attr("currentPrice") + "</div></div>")    
                };   

      }
        
    )  
    
    }
    });

}

if ($(window).width() < 768){

$.ajax({
      type: "GET",
        dataType: "xml",
        cache: false,
        url: "/Shop/Designers/Adidas_by_Stella_McCartney?view=xml",
        success: function(data) {
            var i = 0
      $(data).find("product").each(function(){

         i = i+1
        
          if (i  > 10) {return false;}

        
        altimage = $(this).attr("altImage").substr(0, 2);

        if (altimage == 'el') {altimage = 'l'}


        if ( $(this).attr("slugImage") != null){ 

          $(".adidasProducts").prepend("<div class='adidasProductRepeater' id='product"+ $(this).attr("id") +"''><div class='adidasProductImage' onmouseover='javascript:productHover("+$(this).attr("id")+")' onmouseout='javascript:productHoverOut("+$(this).attr("id")+")' onclick='getHref(" + $(this).attr("id") + ")' id='product"+$(this).attr("id")+"' ><a class='adidasExlusive' href='/product/" + $(this).attr("id") + "'></a><div class='adidasImageHolder' ><a href='/product/" + $(this).attr("id") + "'><img src='http://www.net-a-porter.com/images/products/" + $(this).attr("id") + "/" + $(this).attr("id") + "_in_sl.jpg'/></a></div></div><div id="+ $(this).attr("id") +"><div class='adidasProductTitle'><a href='/product/" + $(this).attr("id") + "'>" + $(this).attr("manufacturer") + "</a></div></div><div class='adidasProductDescription'>" + $(this).attr("title") + "</div><div class='adidasProductPrice'>" + $(this).attr("currentPrice") + "</div><span class='slug'>"+ soldout + "</span></div>")
            
  
        } else {

          $(".adidasProducts").prepend("<div class='adidasProductRepeater'><div class='adidasProductImage' onmouseover='javascript:productHover("+$(this).attr("id")+")' onmouseout='javascript:productHoverOut("+$(this).attr("id")+")' onclick='getHref(" + $(this).attr("id") + ")' id='product"+$(this).attr("id")+"' ><div class='adidasImageHolder'><a href='/product/" + $(this).attr("id") + "'><img src='http://www.net-a-porter.com/images/products/" + $(this).attr("id") + "/" + $(this).attr("id") + "_in_sl.jpg'/></a></div></div><div id="+ $(this).attr("id") +"><div class='adidasProductTitle'><a href='/product/" + $(this).attr("id") + "'>" + $(this).attr("manufacturer") + "</a></div></div><div class='adidasProductDescription'>" + $(this).attr("title") + "</div><div class='adidasProductPrice'>" + $(this).attr("currentPrice") + "</div></div>")    
                };   

      }
        
                )  
    
    }
    });
}

}

function fixSocialMedia() {
  $("#social-media-bar").html("<div class='line'></div><ul id='social-media-links'><li class='facebook'><a href='https://www.facebook.com/netaporter' target='_blank'><span>NET-A-PORTER FACEBOOK</span></a></li><li class='twitter'><a href='https://twitter.com/#!/NETAPORTER' target='_blank'><span>NET-A-PORTER TWITTER</span></a></li><li class='pinterest'><a href='http://pinterest.com/netaporter/' target='_blank'><span>NET-A-PORTER PINTEREST</span></a></li><li class='tumblr'><a href='http://editors-photo-diary.net-a-porter.com/' target='_blank'><span>NET-A-PORTER TUMBLR</span></a></li><li class='googleplus'><a href='https://plus.google.com/115458014935766479911/posts' target='_blank'><span>NET-A-PORTER GOOGLE+</span></a></li><li class='youtube'><a href='http://www.youtube.com/netaporter' target='_blank'><span>NET-A-PORTER YOUTUBE</span></a></li></ul>")
}

function setAspectRatios() {
   if ($(window).width() <768) {
    pushLeft = $(window).width() - 40
    $(".slidefade").css("left", pushLeft)
  }

  $("#adidasplayer").height(  $("#adidasplayer").width() * aspect_ratio );
  $(".imageoverlay").height($("#adidasplayer").width() * aspect_ratio );
  $(".videoholder").height($("#adidasplayer").width() * aspect_ratio );
   //$(".videoAndTileHolder").height($("#adidasplayer").width() * holder_ratio );
}

function getHref(product){  
  location.href="/product/" + product
}

function loadCarousels() {

  $(".carousel").slick({
    dots:false,
    infinite: false,
    slidesToShow: 5.5,
    onAfterChange: function(e){
   
   if ($(window).width() > 767) {
   
      if (e.currentSlide == 0) {
        $(".leftarrow").fadeOut()
        $(".rightarrow").fadeIn()
        $(".slidefadeleft").fadeOut()
      }
      if (e.currentSlide > 0 && e.currentSlide < 6) {
        $(".leftarrow").fadeIn()
        $(".rightarrow").fadeIn()
        $(".slidefade").fadeIn()
        $(".slidefadeleft").fadeIn()
      }
      if (e.currentSlide == 5) {
     
        $(".leftarrow").fadeIn()
        $(".rightarrow").fadeOut()
        $(".slidefade").fadeOut()
        $(".slidefadeleft").fadeIn()
      }
      }
      if ($(window).width() < 768 && $(window).width() > 339 ) {
     
      if (e.currentSlide == 0) {
        $(".leftarrow").fadeOut()
        $(".rightarrow").fadeIn()
        $(".slidefadeleft").fadeOut()
      }
      if (e.currentSlide > 0 && e.currentSlide < 6) {
        $(".leftarrow").fadeIn()
        $(".rightarrow").fadeIn()
        $(".slidefade").fadeIn()
        $(".slidefadeleft").fadeIn()
      }
      if (e.currentSlide == 6) {
     
        $(".leftarrow").fadeIn()
        $(".rightarrow").fadeOut()
        $(".slidefade").fadeOut()
        $(".slidefadeleft").fadeIn()
      }
      }

      if ($(window).width() < 340) {
     
      if (e.currentSlide == 0) {
        $(".leftarrow").fadeOut()
        $(".rightarrow").fadeIn()
        $(".slidefadeleft").fadeOut()
      }
      if (e.currentSlide > 0 && e.currentSlide < 8) {
        $(".leftarrow").fadeIn()
        $(".rightarrow").fadeIn()
        $(".slidefade").fadeIn()
        $(".slidefadeleft").fadeIn()
      }
      if (e.currentSlide == 8) {
        $(".leftarrow").fadeIn()
        $(".rightarrow").fadeOut()
        $(".slidefade").fadeOut()
        $(".slidefadeleft").fadeIn()
      }
      }



    },
    responsive: [
    
    {
      breakpoint: 768,
      settings: {
        slidesToShow: 4.5,
        slidesToScroll: 2,
        arrows: false
      }
    },
    {
      breakpoint: 340,
      settings: {
        slidesToShow: 2.5,
        slidesToScroll: 1,
        arrows: false
      }
    }
  ]
  });

  $(".contentcarousel").slick({
    dots:false,
    infinite: false,
    slidesToShow: 1,
    onAfterChange: function(e){
   
      if (e.currentSlide == 0) {
        $(".leftarrowcontent").fadeOut()
        $(".rightarrowcontent").fadeIn()
        $("#carouselVideo").attr('src', '');
      }
     
      if (e.currentSlide == 1) {
        $(".leftarrowcontent").fadeIn()
        $(".rightarrowcontent").fadeIn()
        $("#carouselVideo").attr('src', 'http://www.youtube.com/embed/hBIPh_hC59k');
      }

      if (e.currentSlide == 2) {
        $(".leftarrowcontent").fadeIn()
        $(".rightarrowcontent").fadeOut()
        $("#carouselVideo").attr('src', '');
      }
    },

    responsive: [
    
    {
      breakpoint: 768,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false
      }
    }
    ]
  });
}

var aspect_ratio = 0.5625
var holder_ratio = 0.9

jQuery(window).resize(function() {

  if ($(window).width() <768) {
    pushLeft = $(window).width() - 40
    $(".slidefade").css("left", pushLeft)
  }

   $("#adidasplayer").height($("#adidasplayer").width() * aspect_ratio );
   $(".imageoverlay").height($("#adidasplayer").width() * aspect_ratio );
   $(".videoholder").height($("#adidasplayer").width() * aspect_ratio );
   //$(".videoAndTileHolder").height($("#adidasplayer").width() * holder_ratio );
});

$(document).ready(function(){

  fixSocialMedia() 
  setAspectRatios();
  loadCarousels();
  loadProducts();


 
  
$(window).load(function() {

   
  
  if ($('.service-messages-extended').length < 1) {
    $("body").css('background-position', 'center 108px');
      } else  {
    $("body").css('background-position', 'center 144px');
      }
  });
  
});


    </script>
  </body>
</html>
