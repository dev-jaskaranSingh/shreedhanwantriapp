@extends('admin.layouts.master')

@section('content')

    <div class="row">
        <div class="col-sm-10 col-sm-offset-2">
            <h1>{{ trans('coreadmin::templates.templates-view_create-add_new') }}</h1>
            @if ($errors->any())
            	<div class="alert alert-danger">
            	    <ul>
                        {!! implode('', $errors->all('<li class="error">:message</li>')) !!}
                    </ul>
            	</div>
            @endif
        </div>
    </div>

{!! Form::open(array('files' => true, 'route' => config('coreadmin.route').'.product.store', 'id' => 'form-with-validation', 'class' => 'form-horizontal')) !!}

    <div class="form-group">
        {!! Form::label('title', 'Title*', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::text('title', old('title'), array('class'=>'form-control')) !!}
        </div>
    </div>
    <div class="form-group">
        {!! Form::label('description', 'Description', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::textarea('description', old('description'), array('class'=>'form-control')) !!}
        </div>
    </div>
    <div class="form-group">
        {!! Form::label('image', 'Image* ( 402 × 402 )', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::file('image') !!}
            {!! Form::hidden('image_w', 4096) !!}
            {!! Form::hidden('image_h', 4096) !!}
        </div>
    </div>
    
    <div class="form-group">
        {!! Form::label('division', 'Division*', ['class'=>'col-sm-2 control-label']) !!}
        <div class="col-sm-10">
            {{-- {!! Form::select('division[]', $division, old('division'), ['class'=>'form-control' ,'multiple'=>'true']) !!} --}}
            
            @foreach( $division as $k => $value )
                <label> <input type="checkbox" name="division[]" value="{{ $k }}">{{ $value }} </label>
            @endforeach
        </div>
    </div>
    

    <div class="visuals">
        <div class="row">
            <div class="col-md-2">
            </div>
            <div class="col-md-10">
                <div class="add-new" style="float: right;">
                    <a href="javascript:;" class="addvisual btn btn-info btn-xs" class="">Add New Visual</a>
                </div>
            </div>
        </div>
        <div class="visualHtml">
            <div class="form-group">
                {!! Form::label('visual', 'Visual ( 3200 × 2200 )', array('class'=>'col-sm-2 control-label')) !!}
                <div class="col-sm-10">
                    {!! Form::file('visual[]',['multiple' => true]) !!}
                    {!! Form::hidden('visual_w', 4096) !!}
                    {!! Form::hidden('visual_h', 4096) !!} 
                </div>
            </div>
        </div>
    </div>
{{ dd(ini_get('post_max_size')) }}
    <div class="lbl">
        <div class="row">
            <div class="col-md-2">
            </div>
            <div class="col-md-10">
                <div class="add-new" style="float: right;">
                    <a href="javascript:;" class="addlbl btn btn-info btn-xs" class="">Add New LBL</a>
                </div>
            </div>
        </div>
        <div class="lblHtml">
            <div class="form-group">
                {!! Form::label('lbl', 'LBL ( 3200 × 2200 )', array('class'=>'col-sm-2 control-label')) !!}
                <div class="col-sm-10">
                    {!! Form::file('lbl[]',['multiple' => true]) !!}
                    {!! Form::hidden('lbl_w', 4096) !!}
                    {!! Form::hidden('lbl_h', 4096) !!}
                </div>
            </div>
        </div>
    </div>

    <div class="lbl">
        <div class="lblHtml">
            <div class="form-group">
                {!! Form::label('SC', 'Select Category*', array('class'=>'col-sm-2 control-label')) !!}
                <div class="col-sm-10">
                    <div class="row">
                        @foreach( $Category as $k => $v )
                            <div class="col-md-2" style="text-align: center;">
                                <label>
                                    <p>
                                        <input type="checkbox" name="category[]" value="{{ $v->id }}">
                                    </p>
                                    <p>{{ $v->title }}</p>
                                </label>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="form-group">
        <div class="col-sm-10 col-sm-offset-2">
          {!! Form::submit( trans('coreadmin::templates.templates-view_create-create') , array('class' => 'btn btn-primary')) !!}
        </div>
    </div>

{!! Form::close() !!}

@section('javascript')
    <script type="text/javascript">
        $(document).ready(function(){
            $('.addvisual').click(function(){
                let visualHtml = $('.visuals').find('.visualHtml>.form-group').html();
                $('.visuals').append('<div class="form-group">'+visualHtml+'<a href="javascript:;" style="color: red;position: absolute;right: 0;" class="deleteRow">Delete</a></div>');
            });

            $('.addlbl').click(function(){
                let lblHtml = $('.lbl').find('.lblHtml>.form-group').html();
                $('.lbl').append('<div class="form-group">'+lblHtml+'<a href="javascript:;" style="color: red;position: absolute;right: 0;" class="deleteRow">Delete</a></div>');
            });

            $(document).on('click' ,'.deleteRow' , function(){
                $(this).parent('.form-group').remove();
            })
        });
    </script>
@endsection

@endsection