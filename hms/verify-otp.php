<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
error_reporting(E_ALL);
ini_set('display_errors', 1);

session_start();
error_reporting(0);
include("include/config.php");

session_start();
if (!isset($_SESSION['otp']) || !isset($_SESSION['otp_username'])) {
    header("location:user-login.php");
    exit();
}

if (isset($_POST['verify'])) {
    $enteredOTP = $_POST['otp'];
    $savedOTP = $_SESSION['otp'];

    // Retrieve stored OTP from the database
    $username = $_SESSION['otp_username'];
    $retrieveOtpQuery = "SELECT otp FROM otp_records WHERE username = ? ORDER BY created_at DESC LIMIT 1";
    $stmt = mysqli_prepare($con, $retrieveOtpQuery);
    mysqli_stmt_bind_param($stmt, "s", $username);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);
    $row = mysqli_fetch_assoc($result);
    $storedOTP = $row['otp'];
    $userEmail = $row['email'];

    if ($enteredOTP == $storedOTP) {
        $_SESSION['login'] = $_SESSION['otp_username'];
        // Perform login actions
// Send email containing OTP
$subject = "Your OTP for Verification";
$message = "Your OTP is: $storedOTP";
$headers = "From: zephany001@gmail.com"; // Replace with your actual email

// Sending email
if (mail($userEmail, $subject, $message, $headers)) {
    echo "Email sent successfully";
} else {
 echo "Email sending failed";
}
        // Redirect to dashboard.php after successful verification
        header("location:dashboard.php");
        exit(); // Important: Always exit after a header redirection
    } else {
        $otpError = "Invalid OTP.Please try again.";
    }
}
?>

<!-- Create your OTP verification form -->

<!DOCTYPE html>
<html lang="en">
<!-- Your HTML head and CSS links -->
<body class="login">
    <!-- Your HTML code for OTP verification form -->
    <form action="verify-otp.php" method="post" >
        <input type="text" name="otp" placeholder="Enter OTP" required>
        <?php if (isset($otpError)) { echo "<p style='color: red;'>$otpError</p>"; } ?>
        <button type="submit" name="verify">Verify OTP</button>
    </form>
</body>
</html>
