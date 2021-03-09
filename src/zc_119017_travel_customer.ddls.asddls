@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Travel Customer'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_119017_TRAVEL_CUSTOMER as select from ZI_119017_TRAVEL_CUSTOMER {
    key TravelId,
    CustomerId,
    _customer.first_name,
    _customer.last_name,
    BeginDate,
    EndDate,
    Price,
    TotalPrice,
    BookingFee,
    CurrencyCode,
    Description,
    Status
}
