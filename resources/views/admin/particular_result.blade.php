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
                   <h3> {{(Auth::user()->user_type=='1')?'All Results':'My Results'}} </h3>
                </div>
                <div class="panel-body">
                        <?php $i = 1; ?>
                    <table class="table table-bordered table-striped" width="100%">
                        <thead>
                            <tr>
                                <th width="10%">#</th>
                                <th width="25%">Name</th>
                                <th width="25%">Date</th>
                                <th width="25%">Result</th>
                                <th width="25%"> Action</th>
                            </tr>
                        </thead>
                        <tbody>
                      
                        @if(count($questionset))
                            @foreach ($questionset as $row)
                                <tr>
                                    <td>{{$i++}}</td>
                                    <td> @foreach (App\User::get_UserInfo($row->user_id) as $r)
                                            {{$r->name.' ['.$r->email.']'}}

                                    @endforeach
                                    </td>
                                    <td>{{$row->created_at}}</td>
                                    <td>{{$row->mark.'/'.count($cnt)}}</td>
                                    <td><a href="{{route('questionset.preview',$row->scode)}}"><button class="btn btn-info">View</button></a>
                                    </td>
                                </tr>
                            @endforeach
                        @else
                            <tr><td colspan=5>No Data Found</td></tr>

                        @endif
                        </tbody>
                    </table>
                    {{ $questionset->render()}}
                </div>
            </div>
        </div>
    @endsection