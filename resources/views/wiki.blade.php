@extends('layouts.app')

@section('content')
<wiki :owners="{{$owners}}" :kittens="{{ $kittens }}">

</wiki>
@endsection
