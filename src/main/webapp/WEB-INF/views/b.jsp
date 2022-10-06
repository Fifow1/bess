
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Multiple Image Upload with Preview and Delete jQuery Plugin</title>
    <link href="https://transloadit.edgly.net/releases/uppy/v1.6.0/uppy.min.css" rel="stylesheet">
  </head>
  <body>
    <div id="drag-drop-area"></div>
 
    <script src="https://transloadit.edgly.net/releases/uppy/v1.6.0/uppy.min.js"></script>
    <script>
      var uppy = Uppy.Core()
        .use(Uppy.Dashboard, {
          inline: true,
          target: '#drag-drop-area'
        })
        .use(Uppy.Tus, {endpoint: 'https://master.tus.io/files/'}) //you can put upload URL here, where you want to upload images
 
      uppy.on('complete', (result) => {
        console.log('Upload complete! We’ve uploaded these files:', result.successful)
      })
    </script>
  </body>
</html>