#!/bin/bash
#Use dos2unix in bash terminal to make it readable by bash
mkdir $1
cd $1
mkdir assets
mkdir assets/images
mkdir assets/css
mkdir assets/javascript
touch assets/css/style.css
cat <<EOF >index.html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <title></title>
    <!-- bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" \n integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- local css -->
    <link rel="stylesheet" type="text/css" media="screen" href="assets/css/style.css"/>
    <!-- local js -->
    <script src="assets/javascript/app.js"></script>
</head>
<body>
    
</body>
</html>
EOF
cd assets/javascript/
cat <<EOF >app.js
\$(document).ready(function() {
});
EOF