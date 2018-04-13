<?php
include 'include/check_session.php';
?>
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
        <title>استعراض الاحداث</title>
        <script src="../jquery-3.2.1.min.js" type="text/javascript"></script>
        <script>
            function show_events() {
                $.get('events_get_preview.php', function (data, status) {
                    $('#events').html(data);
                });
            }
            $(document).ready(function () {
                $('#add').click(function () {
                    $.post('events_insert.php', {
                        committee_id: $("#committee option:selected").val(),
                        time: $('#time').val(),
                        hall_id: $("#hall").val(),
                        subject: $('#subject').val(),
                        event_date: $('#event_date').val(),
                        event_status: $('#event_status:checkbox:checked').val()
                    }, function (data, status) {
                        show_events();
                    });
                });
            });
            setInterval(show_events, 1000);
        </script>
        <link href="../css1.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <?php include_once 'include/menu.php'; ?>
        <div dir="rtl" style="text-align: center">
            <select id="committee">
                <?PHP
                include_once '../Bll/user_committee.php';
                $user_committee = new user_committee();
                $rs_user_committee = $user_committee->user_committees_get($_SESSION['user_id']);
                while ($row_user_committee = $rs_user_committee->fetch_assoc()) {
                    echo '<option value="' . $row_user_committee['committee_id'] . '">'
                    . $row_user_committee['committee_name']
                    . '</option><br>';
                }
                ?>
            </select><br>
            <input type="time" id="time" placeholder="الوقت"><br>
            <select id="hall">
                <?PHP
                include_once '../BLL/halls.php';
                $hall = new halls();
                $rs_hall = $hall->halls_get_all();
                while ($row_hall = $rs_hall->fetch_assoc()) {
                    echo '<option value="' . $row_hall['hall_id']
                    . '">' . $row_hall['hall_name']
                    . '</option><br>';
                }
                ?>
            </select><br>
            <textarea rows="5" cols="48" id="subject" placeholder="الموضوع"></textarea><br>
            <input type="date" id="event_date" placeholder="التاريخ"><br>
            <input type="checkbox" id="event_status" 
                   value="1">نشر على الشاشة</td>
            <br>
            <input type="button" id="add" name="add" value="اضف">
        </div>
        <hr>
        <div id="events"></div>
    </body>
</html>
