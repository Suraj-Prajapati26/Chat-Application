# Chat Application using PHP Websocket

This is a chat application created using Ratchet WebSocket and PHP. In this application, users can chat in a group or have private one-on-one conversations.

## How to Run the Ratchet WebSocket

To run the WebSocket, follow these steps:

1. Open the command prompt within the root directory of the project.
2. Enter the command `php bin/server.php`. This will start the WebSocket server.
   Note: Make sure you have the necessary dependencies and configurations in place.

## Initializing SMTP

During registration, a verification code will be sent to the user's email address. To enable this functionality, you need to set up an SMTP server for sending emails. Follow the steps below:

1. Open the `registration.php` file.
2. Update the following settings within the file:

$mail->isSMTP();
$mail->Host = 'smtp.gmail.com';
$mail->SMTPAuth = true;
$mail->Username = '';
$mail->Password = '';
$mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
$mail->Port = 465;

$mail->setFrom('@gmail.com', 'Quirrel CHAT');
$mail->addAddress($user_object->getUserEmail());
$mail->isHTML(true);
$mail->Subject = 'Registration Verification for Chat Application Demo';
$mail->Body = '
Enter the necessary details in the above objects. If you are using Gmail SMTP, keep the $mail->Host as 'smtp.gmail.com'.
Replace the "Username" and "Password" with your SMTP server credentials.
You can use a different port for the SMTP server if needed.

In the $mail->setFrom('@gmail.com', 'Quirrel CHAT') statement, replace the email address and name with your desired values.


## Screenshots of the Project

Here are some screenshots of the chat application:

**Login Webpage**
![Screenshot](screenshots/Screenshot%202023-05-29%20150519.png)

**Registration Webpage**
![Screenshot](screenshots/Screenshot%202023-05-29%20150556.png)

**Chat Room Webpage**
![Screenshot](screenshots/Screenshot%202023-05-29%20150629.png)

**Edit Profile Webpage**
![Screenshot](screenshots/Screenshot%202023-05-29%20150734.png)

**Private Chat (Light Theme)**
![Screenshot](screenshots/Screenshot%202023-05-29%20150709.png)

**Private Chat (Dark Theme)**
![Screenshot](screenshots/Screenshot%202023-05-29%20150824.png)
