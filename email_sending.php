<?php

$to_email = "chris.ultd@gmail.com";
$subject = "SCADOMS System Email Sendind Test";
$body = "Hi, This is test email send by PHP Script";
$headers = "From: scadoms.system@gmail.com";
 
if (mail($to_email, $subject, $body, $headers)) {
    echo "Email successfully sent to $to_email...";
     header("Refresh:0,home.php");
} else {
    echo "Email sending failed...";

}