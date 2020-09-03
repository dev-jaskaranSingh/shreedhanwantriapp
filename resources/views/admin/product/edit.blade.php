@extends('admin.layouts.master')

@section('content')
    <style type="text/css">
        
        .attachment{
            margin-top: 30px
        }
        
        .delete{
            text-align: center;
            max-width: 100px;
            background: red;
            padding:5px 0;
        }
        
        .delete a{
            background: red;
            color: white;
            text-decoration: none;
        }

        ul{
            list-style: none;
        }
        
        .attachment ul li{
            max-width: 100px;
            float:left;
            margin-right: 20px
        }
        
        .attachment ul li img{
            width: 100%;
        }
        
        .borderAlign{
            padding-bottom: 5px;
            border: 2px solid #ededed;
            margin: 10px;
        }

    </style>
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

{!! Form::model($product, array('files' => true, 'class' => 'form-horizontal', 'id' => 'form-with-validation', 'method' => 'PATCH', 'route' => array(config('coreadmin.route').'.product.update', $product->id))) !!}

    <div class="form-group">
        {!! Form::label('title', 'Title*', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::text('title', old('title',$product->title), array('class'=>'form-control')) !!}
            
        </div>
    </div>
    <div class="form-group">
        {!! Form::label('description', 'Description', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::textarea('description', old('description',$product->description), array('class'=>'form-control')) !!}
            
        </div>
    </div>
    <div class="form-group">
        {!! Form::label('image', 'Image* ( 402 × 402 )', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            <img src="{{ asset('uploads/thumb/'.$product->image) }}" width="10%">
            {!! Form::file('image') !!}
            {!! Form::hidden('image_w', 4096) !!}
            {!! Form::hidden('image_h', 4096) !!}
        </div>
    </div>
    @php
        $divisions = $product->division->map(function($query){
            return $query->division_id;
        });
        $arrayDivision = $divisions->toArray();
    @endphp
    <div class="form-group">
        {!! Form::label('division', 'Division', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            <!--<select class="form-control" multiple="true" name="division[]">-->
            <!--    @foreach($division as $k => $v)-->
            <!--        <option value="{{ $v->id }}" {{ (in_array($v->id , $arrayDivision)) ? "selected":''  }} >{{ $v->title }}</option>-->
            <!--    @endforeach-->
            <!--</select>-->
            
            @foreach( $division as $k => $value )
                <label> <input type="checkbox" name="division[]" {{ (in_array($value->id , $arrayDivision)) ? "checked":''  }} value="{{ $value->id }}">{{ $value->title }} </label>
            @endforeach
            
            {{-- {!! Form::text('division', old('division',$product->division), array('class'=>'form-control')) !!} --}}
        </div>
    </div>
    
    <div class="row borderAlign">
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
                        {!! Form::file('visual[]' , ['multiple' => 'true']) !!}
                        {!! Form::hidden('visual_w', 4096) !!}
                        {!! Form::hidden('visual_h', 4096) !!}
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-1">
                
            </div>
            <div class="col-md-11">
                <div class="attachment">
                    <ul>
                        @php
                            $attachment = $product->Attachment->where('type' , 'visual');
                        @endphp
                        @foreach($attachment as $k => $v)
                            @if( $v->type == 'visual' )
                                <li>
                                    <img src="{{ asset('uploads/product/visual/'.$product->id.'/'.$v->image) }}" width="10%">
                                        {{-- @if( $attachment->count() > 1 ) --}}
                                        <div class="delete">
                                            <a href="{{ route('delete.product.attachment' , $v->id) }}">Delete</a>
                                        </div>
                                    {{-- @endif --}}
                                </li>
                            @endif
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div class="row borderAlign">
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
                        {!! Form::file('lbl[]' , ['multiple' => 'true']) !!}
                        {!! Form::hidden('lbl_w', 4096) !!}
                        {!! Form::hidden('lbl_h', 4096) !!}
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-1">
                
            </div>
            <div class="col-md-11">
                <div class="attachment">
                    <ul>
                        @php
                            $attachment = $product->Attachment->where('type' , 'lbl');
                        @endphp
                        @foreach($attachment as $k => $v)
                            @if( $v->type == 'lbl' )
                                <li>
                                    <img src="{{ asset('uploads/product/lbl/'.$product->id.'/'.$v->image) }}" width="10%">
                                    @if( $attachment->count() > 1 )
                                        <div class="delete">
                                            <a href="{{ route('delete.product.attachment' ,$v->id) }}">Delete</a>
                                        </div>
                                    @endif
                                </li>
                            @endif
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <br>
    <br>
    <div class="row">
        <div class="lbl">
            <div class="">
                <div class="form-group">
                    {!! Form::label('SC', 'Select Category*', array('class'=>'col-sm-2 control-label')) !!}
                    <div class="col-sm-10">
                        <div class="row">
                            @foreach( $Category as $k => $v )
                                <div class="col-md-2" style="text-align: center;">
                                    <label>
                                        <p>
                                            <input type="checkbox" name="category[]" value="{{ $v->id }}" {{ (in_array($v->id , $selectedProductCat) ? 'checked' : '' ) }}>
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
    </div>


    <div class="form-group">
        <div class="col-sm-10 col-sm-offset-2">
          {!! Form::submit(trans('coreadmin::templates.templates-view_edit-update'), array('class' => 'btn btn-primary')) !!}
          {!! link_to_route(config('coreadmin.route').'.product.index', trans('coreadmin::templates.templates-view_edit-cancel'), null, array('class' => 'btn btn-default')) !!}
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