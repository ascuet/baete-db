@extends('layout.default')
@section('content')
<div class="card bg-light mt-3">
    <div class="card-header">
        Students of Batch {{ $students[0]->batch }}
    </div>
    <div class="card-body">
        <table class="table table-striped display" >
            <thead>
                <th>ID</th>
                <th>Name</th>
            </thead>
            <tbody>
                @foreach($students as $s)
                <tr>
                    <td>{{ $s->roll }}</td>
                    <td>{{ $s->name }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection