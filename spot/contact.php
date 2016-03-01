<?php
/*
template.php

Use this file as a model for making 
more application pages

*/

?>
<?php include 'includes/config.php';?>
<?php include 'includes/header.php';?>

<h3>Contact Us</h3>	
<?php
if(isset($_POST['Email']))
{// data sent - send email
    /*
    echo '<pre>';
    var_dump($_POST);
    echo '</pre>';
    
    
    ' . xxx . '
    
    
    */
    
    $to = "williamnewman@gmail.com";
    $subject = "contact form from spot app";
    $replyTo = $_POST['Email'];
    
    $content='
    <p><b>Comments:</b></p>
    <p>' . $_POST['Comments'] . '</p>
    
    ';
    
    
    
    $response = safeEmail($to, $subject, $content, $replyTo,'html');

    if($response)
    {
        echo '<p>We will get back to you shortly!</p>';
    }else{
       echo 'Trouble with HTML email!<br />'; 
    }
    
    
    
    
    
    
}else{//show form
    echo '
    <form action="contact.php" method="post">
    <p>Name: <input type="text" name="Name" /></p>
    <p>Email: <input type="email" name="Email" /></p>
    <p>Comments: <textarea name="Comments"></textarea></p>
    <p><input type="submit" value="Contact Us!" /></p>
    </form>
    ';
}




?>
	
<?php include 'includes/footer.php';?>
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      