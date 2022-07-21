@extends('layouts.authentication')
@section('title', 'Register')
@section('contentss')
<div class="d-flex">
  <div class="">
    <img src="/img/banner-cadastro.svg" alt="" width="650px" height="625px">
  </div>
  <div class="justify-content-center  w-100 form-login">

    <form method="POST" action="{{ route('register') }}" style="padding-top:50px ;">
      @csrf

      <div class="mb-4 filho">
        <a href="/">
          <img src="/img/logo.svg" alt="" class="mb-2">
          <img src="/img/TurquesaBooks.svg" alt=""></a>
      </div>

      <x-jet-validation-errors class="text-dark" />


      <div class="form-outline ">
        <x-jet-label for="name" class="form-label  text-white" value="{{ __('Name') }}" />
        <x-jet-input id="name" class="block mt-1 w-full form-control" type="text" name="name" :value="old('name')" required autofocus autocomplete="name" />

      </div>
      <div class="form-outline  ">
        <x-jet-label for=" email" class="form-label mt-2 text-white" value="{{ __('Email') }}" />
        <x-jet-input id="email" class="block mt-1 w-full form-control" type="email" name="email" :value="old('email')" required />
      </div>
      <div class="form-outline ">
        <x-jet-label for="password" class="form-label mt-2 text-white" value="{{ __('Password') }}" />
        <x-jet-input id="password" class="block mt-1 w-full form-control" type="password" name="password" required autocomplete="new-password" />
      </div>

      <div class="form-outline ">
        <x-jet-label for="password_confirmation" class="form-label mt-2 text-white" value="{{ __('Confirm Password') }}" />
        <x-jet-input id="password_confirmation" class="block mt-1 w-full form-control" type="password" name="password_confirmation" required autocomplete="new-password" />
      </div>

      @if (Laravel\Jetstream\Jetstream::hasTermsAndPrivacyPolicyFeature())
      <div class="mt-4">
        <x-jet-label for="terms">
          <div class="flex items-center">

            <x-jet-checkbox name="terms" id="terms" />

            <div class="ml-2">
              {!! __('I agree to the :terms_of_service and :privacy_policy', [
              'terms_of_service' => '<a target="_blank" href="'.route('terms.show').'" class="underline text-sm text-gray-600 hover:text-gray-900">'.__('Terms of Service').'</a>',
              'privacy_policy' => '<a target="_blank" href="'.route('policy.show').'" class="underline text-sm text-gray-600 hover:text-gray-900">'.__('Privacy Policy').'</a>',
              ]) !!}
            </div>
          </div>
        </x-jet-label>
      </div>
      @endif
      <div class="col mb-3">

        <a href="{{ route('login') }}">já possui conta? Clique Aqui!!</a>

      </div>

      <button type="submit" class="btn btn-dark btn-block mb-4 w-100">Registrar</button>
    </form>
  </div>
</div>
@endsection