<?Php include_once 'include/check_session.php'; ?>
<!DOCTYPE html>
<html>
    <head>
        <title>انشاء جديد</title>
        <!--header file inclusion-->
        <?php include_once 'include/header.php'; ?>
    </head>
    <body>

        <!---top menu file inclusion-->
        <?php include 'include/menu.php' ?>

        <!-- Sidebar menu and button -->
        <div>
            <!-- Sidebar menu -->
            <div>
                <nav class="w3-sidebar w3-bar-block w3-white w3-card-2 w3-animate-left w3-xxlarge" style="display:none;z-index:2" id="mySidebar">
                    <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-display-topright w3-text-teal">Close
                        <i class="fa fa-remove"></i>
                    </a>
                    <hr>
                    <a class="w3-bar-item w3-button" href='urgents_view_current_future.php'>الحالي / القادم</a>
                    <a class="w3-bar-item w3-button" href='urgents_view_old.php'>الأرشيف</a>
                </nav>
            </div>
            <!-- Sidebar button -->
            <div>
                <br>
                <div class="w3-container" style="position:relative">
                    <a onclick="w3_open()" class="w3-button w3-xlarge w3-circle w3-teal"
                       style="position:absolute;top:-28px;right:24px">+</a>
                </div>
            </div>
        </div>

        <!--form-->
        <div class="w3-container w3-padding-64" id="contact">
            <div class="right-align-text">
                <form class="w3-container w3-card-4 w3-padding-16 w3-white" action="urgent_insert_page_ctl.php" method="post">
                    <div class="w3-section">
                        <label>النص</label>
                        <textarea class="w3-input w3-border right-dir" placeholder="النص" name="urgent_text"></textarea>
                    </div>
                    <div class="w3-section">
                        <label>تاريخ الابتداء</label>
                        <input class="w3-input w3-border right-align-text" type="date" name="urgent_date_start" value="<?php echo date('Y-m-d'); ?>">
                    </div>
                    <div class="w3-section">
                        <label>تاريخ الانتهاء</label>
                        <input class="w3-input w3-border right-align-text" type="date" name="urgent_date_end" value="<?php echo date('Y-m-d'); ?>">
                    </div>
                    <div class="w3-section">
                        <label>وقت الانتهاء</label>
                        <input class="w3-input w3-border right-align-text" type="time" name="urgent_time_end" value="<?php echo date('H:i'); ?>">
                    </div>
                    <div class="w3-section">
                        <label>تفعيل</label>
                        <input class="w3-check" type="checkbox" name="urgent_status1" value="1">
                    </div>
                    <button class="w3-button w3-right w3-theme" type="submit" name="submit">انشاء</button>
                </form>
            </div>
        </div>

        <!--footer inclusion-->
        <?php include_once 'include/footer.php'; ?>
    </body>
</html>
