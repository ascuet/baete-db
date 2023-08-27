@extends('layout.default')
@section('content')
<div class="card bg-light mt-3">
    <div class="card-header">
        Create Batch
    </div>
    <div class="card-body">
        <form action="{{ url('student/store-excel') }}" enctype="multipart/form-data" method="post">
            @csrf 
            <div class="form-group">
                <label for="">Enter Batch</label>
                <input type="text" name="batch" class="form-control" id="">
            </div>
            <div class="form-group">
                <label for="">Select Excel</label>
                <input type="file" class="form-control" name="students" id="">
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Upload</button>
            </div>
        </form>
    </div>
</div>
@endsection