<?php
/*	
* ファイルパス：C:\xampp\htdocs\DT\shopping\lib\Login.class.php	
* ファイル名：Session.class.php (セッション関係のクラスファイル、Model)	
* セッション：サーバー側に一時的にデータを保存する仕組みのこと	
* 基本的に、keyで判断をして、IDを取るというのが流れ	
*/
namespace shopping\lib;

class Login
{
    public $db = NULL;

    public function __construct($db)
    {
        // DBの登録	
        $this->db = $db;
    }

    public function checkLOGIN($form_data)
    {
        $email = (isset($form_data['email'])) ? $form_data['email'] : "";
        $password = (isset($form_data['password'])) ? md5($form_data['password']) : "";
 
        // 入力されたメールアドレス、パスワードがmemberテーブルに登録されているかを確認する
        $table = ' member ';
        $col = ' mem_id, email, first_name, family_name, address, concat(tel1,"-", tel2,"-", tel3) as tel ';
        $where = ' email = ? AND password = ?';
 
        $arrVal =  [$email, $password];
        $res = $this->db->select($table, $col, $where, $arrVal);
        
        $login_err = "";
        if(count($res) > 0){
            // ログイン成功
            $_SESSION = $res[0];
            $_SESSION['loginon'] = true;
        }else{
            // ログイン失敗
            $login_err = "Failed to login";
        }
        return $login_err;
    }

    public function logout(){
        $_SESSION['loginon'] = false;
        return "Logged out";
    }
}
