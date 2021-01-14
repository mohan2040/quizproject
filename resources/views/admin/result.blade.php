@extends('layouts.app')
    @section('content')
        <div class="row">
            <div class="col-md-12">
                 <div class="panel-heading" align="Center">
                    @if (Route::has('login'))
                    <div class="top-right links" align="center">
                        @auth
                            <a href="{{ url('/home') }}">Home</a>
                        @endauth
                    </div>
                    @endif
                    <hr>
                    <h3>View Result</h3>
                </div>
                <div class="panel-body">
                    <table class="table table-bordered table-striped">
                        <tr>
                            <th>User</th>
                            <td>{{Auth::user()->name.' ['.Auth::user()->email.']'}}</td>
                        </tr>
                       
                        @foreach($questionset as $r)
                       
                        <tr>
                            <th>Date</th>
                            <td>{{$r->created_at}}</td>
                        </tr>
                        <tr>
                            <th>Score</th>
                            <td>{{$r->mark.'/'.count($cnt)}}</td>
                        </tr>
                         @endforeach
                    </table>
                 <p>&nbsp;</p>

            <a href="{{ route('questionset.quiz_start') }}" class="btn btn-default">Take another quiz</a>
            <a href="{{ route('questionset.particular_result') }}" class="btn btn-default">See all my results</a>
                </div>
            </div>
        </div>
    @endsection