@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="card-body">
                <form class="form-horizantal" method="POST"  enctype="multipart/form-data">
                    @if (Route::has('login'))
                    <div class="top-right links" align="center">
                        @auth
                            <a href="{{ url('/home') }}">Home</a>
                        @endauth
                    </div>
                    @endif
                    <h3>Preview Quiz</h3>
                    {{ csrf_field() }}
                    <?php $i=1; $j=0;//print_r($records); die();?>
                    @foreach ($records as $row)
                        @if ($i > 1) <hr /> @endif
                        <div class="row">
                            <div class="col-xs-12 form-group">
                                <div class="form-group">
                                    <strong>Question {{$i++.'. '.$row->question.'---'.$row->id}}</strong>
                                </div>
                                <?php $j=0;?>
                                @foreach (App\QuestionSet::getDetail($row->id) as $r)
                                    
                                    @if(($row->mark==1) && ($row->answer==$r->opt_name))
                                        <div class="form-group" style="background-color: #4EE84E;">
                                            <label class="radio-inline">
                                                <input type="radio" name="option_name[{{$row->id}}]" checked>
                                                {{ $r->opt_name }}
                                            </lable>
                                        </div>
                                    @elseif (($row->mark==0) && ($row->answer==$r->opt_name))
                                        <div class="form-group" style="background-color: #4EE84E;">
                                            <label class="radio-inline">
                                                <input type="radio" name="option_name[{{$row->id}}]">
                                                {{ $r->opt_name }}
                                            </lable>
                                        </div>
                                    @elseif ((($row->mark==0) && ($row->answer!=$r->opt_name)) && $j==0)
                                        <?php $j++;?>
                                        <div class="form-group" style="background-color: #e32d40;">
                                            <label class="radio-inline">
                                                <input type="radio" name="option_name[{{$row->id}}]" checked>
                                                {{ $r->opt_name }}
                                            </lable>
                                        </div>
                                    @else
                                        <div class="form-group">
                                            <label class="radio-inline">
                                                <input type="radio" name="option_name[{{$row->id}}]" value="{{$r->opt_name}}">
                                                {{ $r->opt_name }}
                                            </lable>
                                        </div>
                                    @endif
                                @endforeach

                            </div>
                        </div>
                    @endforeach
                </form>
            </div>
        </div>
    </div>
  
     
@endsection


