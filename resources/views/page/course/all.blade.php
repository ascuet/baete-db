@extends('layout.default')
@section('content')
<div class="card bg-light mt-3">
    <div class="card-header">
        All Courses
    </div>
    <div class="card-body">
        <table class="table table-striped display" >
            <thead>
                <th>Name</th>
                <th>Code</th>
                <th>Version</th>
                <th>Credit</th>
                <th>Dominant?</th>
            </thead>
            <tbody>
                @foreach($courses as $c)
                <tr>
                    <td>{{ $c->name }}</td>
                    <td>{{ $c->code }}</td>
                    <td>{{ $c->version }}</td>
                    <td>{{ $c->credit }}</td>
                    <td>{{ $c->is_dominant ? 'Dominant' : '' }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection