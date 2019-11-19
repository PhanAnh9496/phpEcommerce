<?php
//load model
require_once('admin/models/orders.php');
$oid = intval($_GET['id']);
orders_delete($oid);
header('location:admin.php?controller=order');