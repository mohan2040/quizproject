@extends('layouts.app')
@section('content')
 

     <form class="form-horizantal" method="POST" action="{{route('questionset.update',$questionSet->id)}}" enctype="multipart/form-data">
     {{ csrf_field() }}
        <h3>Setup Question for Quiz</h3>
       
         <div class="table-responsive">  
            <table class="table table-none" id="dynamic_field"> 
                <tr>
                    <td><div class="col-sm-4">Question</div></td><td><input type="text" name="question_name" id="question_name" class="form-control" value="{{$questionSet->question}}"></td><td></td>  
                </tr>
                <?php $i = 0; ?>
                 @foreach ($questionSet->getDetail($questionSet->id) as $r)
                    @if(($r->opt_name) && ($i=='0'))
                        <tr> 
                            <td><div class="col-sm-4">Option (A) </div></td><td><input type="text" name="option_name[]" class="form-control" value=" {{$r->opt_name}}"></td>  
                            <td><button type="button" name="add" id="add" class="btn btn-success">Add More</button></td>  
                        </tr> 
                    @else
                        <tr id="row{{$i}}"> 
                            <td><div class="col-sm-4">Option {{(($i=='1')?'(B)':(($i=='2')?'(C)':(($i=='3')?'(D)':(($i=='4')?'(E)':'F'))))}}</div></td><td><input type="text" name="option_name[]" class="form-control" value=" {{$r->opt_name}}"></td>  
                            <td><button type="button" name="remove" id="{{$i}}" class="btn btn-danger btn_remove">X</button></td>  
                        </tr> 
                    @endif
                  
                   
                     <?php $i++; ?>         
                @endforeach
                <input type="hidden" value="{{$i}}" name="hidden_i" id="hidden_i">
            </table>
            <div class="table-responsive">  
            <table class="table table-none"> 
                <tr>
                    <td><div class="col-sm-4">Answer</div></td><td><div class="col-sm-4"><input type="text" name="ans" id="ans" class="form-control" value="{{$questionSet->answer}}"></div></td>
                </tr>
               
            </table>
             </div>
               
     
        </div>
        <div class="form-group">
            <div class="col-sm-4">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </form>
@endsection

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 
<script type="text/javascript">
    $(document).ready(function(){      
    //   var i=0;  
       var i = document.getElementById('hidden_i').value;
      $('#add').click(function(){  
           i++;  
       alert(i);
           $('#dynamic_field').append('<tr id="row'+i+'" ><td><div class="col-sm-4">Option('+((i===2)?"B":((i===3)?"C":((i===4)?"D":((i===5)?"E":((i===6)?"F":((i===7)?"G":"H"))))))+')</div></td><td><input type="text" name="option_name[]" class="form-control" /></td><td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>');  
      });  


      $(document).on('click', '.btn_remove', function(){  
           var button_id = $(this).attr("id");
           i--;
           $('#row'+button_id+'').remove();  
      });  


      $.ajaxSetup({
          headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
      });
 });


 function myFunction(a) {
    var nums=["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26"]
   var chars=["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
   
  return str_replace(nums, chars, a);
}  
      </script>