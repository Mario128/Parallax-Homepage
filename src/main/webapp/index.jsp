<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="style/style.css">
</head>
<body>
    <header>
        <a href="" class="logo"> LOGO </a>
        <ul>
            <li><a href="index.jsp" class="active">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Work</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </header>
    <section>
        <img src="media/stars.png" id="stars">
        <img src="media/moon-modified(3).png" id="moon">
        <img src="media/mountains_behind.png" id="mountains_behind">
        <h2 id="text">Moon Light</h2>
        <a href="#sec" id="btn">Explore</a>
        <img src="media/mountains_front.png" id="mountains_front">
    </section>
    <div class="sec" id="sec">
        <h2>Parallax Scrolling Effects</h2>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed sit pariatur impedit necessitatibus quasi earum iure dicta eius culpa dolores.</p>

    </div>
    <script>
        let stars = document.getElementById('stars');
        let moon = document.getElementById('moon');
        let mountains_behind = document.getElementById('mountains_behind');
        let mountains_front = document.getElementById('mountains_front');
        let text = document.getElementById('text');
        let btn = document.getElementById("btn");

        window.addEventListener('scroll', () => {
            let value = window.scrollY;
            stars.style.left = value * 0.25 +'px';
            moon.style.marginTop = value * 1.3 + 'px';
            mountains_behind.style.top = value * 0.25 + 'px';
            mountains_front.style.top = value * 0 + 'px';
            text.style.marginRight = value * 2 + 'px';
            text.style.marginTop = value * 1.5 + 'px';
            btn.style.marginTop = value * 1.5 + 'px';
        })
    </script>
</body>
</html>