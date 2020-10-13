<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<style>

.drone {
  width: 100px;
  height: 10px;
  background-color: blue;
  position: relative;
}

.mystyle {
  
  animation-name: droneanimation;
  animation-fill-mode: forwards;
}

@keyframes droneanimation {
  0%   {left:0px; top:0px;}
  100% {left:400px; top:0px;}
}

canvas{border:#666 1px solid;}
</style>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script>
        $.ajaxSetup({ cache: false });
            $(document).on("click", "#somebutton", function() { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
            	
                $.get("someservlet", function(responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
                   $veloc=responseText;                  
                  // $("#somediv").text($veloc); // Locate HTML DOM element with ID "somediv" and set its text content with the response text.
                });
            });
        </script>


         <script>
        $.ajaxSetup({ cache: false });
            $(document).on("click", "#somebutton3", function() { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
            	
                $.get("someservlet", function(responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
                   $veloc3=responseText;                  
                   $("#somediv").text($veloc3); // Locate HTML DOM element with ID "somediv" and set its text content with the response text.
                   $("head").append("<style> .mystyle{ animation-duration: "+$veloc3+"s} </style>");
                  /// $(".mystyle").attr("animation-duration", "10s");
                  // $(".mystyle").css("animation-duration", "10s");
                  ///$(".mystyle").css("animation-duration", "40s");
                   $("#myDIV").addClass('mystyle');
                });
            });
        </script>
<script>
function draw(x,y){

    var canvas = document.getElementById('canvas');
    var ctx = canvas.getContext('2d');
    ctx.save();
    ctx.clearRect(0,0,550,400);
    ctx.fillStyle = "rgba(0,200,0,1)";
    ctx.fillRect (x, y, 50, 50);
    ctx.restore(); 
    var velocity=parseInt($veloc);
    x += velocity;
    var loopTimer = setTimeout('draw('+x+','+y+')',5);

}
</script>


</head>

<body>
<button onclick="draw(0,0)" >Draw</button>
<canvas id="canvas" width="550" height="400"></canvas>
  <button id="somebutton">press here</button>
        <div id="somediv"></div>
        
        
        
        
<button id="somebutton3">Try it</button>
<div id="myDIV" class="drone">
I am a DIV element
</div>

<script>



</script>

</body>  
</html>