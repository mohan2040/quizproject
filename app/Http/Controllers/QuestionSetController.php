<?php

namespace App\Http\Controllers;

use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\QuestionSet;
use App\User;

class QuestionSetController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $arr['sets']=QuestionSet::paginate(5);
        
        return view('admin.index')->with($arr);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
         return view('admin.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request,QuestionSet $question)
    {
        $question->question=$request->question_name;
        $question->answer=$request->ans;
        $question->save();

        $question_id = $question->id;

        $options = $request->option_name;
       $i=0;
        if ($options) :
                foreach ($options as $item):
                    $option_name=$item; 
                     DB::table('question_options')->insert(
                        array(
                            'question_id'=> $question_id,
                            'opt_name' => $option_name
                        )
                    );
                endforeach;
        endif;
        return redirect()->route('questionset.index')->with('success','person added');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $arr['questionSet']=QuestionSet::find($id);
        return view('admin.edit')->with($arr);
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
        $question=QuestionSet::find($id);
        $question->question=$request->question_name;
        $question->answer=$request->ans;
        $question->save();
        
        $question_id = $id;

        $options = $request->option_name;
       $i=0;
        if ($options) :
            QuestionSet::delete_option($id);
                foreach ($options as $item):
                    $option_name=$item; 
                     DB::table('question_options')->insert(
                        array(
                            'question_id'=> $question_id,
                            'opt_name' => $option_name
                        )
                    );
                endforeach;
        endif;
        return redirect()->route('questionset.index')->with('success','person added');
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

    public function quiz_start()
    {
        // $questionset = DB::table('question_sets')
        //     ->limit(1)
        //     ->get();
		// return view('admin.show')->with('questionset', $questionset);

       // $arr['questionset'] = DB::table('question_sets')
            //    ->limit(1)
              //  ->get();
       
            
      
        // $arr['questionset']=QuestionSet::orderByRaw('RAND()')->take(5)->get();
        // $arr['questionset']=QuestionSet::take(5)->get();
        // return view( 'admin.show', compact( 'next', 'previous' ))->with($arr);
        $arr['questionset']=QuestionSet::all();
        return view('admin.show')->with($arr); 
    }

    public function quiz_store(Request $request)
    {
        
        //Fetch Result code 
        $scode=QuestionSet::get_resultcode();
        

        // $results=QuestionSet::take(5)->get();
        $results=QuestionSet::all();
        $curdate=date('Y-m-d H:i:s');
        // print_r($curdate);
        
        DB::table('results')
                ->update(['status' => 0]);
        
        foreach ($results as $row):
            $options = $request->option_name[$row->id];
            $marks=0;
            $marks=(($row->answer==$options)?'1':'0');
            DB::table('results')->insert(
                        array(
                            'scode' => $scode,
                            'user_id'=> Auth::user()->id,
                            'question_id'=> $row->id,
                            'mark' => $marks,
                            'optionname' => $options,
                            'created_at' =>$curdate
                        )
                    );
            
        endforeach;
        //Update the Result code
        DB::table('resultcodes')
                ->update(['scode' => $scode+1]); 
       // die();
       return redirect()->route('questionset.quiz_result')->with('success','person added');
    }

    public function quiz_results()
    {   
        $user_id=Auth::user()->id;
        $arr['cnt']=QuestionSet::all();
        $arr['questionset']=QuestionSet::get_Results($user_id);
        return view('admin.result')->with($arr); 
    }

    public function particular_results()
    {   
        $user_id=Auth::user()->id;
        $arr['cnt']=QuestionSet::all();
        $arr['questionset']=QuestionSet::particular_Results($user_id);
        return view('admin.particular_result')->with($arr); 
    }

     public function preview($scode)
    {
        //$arr['records']=QuestionSet::take(5)->get();
         $arr['records']=QuestionSet::preview_Result($scode);
        // $arr['records']=QuestionSet::all();
        return view('admin.preview')->with($arr); 
    }

}
