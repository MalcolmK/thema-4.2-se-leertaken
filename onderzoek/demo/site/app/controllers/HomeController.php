<?php

class HomeController extends BaseController
{
	function __construct()
	{
		$this->beforeFilter('log');
	}

	function showWelcome()
	{
		$count = (int) DB::table('requests')->count();

		return View::make('hello', compact('count'));
	}
}
