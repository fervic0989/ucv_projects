<?php

use CODIGO_FUENTE\Login\Login;

class LoginTest extends \PHPUnit\Framework\TestCase {
    public function test_login() {
        $Login=new Login();
        $this->assertEquals('',$Login->log('admin'));
    }
}

?>