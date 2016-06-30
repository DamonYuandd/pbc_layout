<?php
/**
 *
 * 关于我们控制器
 * @author uclnn
 *
 */
class ShowAction extends HomeAction {

	function _initialize() {
		parent::_initialize ();		
		if (! method_exists ( $this, ACTION_NAME )) { // 没有定制方法
			$this->display ( 'index' );
			exit ();
		}
	}
	function index(){
		$this->display($this->web_theme.':Show:index');
	}
	function show(){
		$this->display($this->web_theme.':Show:show');
	}

}
?>