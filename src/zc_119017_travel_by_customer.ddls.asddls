@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Travel by Customer'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_119017_TRAVEL_BY_CUSTOMER
  as select from ZI_119017_TRAVEL_BY_CUSTOMER
{
  key CustomerId,
      count(*)        as number_of_travels,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      sum(TotalPrice) as total_expenses,
      CurrencyCode

}

group by
  CustomerId,
  CurrencyCode

having
  count(*) > 10


