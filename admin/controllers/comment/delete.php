<?php
//load model
require_once('admin/models/comments.php');
$comid = intval($_GET['comid']);
comment_delete($comid);
header('location:admin.php?controller=comment');