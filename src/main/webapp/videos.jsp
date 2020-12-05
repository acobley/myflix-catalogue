<%-- 
    Document   : videos
    Created on : Nov 1, 2015, 10:38:29 AM
    Author     : andy
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.myflix.myflix.stores.Video"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://vjs.zencdn.net/4.11/video-js.css" rel="stylesheet">
    <script src="http://vjs.zencdn.net/4.11/video.js"></script>
        <link href="http://vjs.zencdn.net/4.11/video-js.css" rel="stylesheet">
    <script src="http://vjs.zencdn.net/4.11/video.js"></script>
        <title>Videos</title>
    </head>
    <body>
         <h1>Your Videos</h1>
         <div class ="videos")>
         <%
            LinkedList<Video> lsVideos = (java.util.LinkedList<Video>) request.getAttribute("Videos");
            if (lsVideos != null) {
                for (Video video:lsVideos){
                    HashMap<String,String> fields= video.getfields();
                    String server=fields.get("server").replaceAll("\"", "");
                    String name=fields.get("Name").replaceAll("\"", "");
                    String thumb=fields.get("thumb").replaceAll("\"", "");
                    String suuid=fields.get("uuid").replaceAll("\"", "");
                    String category=fields.get("category").replaceAll("\"", "");
                    %>
                    <h2 class="name"><%=name%></h2>
                    <h3 class="category">Catagory: <%=category%></h3>
                    <a href="/myflix/video/<%=suuid%>">
                    <img src="http://34.73.114.48/pics/<%=thumb%>">
                    </a>
                    <%
                }
            }
            
        %>
         </div><!-- comment -->
         <h2>Recomendations</h2>
         <div class="Recomendations">
             <%
             ArrayList<String> recs=(java.util.ArrayList<String>) request.getAttribute("Recomendations");
             for (String title:recs){
                 %>
                 <h3 class="category">: <%=title%></h3>
                 <%
             
             }
             %>
         </div>
    </body>
</html>
