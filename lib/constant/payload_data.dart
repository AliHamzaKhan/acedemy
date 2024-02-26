enum PayloadData {
  payableReceivable('payableReceivable'),
  netProfit('netProfit'),
  transactionTotal('transactionTotal'),
  transactions('transactions'),
  expenseChart('expenseChart'),
  trendingProductsChart('trendingProductsChart'),
  salesTrend('salesTrend'),
  sum('sum'),
  result('result'),
  count('count'),
  data('data'),
  totalCount('totalCount'),
  rows('rows');

  const PayloadData(this.value);

  final String value;
}
