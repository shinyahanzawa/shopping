<?php
/*	
* ファイルパス：C:\xampp\htdocs\DT\shopping\lib\Session.class.php	
* ファイル名：Session.class.php (セッション関係のクラスファイル、Model)	
* セッション：サーバー側に一時的にデータを保存する仕組みのこと	
* 基本的に、keyで判断をして、IDを取るというのが流れ	
*/
namespace shopping\lib;

class Session
{
    public $session_key = '';
    public $db = NULL;
    public function __construct($db)
    {
        // セッションをスタートする	
        session_start();
        // セッションIDを取得する	
        $this->session_key = session_id();
        // DBの登録	
        $this->db = $db;
    }
    public function checkSession()
    {
        // セッションIDのチェック	
        $customer_no = $this->selectSession();
        // セッションIDがある(過去にショッピングカートに来たことがある)	
        if ($customer_no !== false) {
            $_SESSION['customer_no'] = $customer_no;
        } else {
            // セッションIDがない(初めてこのサイトに来ている)	
            $res = $this->insertSession();
            if ($res === true) {
                $_SESSION['customer_no'] = $this->db->getLastId();
            } else {
                $_SESSION['customer_no'] = '';
            }
        }
    }
    private function selectSession()
    {
        $table = ' session ';
        $col = ' customer_no ';
        $where = ' session_key = ? ';
        $arrVal = [$this->session_key];
        $res = $this->db->select($table, $col, $where, $arrVal);
        return (count($res) !== 0) ? $res[0]['customer_no'] : false;
    }

    //お客さんを新規登録する
    private function insertSession()
    {
        $table = ' session ';
        $insData = ['session_key ' => $this->session_key];
        $res = $this->db->insert($table, $insData);
        return $res;
    }
}
