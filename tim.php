<?php
session_start();
require 'QRCode.class.php'; // Include the QRCode class

try {
    // Make sure $_SESSION['id'] is set
    if (!isset($_SESSION['id'])) {
        throw new Exception('User ID not set in session.');
    }

    // Create the URL for the QR code based on the logged-in user ID
    $userId = $_SESSION['id'];
    $url = 'http://172.20.10.6/exam/student_panel.php?id=' . $userId;

    // Create QRCode object
    $oQRC = new QRCode;

    // Set up the QRCode data
    $oQRC->fullName($url)   // Add Full Name
         ->url($url)        // Add URL to the QR Code
         ->finish();        // Finish the QRCode setup

    // Display the QR Code as an image
    echo '<p><img src="' . $oQRC->get(300) . '" alt="QR Code" /></p>'; // Generate and display the QR Code

} catch (Exception $e) {
    // Display any errors
    echo '<p><b>Exception launched!</b><br /><br />' .
         'Message: ' . $e->getMessage() . '<br />' .
         'File: ' . $e->getFile() . '<br />' .
         'Line: ' . $e->getLine() . '<br />' .
         'Trace: <p/><pre>' . $e->getTraceAsString() . '</pre>';
}
?>
