
<?php 
include_once "ErrorHandler4.php";
set_error_handler("customError",E_ALL);
$servername = "localhost";
$username ="root";
$password = "";
$DB = "webdatabase";
$conn = mysqli_connect($servername,$username,$password,$DB);
	

	$query = "SELECT * FROM `review` WHERE courseId ='".$_GET['id']."' ORDER BY `datetime`  DESC ";
	

  
	$result = $conn->query($query);
$html = '';
	while($row = mysqli_fetch_assoc($result))
	{
	
			 
 //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          $html .= "<div class='row mb-3'>

                      <div class='col-sm-1'><div class='rounded-circle pt-2 pb-2'><img class='rounded-circle mt-4' width='120px' src='".$row["image"]."'></div></div>

                        <div class='col-sm-11'>

                        <div class='card'>

                        <div class='card-header'><b>".$row["user_Name"]."</b></div>

                        <div class='card-body'>
                   ";
                     for($star = 1; $star <= 5; $star++)
                      {
                          $class_name = '';

                          if($row["user_rating"] >= $star)
                          {
                               $class_name = 'text-warning';
                          }
                          else
                          {
                               $class_name = 'star-light';
                            }
                            
                            $html .= "<i class='fas fa-star $class_name mr-1'></i>";
                        }
                      $html .=  "        
                        <br />

                        ".$row["user_review"]."

                        </div>

                        <div class='card-footer text-right'>On ".$row["datetime"]."</div>

                        </div>

                        </div>

                        </div>

                        ";

 
                }
  echo $html;


                
?>