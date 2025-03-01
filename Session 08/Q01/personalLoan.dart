import 'loan.dart';
import 'dart:math';

/*

- PersonalLoan: Has a fixed 10% interest rate.

Monthly Installment Formula
https://www.wikihow.com/Calculate-an-Installment-Loan-Payment

EMI [Equal Monthly Installment] =  P (r (1+r)^n ) / ((1+r)^n -1).
where 
P : loan Amount
r : MONTHLY Interest Rate = Intrest Rate / 12
n : number of payment (months)

*/

class PersonalLoan extends Loan {
  PersonalLoan({
    required super.borrowerName,
    required super.loanAmount,
    super.interestRate = 0.10,
  });

  @override
  double calculateMonthlyInstallment({required int months}) {
    double monthlyInterestRate = interestRate / 12;
    return super.loanAmount *
        (monthlyInterestRate * pow(1 + monthlyInterestRate, months)) /
        (pow(1 + monthlyInterestRate, months) - 1);
  }
}
