<?php
	header('Content-type:text/html;charset=utf-8');
	//1.连接
    $link=mysqli_connect('localhost','root','','video') or die('Connect Error:'.mysqli_connect_errno().":".mysqli_connect_error());

    //2.设置编码方式
    mysqli_set_charset($link,'utf8');

    // var_dump($_REQUEST);die;
    $id = $_REQUEST['id'];
    $name = $_REQUEST['name'];
    $age = $_REQUEST['age'];
    $sex = $_REQUEST['sex'];
    $salary = $_REQUEST['salary'];
    $address = $_REQUEST['address'];
    $remark = $_REQUEST['remark'];
	//3.执行SQL查询
    $sql="update `person` set name = '".$name."', age = '".$age."',sex = '".$sex."',salary = '".$salary."',address='".$address."',remark='".$remark."' where id = ".$id;
	$res=mysqli_query($link, $sql);
	if($res){
	    echo "修改成功";
	}else{
	    echo "修改失败";
	}

    //mysqli_free_result($res);
    //4.关闭连接
    mysqli_close($link);