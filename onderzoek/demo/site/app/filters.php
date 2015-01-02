<?php

Route::filter('times', function ()
{
	DB::insert('INSERT INTO times (ip, created_at) VALUES (?, NOW())', [ $_SERVER['REMOTE_ADDR'] ]);
});
