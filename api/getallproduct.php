<?php

require_once('./db.php');

try {
    if ($_SERVER['REQUEST_METHOD'] == 'GET') {
        $object = new stdClass();

        $stnt = $db->prepare('SELECT * FROM sp_product ORDER BY id DESC');

        if ($stnt->execute()) {
            $num = $stnt->rowCount();
            if ($num > 0) {
                $object->Result = array();
                while ($row = $stnt->fetch(PDO::FETCH_ASSOC)) {
                    // $item = array(
                    //     "productName" => $row['name'],
                    //     "productPrice" => $row['pice']
                    // );
                    // array_push($object->Result, $item);
                    array_push($object->Result, $row);
                }
                $object->RespCode = 200;
                $object->ResMessage = 'Success';
                http_response_code(200);
            } else {
                $object->RespCode = 400;
                $object->Log = 0;
                $object->ResMessage = 'Bad: No data found';
                http_response_code(400);
            }
        } else {
            $object->RespCode = 500;
            $object->Log = 1;
            $object->ResMessage = 'Bad: SQL execution failed';
            http_response_code(500);
        }

        echo json_encode($object);
    } else {
        http_response_code(405);
    }
} catch (PDOException $e) {
    http_response_code(500);
    echo $e->getMessage();
}
?>
