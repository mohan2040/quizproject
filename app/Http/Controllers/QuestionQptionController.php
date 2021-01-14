<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\QuestionSet;

class QuestionQptionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
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
    //     $validatedData = $request->validate([
    //     'question_name' => 'required|max:255',
    //     'option_name' => 'required|max:255',
    //     'ans' => 'required|max:255',
    // ]);

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
