

abstract class UrlEndPoints{
  static const String login = 'auth/user/login';
  static const String forgotPassword = 'auth/user/forgot_password';
  static const String user = 'auth/user';
  static const String dashboardData = 'account/reports/dashboard-widgets-data';
  static const String bankList = 'account/reports/general-balance/bank';
  static const String bank = 'account/account/bank';
  static const String saleHistoryReport = 'account/reports/periodic-sales-trend/';
  static const String invoice = 'account/invoice';
  static const String payPaymentInvoice = 'account/invoice/pending-invoices';
  static const String receivePaymentInvoice = 'account/invoice/pending-invoice-receivables';
  static const String account = 'account/account';
  static const String accountList = 'account/account/list';
  static const String baseAccount = 'account/account/base-accounts';
  static const String product = 'account/product';
  static const String productCategory = 'account/product/category';
  static const String productCategoryPrice = 'account/product/price-category';
  static const String stockTransfer = 'account/voucher/stock-transfer';
  static const String stockVoucher = 'account/voucher/stock-voucher';
  static const String vendorCustomer = 'account/vendor-customer';
  static const String tax = 'account/account/tax';
  static const String journalVouchers = 'account/voucher/journal-vouchers';
  static const String journalVoucher = 'account/voucher/journal-voucher';
  static const String transferVouchers = 'account/voucher/transfer-vouchers';
  static const String transferVoucher = 'account/voucher/transfer-voucher';
  static const String unitOfMeasurement = 'account/uom';
  static const String unitOfMeasurementConversion = 'account/uom/conversion';
  static const String expense = 'account/expense';
  static const String expenseHead = 'account/expense/head';
  static const String expenseCategory = 'account/expense/category';
  static const String productLocation = 'account/product/location';
  static const String billPayment = 'account/voucher/bill-payments';
  static const String invoicePayment = 'account/invoice/payment';
  static const String journalPayment = 'account/voucher/journal-payment';
  static const String userManagementUsers = 'auth/usermanagement/users';
  static const String userRoles = 'auth/usermanagement/roles';
  static const String userRole = 'auth/usermanagement/role';
  static const String userInvite = 'auth/user/invite';
  static const String userUpdate = 'api/auth/user/update';
  static const String setting = 'account/setting';
  static const String cities = 'account/product/location/cities';
  static const String countries = 'account/product/location/countries';
  static const String states = 'account/product/location/states';
}