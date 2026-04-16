@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZCIT_DB_055'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_CIT_DB_055
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_CIT_DB_055
  association [1..1] to ZR_CIT_DB_055 as _BaseEntity on $projection.EVENTUUID = _BaseEntity.EVENTUUID
{
  key EventUUID,
  EventName,
  EventDate,
  Location,
  TotalCapacity,
  Status,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
