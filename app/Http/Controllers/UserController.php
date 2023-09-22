<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\user_domicilio;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Database\Factories\User_domicilioFactory;
use DateTime;
use DateTimeZone;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
       $data=User::select([
        'name as name',
        'email as email',
        'User_domicilios.domicilio as domicilio',
        'User_domicilios.numero_exterior as numero_exterior',
        'User_domicilios.colonia as colonia',
        'User_domicilios.cp as cp',
        'User_domicilios.ciudad as ciudad',
        'User_domicilios.fecha_nacimiento as fecha_nacimiento'
        ])
        ->leftJoin('User_domicilios','User_domicilios.user_id','=','id')
        ->where('User_domicilios.user_id','!=','')
        
        ->get()->toArray();

        $fecha_actual = new DateTime();
        foreach($data as $index => $valor){
            $fn=$valor["fecha_nacimiento"];
            $edad=Carbon::createFromDate($fn,$fecha_actual)->age;
            $array[]=[
                "name"=>$valor["name"],
                "email"=>$valor["email"],
                "domicilio"=>$valor["domicilio"],
                "numero_exterior"=>$valor["numero_exterior"],
                "colonia"=>$valor["colonia"],
                "cp"=>$valor["cp"],
                "ciudad"=>$valor["ciudad"],
                "fecha_nacimiento"=>$valor["fecha_nacimiento"],
                "ciudad"=>$valor["fecha_nacimiento"],
                "edad"=>$edad,
            ];
        }

        return $array;
    }
}
