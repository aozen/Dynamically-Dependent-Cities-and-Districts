<form method="POST" action="{{route('somePostRoute')}}">
{{csrf_field()}}
	<select id="city" name="city" class="custom-select" required>
	    <option value="">asdasd</option>
		@foreach($cities as $city)
	    	<option value="{{$city->id}}">{{$city->name}}</option>
		@endforeach
	</select>

	<select id="town" name="town" class="custom-select" required>
		<option value="">İlçe seçiniz</option>
	</select>
</form>

<script>
    $('select#city').change(function(){
        var cityId = $(this).val();
        $('#town').empty();
        $townitems = $('.townItems').remove();
        $.get('/towns/'+cityId, function(data){
            $.each(data, function(index, element){
                $('select#town').append('<option value="'+element.id+'" class="townItems">'+element.name+'</option>')
            });
        }, 'json');
    });
</script>