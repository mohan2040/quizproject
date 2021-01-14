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
                    <hr>
                    <h3>Start Quiz</h3>
                    {{ csrf_field() }}
                    <?php $i=1;?>
                    @foreach ($questionset as $row)
                        @if ($i > 1) <hr /> @endif
                        <div class="row">
                            <div class="col-xs-12 form-group">
                                <div class="form-group">
                                    <strong>Question {{$i++.'. '.$row->question}}</strong>
                                </div>
                                @foreach ($row->getDetail($row->id) as $r)
                                
                                    <div class="form-group">
                                     <label class="radio-inline">
                                        <input type="radio" name="option_name[{{$row->id}}]" value="{{$r->opt_name}}">
                                        {{ $r->opt_name }}
                                    </lable>
                                    </div>
                                @endforeach

                            </div>
                        </div>
                    @endforeach
                    <div class="form-group">
                        <div class="col-sm-4">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
  
     
@endsection


