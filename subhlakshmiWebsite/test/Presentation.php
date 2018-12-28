<?php include "include/header.php"; ?>


 <!--  ICON BOXES -->
<!--  END OF ICON BOXES -->
<!--corporate.compliance@subhlakshmi.in-->
<!--  FORM -->
<section class="contact-form">
<div class="row">
<div class="col-sm-12">
 <h2>SEND US A <span>MESSAGE</span></h2>
<hr class="small"/>
</div>
</div>
<div class="row">
<div class="col-sm-12">
 <div id="sendstatus"></div>

   <div id="contactform">
<form method="post" action="#">
<div class="row">
<div class="col-sm-6">
            <p><label for="name">Name:*</label> <input type="text" class="form-control" name="name" id="name" tabindex="1" /></p>
            <p><label for="email">Email:*</label> <input type="text" class="form-control" name="email" id="email" tabindex="2" /></p>
            <p><label for="phone">Phone Number:*</label> <input type="text" class="form-control" name="phone" id="phone" tabindex="3" /></p>
</div>
<div class="col-sm-6">
            <p><label for="comments">Message:*</label> <textarea  class="form-control" name="comments" id="comments" tabindex="4"></textarea></p>
</div>
</div>
 <p><input name="submit" type="submit" id="submit" class="submit" value="Send" tabindex="5" /></p>
</form>

</div>
</div>
</div>
</section>
<!--  END OF FORM -->



<?php include "include/footer.php"; ?>