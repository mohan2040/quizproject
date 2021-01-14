@extends('layouts.app')
@section('content')
 

    <form class="form-horizantal" method="POST" enctype="multipart/form-data">
     {{ csrf_field() }}
        <h3>Setup Question for Quiz</h3>
        
         <div class="table-responsive">  
            <table class="table table-none" id="dynamic_field"> 
                <tr>
                    <td><div class="col-sm-4">Question</div></td><td><input type="text" name="question_name" id="question_name" class="form-control"></td><td></td>  
                </tr>
                <tr> 
                    <td><div class="col-sm-4">Option (A)</div></td><td><input type="text" name="option_name[]" class="form-control" /></td>  
                    <td><button type="button" name="add" id="add" class="btn btn-success">Add More</button></td>  
                </tr> 
               
            </table>
            <div class="table-responsive">  
            <table class="table table-none"> 
                <tr>
                    <td><div class="col-sm-4">Answer</div></td><td><div class="col-sm-4"><input type="text" name="ans" id="ans" class="form-control"></div></td>
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
      var i=0;  
      $('#add').click(function(){  
           i++;  
       
           $('#dynamic_field').append('<tr id="row'+i+'" ><td><div class="col-sm-4">Option ('+((i===2)?"B":((i===3)?"C":((i===4)?"D":((i===5)?"E":((i===6)?"F":((i===7)?"G":"H"))))))+')</div></td><td><input type="text" name="option_name[]" class="form-control" /></td><td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>');  
      });  


      $(document).on('click', '.btn_remove', function(){  
           var button_id = $(this).attr("id");   
           $('#row'+button_id+'').remove();  
      });  


      $.ajaxSetup({
          headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
      });
 });
      </script>