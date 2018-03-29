@extends('layouts.app')

@section('content')
<wiki :owners="{{$owners}}" :self="{{$self}}" :kittens="{{ $kittens }}" :cart="{{ $cart }}">

</wiki>
@endsection
