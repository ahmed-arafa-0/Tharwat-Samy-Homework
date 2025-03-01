import 'loan.dart';

/*

LoanProcessingSystem Class
Create a LoanProcessingSystem class that:
- Stores a list of loans.
- Provides methods to:
- applyLoan(Loan loan): Adds a loan application to the system.
- calculateInstallments(int months): Calculates the monthly installment for all loans.

*/

class LoanProcessingSystem {
  List<Loan> _loans = [];

  bool applyLoan(Loan loan) {
    _loans.add(loan);
    return true;
  }

  void calculateInstallments({required int months}) {
    _loans.forEach(
      (element) {
        print(
            "${element.borrowerName}'s monthly installment: ${element.calculateMonthlyInstallment(months: months)}");
      },
    );
  }
}
