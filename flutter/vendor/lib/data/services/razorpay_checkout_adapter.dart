class RazorpayCheckoutRequest {
  const RazorpayCheckoutRequest({
    required this.keyId,
    required this.orderId,
    required this.amountPaise,
  });

  final String keyId;
  final String orderId;
  final int amountPaise;
}

class RazorpayCheckoutResult {
  const RazorpayCheckoutResult({required this.completed, this.paymentId});

  final bool completed;
  final String? paymentId;
}

abstract interface class RazorpayCheckoutAdapter {
  Future<RazorpayCheckoutResult> open(RazorpayCheckoutRequest request);
}

class DemoRazorpayCheckoutAdapter implements RazorpayCheckoutAdapter {
  const DemoRazorpayCheckoutAdapter({this.complete = true});

  final bool complete;

  @override
  Future<RazorpayCheckoutResult> open(RazorpayCheckoutRequest request) async {
    if (!complete) return const RazorpayCheckoutResult(completed: false);
    return const RazorpayCheckoutResult(completed: true, paymentId: 'pay_demo');
  }
}
