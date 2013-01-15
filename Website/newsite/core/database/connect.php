<?php
$connect_error = 'Sorry, we\'re experiencing connection problems.';
mysql_connect('205.178.146.103', 'libertyint', 'Coolermaster1') or die($connect_error. ": ". mysqlerror());
mysql_select_db('libertyint_lr') or die($connect_error. ": ". mysqlerror());
?>