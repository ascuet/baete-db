@extends('layout.default')
@section('content')
<div class="card bg-light mt-3">
    <div class="card-header">
        Batches
    </div>
    <div class="card-body">
        <table class="table table-striped display" >
            <thead>
                <th>Batch</th>
                <th>Students</th>
            </thead>
            <tbody>
                @foreach($batches as $b)
                <tr>
                    <td>{{ $b->batch }}</td>
                    <td>
                        <a class="" href="{{ url('student/all/'.$b->batch) }}">{{ $b->total }}</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection