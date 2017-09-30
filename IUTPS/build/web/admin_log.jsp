<%@page import= "javax.servlet.http.HttpSession" %>
<%
    //HttpSession session = request.getSession(true);

    if (session.getAttribute("currentSessionAdmin") != null) {
        response.sendRedirect("index_1.jsp");
    }

%>

<%@ page language="java" 
         contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"

         %>

<!DOCTYPE html>

<html>
    <head>
        <title>Admin Login</title>
        <link rel="stylesheet" type="text/css" href="css/i_style.css" />
        <style>
            .login {
                width: 300px;
                height: 285px;
                overflow: hidden;
                background: #1e1e1e;
                border-radius: 6px;
                margin: 50px auto;
                box-shadow: 0px 0px 50px rgba(0,0,0,.8);
            }

            .login .titulo {
                width: 298px;
                height: 14px;
                padding-top: 13px;
                padding-bottom: 13px;
                font-size: 14px;
                text-align: center;
                color: #bfbfbf;
                font-weight: bold;
                background: #121212;
                border: #2d2d2d solid 1px;
                margin-bottom: 30px;
                border-top-right-radius: 6px;
                border-top-left-radius: 6px;
                font-family: Arial;
            }

            .login form {
                width: 240px;
                height: auto;
                overflow: hidden;
                margin-left: auto;
                margin-right: auto;
            }

            .login form input[type=text], .login form input[type=password] {
                width: 200px;
                font-size: 12px;
                padding-top: 14px;
                padding-bottom: 14px;
                padding-left: 40px;
                border: none;
                color: #bfbfbf;
                background: #141414;
                outline: none;
                margin: 0;
            }

            .login form input[type=text] {
                border-top-left-radius: 6px;
                border-top-right-radius: 6px;
                border-top: #0b0b0b solid 1px;
                background: #141414 url;
            }

            .login form input[type=password] {
                border-bottom-left-radius: 6px;
                border-bottom-right-radius: 6px;
                border-top: #0b0b0b 1px solid;
                border-bottom: #353535 1px solid;
                background: #141414 url;
            }

            .login form .enviar {
                width: 240px;
                height: 12px;
                display: block;
                padding-top: 14px;
                padding-bottom: 14px;
                border-radius: 6px;
                border: none;
                border-top: #4eb2a8 1px solid;
                border-bottom: #161616 1px solid;
                background: #349e92;
                text-align: center;
                text-decoration: none;
                font-size: 12px;
                font-weight: bold;
                color: #FFF;
                text-shadow: 0 -1px #1d7464, 0 1px #7bb8b3;
                font-family: Arial;
            }

            .login .olvido {
                width: 240px;
                height: auto;
                overflow: hidden;
                padding-top: 25px;
                padding-bottom: 25px;
                font-size: 10px;
                text-align: center;
            }

            .login .olvido .col {
                width: 50%;
                height: auto;
                float: left;
            }

            .login .olvido .col a {
                color: #fff;
                text-decoration: none;
                font: 12px Arial;
            }

            html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
                margin: 0;
                padding: 0;
                border: 0;
                font-size: 100%;
                font: inherit;
                vertical-align: baseline;
            }


            article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section { display: block }

            body { line-height: 1 }

            ol, ul { list-style: none }

            blockquote, q { quotes: none }

            blockquote:before, blockquote:after, q:before, q:after {
                content: '';
                content: none;
            }

            table {
                border-collapse: collapse;
                border-spacing: 0;
            }
        </style>

    </head>

    <body>
        <section class="login">
            <div class="titulo">Admin Login</div>

            <form action="LoginServlet" method = "get">
                <input type="text" required title="Username required" name="uname" placeholder="Username" >
                <input type="password" required title="Password required" name="pword" placeholder="Password">
                <div class="olvido">
                    <div class="col" style="color:Red"><p><%                if (null != request.getAttribute("errorMessage")) {
                            out.println(request.getAttribute("errorMessage"));
                        }%></p>
                    </div>
                </div>
                <input type="submit" class="enviar" value="Login">
            </form>

        </section>
        <input type="submit" value="Go Back to Home" style="position: relative;top: 50%;left: 50%; height: 30px; width: 140px; left: 250; top: 250;" onClick="location.href = 'index.jsp'">
    </body>
</html>