<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use MongoDB\Client as MongoDbClient;

class WikiController extends Controller
{

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $id = Auth::id();

        $self = DB::table('owner')
                        ->where('id', $id)
                        ->get();

        $owners = DB::select('CALL adoption_info(' . $id . ')');
        $owners = json_encode($owners);

        $kittens = DB::table('kitten')
                        ->where('adopted', 0)
                        ->get();

        $cart = DB::select(DB::raw('SELECT * FROM see_kittenInfo'));
        $cart = json_encode($cart);

        return view('wiki', compact('owners', 'kittens', 'self', 'cart'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $id = Auth::id();
        $kitten_id = $request->kitten_id;
        $user_id = $request->user_id;

        if($user_id){
            DB::table('cart')
                ->where('user_id', $user_id)
                ->delete();
            }else{
                DB::table('cart')
                    ->insert(['user_id' => $id, 'kitten_id' => $kitten_id]);
                
            }

        return $request->all();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
