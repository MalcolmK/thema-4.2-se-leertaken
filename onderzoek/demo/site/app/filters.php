<?php

function get_custom_env($key)
{
	$file = '/etc/nginx/custom-env/' . preg_replace('/[^a-z0-9\-_]/i', '', $key);
	if ( ! file_exists($file)) return false;
	return file_get_contents($file);
}

Route::filter('log', function ()
{
	DB::insert('INSERT INTO requests (ip, created_at) VALUES (?, NOW())', [ $_SERVER['REMOTE_ADDR'] ]);
});
