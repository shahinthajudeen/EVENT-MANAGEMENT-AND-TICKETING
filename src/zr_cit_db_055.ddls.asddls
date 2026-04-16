@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZCIT_DB_055'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_CIT_DB_055
  as select from ZCIT_DB_055
{
  key event_uuid as EventUUID,
  event_name as EventName,
  event_date as EventDate,
  location as Location,
  total_capacity as TotalCapacity,
  status as Status,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
