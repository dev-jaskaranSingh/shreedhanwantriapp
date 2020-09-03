@extends('admin.layouts.master')

@section('content')
<style type="text/css">
    .listUsername , .listdivisions{
        display: none;
    }
</style>
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

{!! Form::open(array('route' => config('coreadmin.route').'.notification.store', 'id' => 'form-with-validation', 'class' => 'form-horizontal')) !!}

<div class="form-group">
    {!! Form::label('title', 'Title*', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('title', old('title'), array('class'=>'form-control')) !!}
    </div>
</div>

<div class="form-group">
    {!! Form::label('to', 'To', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        <div class="row">
            <div class="col-md-6">
                <div class="row">
                    <label style="width: 100%">
                        <div class="col-md-1">
                            <input type="radio" name="notif_type" class="singluser" value="singluser">
                        </div>
                        <div class="col-md-11">
                            <span>Specific User</span>      
                        </div>
                    </label>
                </div>
                <div class="row">
                    <label style="width: 100%">
                        <div class="col-md-1">
                            <input type="radio" name="notif_type" class="singleDivision" value="singleDivision">
                        </div>
                        <div class="col-md-11">
                            <span>Specific Division</span>      
                        </div>
                    </label>
                </div>
            </div>
        </div>
        <div>
            {{-- {!! Form::text('to', old('to'), array('class'=>'form-control')) !!} --}}
            <div class="listUsername">
                <select name="userName[]" class="form-control" multiple="">
                    @foreach($user as $k => $v)
                        <option value="{{ $v->id }}">{{ $v->name }}({{ $v->email }})</option>
                    @endforeach
                </select>
            </div>

            <div class="listdivisions">
                <div class="row">
                    <div class="col-md-4">
                        @foreach( $divisions as $k => $v )
                            <div class="col-md-12">
                                <input type="checkbox" name="division[]" value="{{ $v->id }}">
                                <span>{{ $v->title }}</span>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="form-group">
</div>

<div class="form-group">
    {!! Form::label('message', 'Message', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('message', old('message'), array('class'=>'form-control')) !!}
    </div>
</div>

<div class="form-group">
    <div class="col-sm-10 col-sm-offset-2">
      {!! Form::submit( trans('coreadmin::templates.templates-view_create-create') , array('class' => 'btn btn-primary')) !!}
    </div>
</div>

{!! Form::close() !!}

@endsection

@section('javascript')

    <script type="text/javascript">
        $(document).ready(function(){
            $('input[name=notif_type]').change(function(){
                if( $(this).val() == 'singluser' ){
                    $('.listUsername').show();
                    $('.listdivisions').hide();
                }
                if( $(this).val() == 'singleDivision' ){
                    $('.listdivisions').show();
                    $('.listUsername').hide();
                }
            });
        });
    </script>

@endsection