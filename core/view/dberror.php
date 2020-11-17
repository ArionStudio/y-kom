<?php
    session_start();
    echo $_SESSION['error'][0] . "<br/>";
    echo $_SESSION['error'][1]; 