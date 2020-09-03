@extends('admin.layouts.master')

@section('content')

<div class="row">
    <div class="alert alert-info" role="alert">
        <b>NOTE: </b>Previous Price List will be overwritten.
    </div>
    <div class="col-sm-10 col-sm-offset-2">
        <h1>Update Price List</h1>

        @if ($errors->any())
        	<div class="alert alert-danger">
        	    <ul>
                    {!! implode('', $errors->all('<li class="error">:message</li>')) !!}
                </ul>
        	</div>
        @endif
    </div>
</div>

{!! Form::open(array('files' => true, 'route' => config('coreadmin.route').'.pricelist.store', 'id' => 'form-with-validation', 'class' => 'form-horizontal')) !!}


    <div class="form-group">

        {!! Form::label('Division', 'Division*', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            <select class="form-control" name="division">
                @foreach( $division as $k => $v )
                    <option value="{{ $v->id }}">{{ $v->title }}</option>
                @endforeach
            </select>            
        </div>
    </div>
    
    <div class="form-group">
        {!! Form::label('attachment', 'Attachment*', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::file('attachment') !!}
            
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-10 col-sm-offset-2">
          {!! Form::submit( trans('coreadmin::templates.templates-view_create-create') , array('class' => 'btn btn-primary')) !!}
        </div>
    </div>

{!! Form::close() !!}

@endsection