<?php

class HomeController extends BaseController
{
	function __construct()
	{
		$this->beforeFilter('times');
	}

	function showWelcome()
	{
		$times = (int) DB::table('times')->count();

		return View::make('hello', compact('times'));
	}
}
