<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>World Countries</title>
    <link rel="stylesheet" href="{{ asset('bootstrap/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{  asset('sweetalert2/sweetalert2.min.css') }}">
    @livewireStyles
</head>
<body>

    <div class="container">
        <div class="row" style="margin-top: 45px">
            <div class="col-md-8 offset-md-2">
                <h4>World Countries</h4>
                @livewire('countries')
            </div>
        </div>
    </div>
    

    <script src="{{ asset('jquery-3.4.1.min.js') }}"></script>
    <script src="{{ asset('bootstrap/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('sweetalert2/sweetalert2.min.js') }}"></script>
    @livewireScripts
    <script>
           window.addEventListener('OpenAddCountryModal', function(){
                $('.addCountry').find('span').html('');
                $('.addCountry').find('form')[0].reset();
                $('.addCountry').modal('show');
           });

           window.addEventListener('CloseAddCountryModal', function(){
               $('.addCountry').find('span').html('');
               $('.addCountry').find('form')[0].reset();
               $('.addCountry').modal('hide');
               alert('New Country Has been Saved Successfully');
           });

           window.addEventListener('OpenEditCountryModal', function(event){
               $('.editCountry').find('span').html('');
               $('.editCountry').modal('show');
           });

           window.addEventListener('CloseEditCountryModal', function(event){
               $('.editCountry').find('span').html('');
               $('.editCountry').find('form')[0].reset();
               $('.editCountry').modal('hide');
           });

           window.addEventListener('SwalConfirm', function(event){
               swal.fire({
                   title:event.detail.title,
                   imageWidth:48,
                   imageHeight:48,
                   html:event.detail.html,
                   showCloseButton:true,
                   showCancelButton:true,
                   cancelButtonText:'Cancel',
                   confirmButtonText:'Yes, Delete',
                   cancelButtonColor:'#d33',
                   confirmButtonColor:'#3085d6',
                   width:300,
                   allowOutsideClick:false
               }).then(function(result){
                   if(result.value){
                       window.livewire.emit('delete',event.detail.id);
                   }
               })
           })

           window.addEventListener('deleted', function(event){
               alert('Country record has been deleted');
           });

           window.addEventListener('swal:deleteCountries', function(event){

               swal.fire({
                   title:event.detail.title,
                   html:event.detail.html,
                   showCloseButton:true,
                   showCancelButton:true,
                   cancelButtonText:'No',
                   confirmButtonText:'Yes',
                   cancelButtonColor:'#d33',
                   confirmButtonColor:'#3085d6',
                   width:300,
                   allowOutsideClick:false
               }).then(function(result){
                   if(result.value){
                       window.livewire.emit('deleteCheckedCountries',event.detail.checkedIDs);
                   }
               });
           });

    </script>
</body>
</html>