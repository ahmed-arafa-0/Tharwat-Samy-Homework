import 'dart:math';
import 'loan.dart';

/*

- CarLoan: Has a 7% interest rate, but if loanAmount > 50,000, it applies an additional 2% processing fee.

Monthly Installment Formula
https://www.wikihow.com/Calculate-an-Installment-Loan-Payment

EMI [Equal Monthly Installment] =  P (r (1+r)^n ) / ((1+r)^n -1).
where 
P : loan Amount
r : MONTHLY Interest Rate = Intrest Rate / 12
n : number of payment (months)

*/

class CarLoan extends Loan {
  CarLoan({
    required super.borrowerName,
    required super.loanAmount,
    super.interestRate = 0.07,
  }) {
    if (super.loanAmount > 50000) {
      super.loanAmount += super.loanAmount * 0.02; // 2% processing fee
    }
  }

  @override
  double calculateMonthlyInstallment({required int months}) {
    double monthlyInterestRate = interestRate / 12;
    return super.loanAmount *
        (monthlyInterestRate * pow(1 + monthlyInterestRate, months)) /
        (pow(1 + monthlyInterestRate, months) - 1);
  }
}
