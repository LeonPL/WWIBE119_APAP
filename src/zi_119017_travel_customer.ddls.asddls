@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 8: Travel Customer'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119017_TRAVEL_CUSTOMER
  as select from ZI_119017_TRAVEL_XT
  association [1] to /dmo/customer as _customer on ZI_119017_TRAVEL_XT.CustomerId = _customer.customer_id
{
  key TravelId,
      CustomerId,
      BeginDate,
      EndDate,
      Price,
      TotalPrice,
      BookingFee,
      CurrencyCode,
      Description,
      Status,
      _customer
}
