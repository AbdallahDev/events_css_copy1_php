<?php

session_start();
date_default_timezone_set('Asia/Amman');

if (!isset($_SESSION['user_id'])) {
    header('location: login_page.php');
    exit();
}