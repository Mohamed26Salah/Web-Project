
  <?php

            require_once "DBConnection.php";


            $courseId=$_POST['courseId']; 
           




            $sql= "DELETE FROM `course`  WHERE courseId ='".$courseId."'";
            $result=mysqli_query($conn,$sql);
         
?>

            <script>window.location.replace("../courses.php");</script>

            