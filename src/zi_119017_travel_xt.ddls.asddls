@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 1: Travel XT'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119017_TRAVEL_XT
  as select from ZI_119017_TRAVEL
{
  key TravelId,
      AgencyID,
      CustomerId,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      cast(cast(TotalPrice as abap.dec(16,2)) - cast(BookingFee as abap.dec(16,2)) as abap.curr(16,2)) as Price,
      TotalPrice,
      BookingFee,
      CurrencyCode,
      Description,
      case Status
        when 'B' then 'Booked'
        when 'N' then 'New'
        when 'P' then 'Planned'
        else ''
      end                                                                                              as Status
}
