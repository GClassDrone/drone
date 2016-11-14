<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- jQuery library (served from Google) -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <!-- bxSlider Javascript file -->
    <script src="jquery.bxslider/jquery.bxslider.min.js"></script>
    <!-- bxSlider CSS file -->
    <link href="jquery.bxslider/jquery.bxslider.css" rel="stylesheet" />
    <title>Bootstrap</title>
    <script type="text/javascript">
    $(document).ready(function() {
        $('.slider').bxSlider({
            slideWidth: 300,
            minSlides: 4,
            maxSlides: 4,
            moveSlide: 4,
            slideMargin: 10
        });
    });
    </script>
</head>
<body>
    <div class="slider">
        <div class="slide"><img src="http://placehold.it/300x150&text=FooBar1"></div>
        <div class="slide"><img src="http://placehold.it/300x150&text=FooBar2"></div>
        <div class="slide"><img src="http://placehold.it/300x150&text=FooBar3"></div>
        <div class="slide"><img src="http://placehold.it/300x150&text=FooBar4"></div>
        <div class="slide"><img src="http://placehold.it/300x150&text=FooBar5"></div>
        <div class="slide"><img src="http://placehold.it/300x150&text=FooBar6"></div>
        <div class="slide"><img src="http://placehold.it/300x150&text=FooBar7"></div>
        <div class="slide"><img src="http://placehold.it/300x150&text=FooBar8"></div>
        <div class="slide"><img src="http://placehold.it/300x150&text=FooBar9"></div>
        <div class="slide"><img src="http://placehold.it/300x150&text=FooBar10"></div>
    </div>
    <!-- content container -->
    
    <i class="fa fa-2x fa-arrow-left"></i>
    <i class="fa fa-2x fa-arrow-right"></i>
    
</body>

</html>