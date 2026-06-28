@extends('layouts.frontend.app')

@section('content')
    <div class="hero-section" style="margin-bottom:20px;">
        <div class="container">
          <div class="section-card">
                    <p class="text-justify"> {!! $info->description !!}</p>
                    <br><br><br><br><br><br><br><br><br><br>
          </div>
        </div>
    </div> 
@endsection
