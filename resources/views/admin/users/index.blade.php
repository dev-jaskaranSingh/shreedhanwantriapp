@extends('admin.layouts.master')
@section('content')
<style type="text/css">
    .badge{
        margin-bottom: 5px
    }
</style>
    <div class="row">
        <div class="col-md-5">
            <p>{!! link_to_route('users.create', trans('coreadmin::admin.users-index-add_new'), [], ['class' => 'btn btn-success']) !!}</p>
        </div>
        
        <div class="col-md-5">
            heree
        </div>
    </div>
    
    @if($users->count() > 0)
        <div class="portlet box green">
            <div class="portlet-title">
                <div class="caption">{{ trans('coreadmin::admin.users-index-users_list') }}</div>
            </div>
            <div class="portlet-body">
                <table id="datatable" class="table table-striped table-hover table-responsive datatable">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Mobile</th>
                            <th>Role</th>
                            <th>Divisions</th>
                            <th>user Id</th>
                            <th>Password</th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($users as $user)
                            <tr>
                                <td>{{ $user->name }}</td>
                                <td>{{ $user->email }}</td>
                                <td>{{ $user->mobile }}</td>
                                @if($user->role_id == 2)
                                    <td>User</td>
                                @endif
                                @if( $user->role_id == 1 )
                                    <td>Admin</td>
                                @endif
                                <td>
                                    @foreach( $user->division as $k => $value )
                                        @foreach($value->division as $key => $val)
                                            <div class="badge">
                                                {{ $val->title }}
                                            </div>
                                        @endforeach
                                    @endforeach
                                </td>
                                <td>{{ $user->user_id }}</td>
                                <td>{{ $user->normalPassword }}</td>
                                <td>
                                    {!! link_to_route('users.edit', trans('coreadmin::admin.users-index-edit'), [$user->id], ['class' => 'btn btn-xs btn-info']) !!}
                                    {!! Form::open(['style' => 'display: inline-block;', 'method' => 'DELETE', 'onsubmit' => 'return confirm(\'' . trans('coreadmin::admin.users-index-are_you_sure') . '\');',  'route' => array('users.destroy', $user->id)]) !!}
                                    {!! Form::submit(trans('coreadmin::admin.users-index-delete'), array('class' => 'btn btn-xs btn-danger')) !!}
                                    {!! Form::close() !!}
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    @else
        {{ trans('coreadmin::admin.users-index-no_entries_found') }}
    @endif
@endsection