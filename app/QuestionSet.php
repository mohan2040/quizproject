<?php

namespace App;
use Auth;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class QuestionSet extends Model
{
    public function user(){
        return $this->belongsTo('App\User');
    }
    public static function getQuestionName($question_id){
        $value=DB::table('question_sets')->select('question')->where('id', $question_id)->get();
       foreach ($value as $row){
            return $row->question;
       }
        // return $value;
        
    }

    public static function getDetail($question_id){
        $value=DB::table('question_options')->select('opt_name')->where('question_id', $question_id)->get();
        // print_r($items); die();
        return $value;
        
    }

    public static function getOptionNameOnly($question_id){
        $items='';
        $value=DB::table('question_options')->select('opt_name')->where('question_id', $question_id)->get();
        foreach ($value as $r){
            if($items){
                $items=$items.', '.$r->opt_name;
            }else{
                $items=$r->opt_name;
            }
            
        }
        //print_r($items); die();
        return $items;
    }

    public static function delete_option($question_id){
        DB::delete('delete from question_options where question_id = ?',[$question_id]);
    }

    public static function get_resultcode(){
        $items=0;
        $value=DB::table('resultcodes')->select('scode')->get();
        foreach ($value as $row){
            return $row->scode;
        }
       
        // return $value;
    }
    public static function get_Results($user_id)
    {
        $user_type=Auth::user()->user_type;
        if($user_type!='1'){
            $value=DB::table('results')
                ->select(DB::raw('SUM(mark) as mark'),'created_at')
                ->where('user_id', $user_id)
                ->where('status', '1')
                ->groupby('created_at')
                ->orderby('created_at','desc')
                ->get();
        }else{
            $value=DB::table('results')
                ->select(DB::raw('SUM(mark) as mark'),'created_at')
                ->where('status', '1')
                ->groupby('created_at')
                ->orderby('created_at','desc')
                ->get();
        }
        
        return $value;
        
    }

    public static function particular_Results($user_id)
    {
        $status=[0,1];
        $user_type=Auth::user()->user_type;
        if($user_type!='1'){
            $value=DB::table('results')
                ->select(DB::raw('SUM(mark) as mark'),'created_at','scode','user_id')
                ->where('user_id', $user_id)
                ->whereIn('status', $status)
                ->groupby('created_at','scode','user_id')
                ->orderby('created_at','desc')
                ->paginate(10);
        }else{
            $value=DB::table('results')
                ->select(DB::raw('SUM(mark) as mark'),'created_at','scode','user_id')
                ->whereIn('status', $status)
                ->groupby('created_at','scode','user_id')
                ->orderby('created_at','desc')
                ->paginate(10);
        }
        return $value;
        
    }

    public static function preview_Result($scode)
    {
        
        $value=DB::table('question_sets')
            ->join('results', 'question_sets.id', '=', 'results.question_id')
            ->select('question_sets.id','question_sets.question','question_sets.answer', 'results.scode', 'results.mark')
            ->where('scode', $scode)
            ->orderby('id')
            ->get();
        return $value;
        
    }
   
}
