# Chat-application-usin-php-websocket
This a chat application created using Rachete websocket and php. In this application we can chat in a group or in a private one to one.

**How to run the Rachete Websocket**
To run the websocket= In command prompt with in a root directory, enter command "php bin/server.php" => it will start the websocket server, 
if you didnt do that then you cannot send the message in the chat application.

**Intitalise SMTP**
During regestration, a verification code will be send to your email address => To do such things we need to build smtp server through which you can send
the mails to the users.
For this, in registration.php =>
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
  Enter the details in the above objects, I used the gmail smtp server that's why the $mail->Host is  'smtp.gmail.com'. You can enter whatever you want to add.
  in "Username" Enter the username of your smtp server and the password = 16 character obtained from app password created.
  
  you can go with the other port of smtp server rather than 465.
  $mail->setFrom('@gmail.com', 'Quirrel CHAT'); here in this statement you have to enter the email address and the name which will be visible on the mail.
  
  
