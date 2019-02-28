@foreach($roles as $role)

    <option value="{{$role->id ?? ""}}"

            @isset($role->id)
                @foreach ($user->roles as $role_user)
                    @if ($role->id == $role_user->id)
                        selected="selected"
                    @endif
                @endforeach
            @endisset
    >

        {!! $delimiter ?? "" !!}{{$role->name ?? ""}}
    </option>
@endforeach