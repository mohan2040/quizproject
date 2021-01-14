@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    You are logged in!
                    <hr>
                    <div class="links">
                        @if(Auth::user()->user_type=='1')
                            <a href="{{route('questionset.index')}}">Setup Option</a><hr>
                        @endif
                        <a href="{{route('questionset.quiz_start')}}">Start Test</a><hr>
                        
                            <a href="{{route('questionset.particular_result')}}">Results</a>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
