<?php
	header('Content-type:text/html;charset=utf-8');
	//1.连接
    $link=mysqli_connect('localhost','root','','video') or die('Connect Error:'.mysqli_connect_errno().":".mysqli_connect_error());

    //2.设置编码方式
    mysqli_set_charset($link,'utf8');

    $id = $_REQUEST['id'];
	//3.执行SQL查询
    $sql="delete FROM  `person` where id = ".$id;
	$res=mysqli_query($link, $sql);

	$data = array();
	if ($res) {
		$data['flag'] = '1';
		$data['msg'] = '删除成功~';
	}else{
		$data['flag'] = '0';
		$data['msg'] = '删除失败~';
	}

    //mysqli_free_result($res);
    //4.关闭连接
    mysqli_close($link);
	
	echo json_encode($data);exit;