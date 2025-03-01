import 'dart:math';
import 'loan.dart';

/*

- HomeLoan: Has a base 8% interest rate, but if loanAmount > 500,000, the rate increases to 9.5%.

Monthly Installment Formula
https://www.wikihow.com/Calculate-an-Installment-Loan-Payment

EMI [Equal Monthly Installment] =  P (r (1+r)^n ) / ((1+r)^n -1).
where 
P : loan Amount
r : MONTHLY Interest Rate = Intrest Rate / 12
n : number of payment (months)

*/

class HomeLoan extends Loan {
  HomeLoan({
    required super.borrowerName,
    required super.loanAmount,
    super.interestRate = 0.08,
  }) {
    if (super.loanAmount > 500000) super.interestRate = 0.095;
  }

  @override
  double calculateMonthlyInstallment({required int months}) {
    double monthlyInterestRate = interestRate / 12;
    return super.loanAmount *
        (monthlyInterestRate * pow(1 + monthlyInterestRate, months)) /
        (pow(1 + monthlyInterestRate, months) - 1);
  }
}
