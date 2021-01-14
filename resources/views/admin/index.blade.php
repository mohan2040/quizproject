@extends('layouts.app')
    @section('content')
        <div class="row">
            <div class="col-md-12">
                <div class="panel-body">
                    @if (Route::has('login'))
                    <div class="top-right links" align="center">
                        @auth
                            <a href="{{ url('/home') }}">Home</a>
                        @endauth
                    </div>
                    @endif
                    <hr>
                    <button><a href="{{route('questionset.create')}}"><i class="fa fa-plus-square"></i> Add New </a></button>
                        <?php $i = 1; ?>
                    <table class="table table-bordered table-striped" width="100%">
                        <thead>
                            <tr>
                                <th width="10%">#</th>
                                <th width="25%">Name</th>
                                <th width="25%">Options</th>
                                <th width="25%">Answer</th>
                                <th width="25%"> Action</th>
                            </tr>
                        </thead>
                        <tbody>
                      
                        @if(count($sets))
                            @foreach ($sets as $row)
                                <tr>
                                    <td>{{$i++}}</td>
                                    <td>{{$row->question}}</td>
                                    <td>{{$row->getOptionNameOnly($row->id)}}</td>
                                    <td>{{$row->answer}}</td>
                                  
                                    <td>
                                        <a href="{{route('questionset.edit',$row->id)}}"><button class="btn btn-info">Edit</button> </a>
                                        <a href="javascript:void(0)" onclick="$(this).parent().find('form').submit()" class="btn btn-danger">Delete</a>
                                        <form action="{{route('questionset.destroy',$row->id)}}" method="post">
                                        {{method_field('DELETE')}}
                                        <input type="hidden" name="_token" value="csrf_token()">
                                        </form>
                                   
                                      
                                    </td>
                                </tr>
                            @endforeach
                        @else
                            <tr><td colspan=5>No Data Found</td></tr>

                        @endif
                        </tbody>
                    </table>
                    {{ $sets->render()}}
                </div>
            </div>
        </div>
    @endsection