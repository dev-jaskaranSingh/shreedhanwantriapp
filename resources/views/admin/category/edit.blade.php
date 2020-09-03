@extends('admin.layouts.master')

@section('content')

<div class="row">
    <div class="col-sm-10 col-sm-offset-2">
        <h1>{{ trans('coreadmin::templates.templates-view_edit-edit') }}</h1>

        @if ($errors->any())
        	<div class="alert alert-danger">
        	    <ul>
                    {!! implode('', $errors->all('<li class="error">:message</li>')) !!}
                </ul>
        	</div>
        @endif
    </div>
</div>

{!! Form::model($category, array('class' => 'form-horizontal', 'id' => 'form-with-validation', 'method' => 'PATCH', 'route' => array(config('coreadmin.route').'.category.update', $category->id))) !!}

<div class="form-group">
    {!! Form::label('title', 'title', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('title', old('title',$category->title), array('class'=>'form-control')) !!}
        {!! Form::hidden('status', 1, array('class'=>'form-control')) !!}
        
    </div>
</div>
{{--    <div class="form-group">
        {!! Form::label('status', 'status', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::text('status', old('status',$category->status), array('class'=>'form-control')) !!}
            
        </div>
    </div>  --}}
<div class="form-group">
    <div class="col-sm-10 col-sm-offset-2">
      {!! Form::submit(trans('coreadmin::templates.templates-view_edit-update'), array('class' => 'btn btn-primary')) !!}
      {!! link_to_route(config('coreadmin.route').'.category.index', trans('coreadmin::templates.templates-view_edit-cancel'), null, array('class' => 'btn btn-default')) !!}
    </div>
</div>

{!! Form::close() !!}

@endsection