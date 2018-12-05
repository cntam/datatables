<?php
	header('Content-type:text/html;charset=utf-8');
	//1.连接
    $link=mysqli_connect('localhost','root','','x5') or die('Connect Error:'.mysqli_connect_errno().":".mysqli_connect_error());

    //2.设置编码方式
    mysqli_set_charset($link,'utf8');

    // var_dump($_REQUEST);die;
    $id = $_REQUEST['teacher_id'];
    $name = $_REQUEST['teacher_name'];
    $age = $_REQUEST['teacher_password'];
    $sex = $_REQUEST['teacher_email'];
    $salary = $_REQUEST['teacher_date'];
    $address = $_REQUEST['teacher_note'];


	//3.执行SQL查询
   // $sql="update `person` set name = '".$name."', age = '".$age."',sex = '".$sex."',salary = '".$salary."',address='".$address."',remark='".$remark."' where id = ".$id;
    $sql="UPDATE `teacher` SET `teacher_name`='{$name}',`teacher_password`='{$age}',`teacher_email`={$sex},`teacher_date`='{$salary}',`teacher_note`='{$address}' WHERE `teacher_id`={$id}";
    echo $sql;
	$res=mysqli_query($link, $sql);
	if($res){
	    echo "修改成功";
	}else{
	    echo "修改失败";
	}

    //mysqli_free_result($res);
    //4.关闭连接
    mysqli_close($link);