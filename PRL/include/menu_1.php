<?php
if (isset($_SESSION['user_type'])and ( $_SESSION['user_type'] == 1)) {
    ?>
    <a href="events_preview.php" dir="rtl">استعراض الاحداث</a>&nbsp;|
    <a href="events_show.php">عرض الاحداث للشاشات</a>&nbsp;|
    <a href="users.php">المستخدمون</a>&nbsp;|
    <a href="committees.php">اللجان</a>&nbsp;|
    <a href="logout_page.php">تسجيل الخروج</a>
    <hr>
<?php } else {
    ?>
    <a href="events_preview.php" dir="rtl">استعراض الاحداث</a>&nbsp;|
    <a href="events_show.php">عرض الاحداث للشاشات</a>&nbsp;|
    <a href="logout_page.php">تسجيل الخروج</a>
    <hr>
    <?php
}
