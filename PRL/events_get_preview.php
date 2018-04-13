<?php
include_once 'include/check_session.php';
?>

<?php
include_once '../BLL/events.php';

$event1 = new events();
$rs = $event1->get_events();
?> <table>
    <tr>
        <th>اللجنة</th>
        <th>الوقت</th>
        <th>المكان</th>
        <th>الموضوع</th>
        <th>التاريخ</th>
        <th>المستخدم</th>
        <th>وقت الادخال</th>
        <th>الشاشة</th>
        <th>تعديل</th>
        <th>حذف</th>
    </tr>

    <?php
    while ($row = $rs->fetch_assoc()) {
        ?>
        <tr>
            <td><?php echo $row['committee_name']; ?></td>
            <td><?php echo date('h:i A', strtotime($row['time'])); ?></td>
            <td><?php echo $row['hall_name']; ?></td>
            <td><?php echo $row['subject']; ?></td>
            <td><?php echo $row['event_date']; ?></td>
            <td><?php echo $row['name']; ?></td>
            <td><?php
                echo date('d-m-Y / h:i A'
                        , strtotime($row['event_insertion_date']));
                ?></td>
            <?php
            setlocale(LC_ALL, 'ar_AE.utf8');
            date_default_timezone_set('Asia/Amman');
            $date = date('Y-m-d');
            if (($row['event_status'] == 1) and $row['event_date'] == $date) {
                ?>
                <td style="color: white; background-color: red">منشور</td>
                <?php
            } else {
                ?>
                <td>غير منشور</td>
                <?php
            }
            if ($_SESSION['user_type'] == 1) {
                ?>
                <td><a href="events_edit_page.php?id=<?php echo $row['id']; ?>">تعديل</a></td>
                <td><a href="events_delete.php?id=<?php echo $row['id']; ?>">حذف</a></td>
            <?php } elseif ($_SESSION['user_id'] == $row['user_id']) {
                ?>
                <td><a href="events_edit_page.php?id=<?php echo $row['id']; ?>">تعديل</a></td>
                <td><a href="events_delete.php?id=<?php echo $row['id']; ?>">حذف</a></td>
            <?php } else {
                ?>
                <td><a href="#">تعديل</a></td>
                <td><a href="#">حذف</a></td>
                <?php
            }
            ?>
        </tr>
        <?php
    }
    ?></table>
