@extends('layouts.frontend.app')

@section('content')
<div class="container py-5">
    <div class="row">

        {{-- Sidebar --}}
    

        {{-- Content --}}
        <div class="col-lg-12">

            <div class="card border-0 shadow-lg rounded-4">

                <div class="card-header bg-success text-white py-3">
                    <h4 class="mb-0">
                        💳 Payment Information
                    </h4>
                </div>

                <div class="card-body p-4">

                    <!-- @if(session('success'))
                        <div class="alert alert-success">
                            {{ session('success') }}
                        </div>
                    @endif -->

                    <form action="{{ route('user.profile.update') }}" method="POST">
                        @csrf

                        <div class="mb-4">

                            <label class="form-label fw-bold">
                                Select Payment Method
                            </label>

                            <div class="row">

                                <div class="col-md-3">
                                    <label class="card p-3 text-center payment-card">
                                        <input type="radio"
                                               name="payment_method"
                                               value="Bkash"
                                               checked
                                               required>

                                        <img src="{{ asset('frontend/images/payment/bkash.jpg') }}"
                                             style="height:55px;object-fit:contain">
                                    </label>
                                </div>

                                <div class="col-md-3">
                                    <label class="card p-3 text-center payment-card">
                                        <input type="radio"
                                               name="payment_method"
                                               value="Nagad">

                                        <img src="{{ asset('frontend/images/payment/nagad.jpg') }}"
                                             style="height:55px;object-fit:contain">
                                    </label>
                                </div>

                                <div class="col-md-3">
                                    <label class="card p-3 text-center payment-card">
                                        <input type="radio"
                                               name="payment_method"
                                               value="Rocket">

                                        <img src="{{ asset('frontend/images/payment/rocket.jpg') }}"
                                             style="height:55px;object-fit:contain">
                                    </label>
                                </div>
                                 <div class="col-md-3">
                                    <label class="card p-3 text-center payment-card">
                                        <input type="radio"
                                               name="payment_method"
                                               value="Bank">

                                        <img src="{{ asset('frontend/images/payment/bank.jpg') }}"
                                             style="height:55px;object-fit:contain">
                                    </label>
                                </div>

                            </div>

                        </div>


                       <div class="mb-3">
                            <label class="form-label" id="paymentLabel">
                                Payment Mobile Number
                            </label>

                            <input type="text"
                                class="form-control"
                                name="payment_mobile"
                                id="paymentInput"
                                placeholder="01XXXXXXXXX"
                                required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label" id="transLabel">
                                Transaction ID
                            </label>

                            <input type="text"
                                class="form-control"
                                name="trans_id"
                                id="transInput"
                                placeholder="Transaction ID"
                                required>
                        </div>

                  <input type="hidden" name="name" value="{{ auth()->user()->name }}">
                  <input type="hidden" name="email" value="{{ auth()->user()->email?? auth()->user()->phone.'@gmail.com' }}">
                  <input type="hidden" name="type" value="checkout">
                        <div class="mb-4">
                        <button class="btn btn-success btn-lg w-100">
                            ✔ Submit Payment
                        </button>
                        </div>
                        <div class="mb-4">
                        <a href="{{url('/user/dashboard')}}" class="btn btn-danger btn-lg w-100">
                             Payment Later
                            </a>
                        </div>

                    </form>

                </div>

            </div>

        </div>

    </div>
</div>
<script>
document.querySelectorAll('input[name="payment_method"]').forEach(function (radio) {

    radio.addEventListener('change', function () {

        let paymentLabel = document.getElementById('paymentLabel');
        let paymentInput = document.getElementById('paymentInput');

        let transLabel = document.getElementById('transLabel');
        let transInput = document.getElementById('transInput');

        if (this.value === 'Bank') {

            paymentLabel.innerHTML = 'Bank Account Number / Card Number';
            paymentInput.placeholder = 'Enter Bank Account Number';

            transLabel.innerHTML = 'Reference Number';
            transInput.placeholder = 'Reference Number';

        }
        else if (this.value === 'Card') {

            paymentLabel.innerHTML = 'Card Number';
            paymentInput.placeholder = 'Enter Card Number';

            transLabel.innerHTML = 'Reference Number';
            transInput.placeholder = 'Reference Number';

        }
        else {

            paymentLabel.innerHTML = 'Payment Mobile Number';
            paymentInput.placeholder = '01XXXXXXXXX';

            transLabel.innerHTML = 'Transaction ID';
            transInput.placeholder = 'Transaction ID';

        }

    });

});
</script>
<style>

.payment-card{
    cursor:pointer;
    transition:.3s;
    border:2px solid #eee;
}

.payment-card:hover{
    border-color:#198754;
    transform:translateY(-5px);
}

.payment-card input{
    margin-bottom:15px;
}

</style>

@endsection