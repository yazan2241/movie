<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class BotController extends Controller
{
    public function getBotInfo()
    {
        $res = Http::get("https://api.telegram.org/bot5730405563:AAHn8RN3OKZ3WTio9-hDoldNUPUNBoRWFts/getMe");

        return response()->json(['info' => json_encode($res)]);
    }



    public function uploadVideo(Request $request)
    {
        if ($request->hasFile('video')) {
            $path = $request->file('video');
            $ff = (string) $path;
            //return $ff;
            set_time_limit(3000);
            //$files = fsplit($path, 1000000);
            //$ff = $files[0];
            //$path = $path . '.zip';
            //return $path;

            $res = sendMessage($ff);
            return $res;
            // foreach ($files as $file) {
            // }
        }
    }

    
}

 function sendMessage($file)
    {
        $res = Http::get("https://api.telegram.org/bot5730405563:AAHn8RN3OKZ3WTio9-hDoldNUPUNBoRWFts/sendMessage?chat_id=907001216&text=" . $file);

        if ($res) {
            return response()->json(['info' => json_encode($res)]);
        } else {
            return response()->json(['info' => json_encode($res)]);
        }
    }


     function fsplit($file, $buffer = 1024)
    {
        //open file to read
        $file_handle = fopen($file, 'r');
        //get file size
        $file_size = filesize($file);
        //no of parts to split
        $parts = $file_size / $buffer;

        //store all the file names
        $file_parts = array();

        //path to write the final files
        $store_path = "splits/";

        //name of input file
        $file_name = basename($file);

        for ($i = 0; $i < $parts; $i++) {
            //read buffer sized amount from file
            $file_part = fread($file_handle, $buffer);
            //the filename of the part
            $file_part_path = $store_path . $file_name . ".part$i";
            //open the new file [create it] to write
            $file_new = fopen($file_part_path, 'w+');
            //write the part of file
            fwrite($file_new, $file_part);
            //add the name of the file to part list [optional]
            array_push($file_parts, $file_part_path);
            //close the part file handle
            fclose($file_new);
        }
        //close the main file handle

        fclose($file_handle);
        return $file_parts;
    }