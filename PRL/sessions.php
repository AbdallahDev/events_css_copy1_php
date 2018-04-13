<?Php include_once 'include/check_session.php'; ?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="../css_w3css.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inconsolata">
        <style>
            body, html {
                height: 100%;
                font-family: "Inconsolata", sans-serif;
            }
            .bgimg {
                background-position: center;
                background-size: cover;
                background-image: url("/w3images/coffeehouse.jpg");
                min-height: 75%;
            }
            .menu {
                display: none;
            }
        </style>
        <meta charset="UTF-8" lang="AR">
        <script src="../jquery-3.2.1.min.js" type="text/javascript"></script>
        <script>
            function show_sessions() {
                $.get('sessions_get.php', function (data, status) {
                    $('#sessions').html(data);
                });
            }
            $(document).ready(function () {
                show_sessions();
            });
            setInterval(show_sessions, 1000);
        </script>
        <link href="../css1.css" rel="stylesheet" type="text/css"/>
        <title>الجلسات</title>
    </head>
    <body>
        <?php
        include_once 'include/menu.php';
        ?>
        <!-- Add a background color and large text to the whole page -->
        <div class="w3-large">
            <!-- About Container -->
            <div class="w3-container" id="about">
                <div class="w3-content" style="max-width:700px">
                    <h4><a href="sessions_insert_page.php">اضف جلسة جديدة</a></h4>
                    <div id="sessions">
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
