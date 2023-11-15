using { Country, Currency, managed, cuid, sap.common.CodeList } from '@sap/cds/common';
using { sap.common.Countries, sap.common.Currencies, sap.common.Languages } from '@sap/cds-common-content';

namespace sap.capire.customer;

@Core.Description : 'Customer'
entity Customers : cuid, managed {
  email          : String @title : 'Email';
  firstName      : String @title : 'First name';
  lastName       : String @title : 'Last name';
  gender         : String @title : 'Gender';
  dateOfBirth    : Date @title : 'Date of birth';
  postalAddress  : Composition of one CustomerPostalAddress on postalAddress.Customer = $self @title : 'Postal address';
  billingData    : Composition of one CustomerBillingData on billingData.Customer = $self @title : 'Billing data';
}


entity CustomerBillingData : cuid, managed {
  Customer       : Association to one Customers;
  creditCardNo   : String @title : 'Credit card number';
}

entity CustomerPostalAddress : cuid, managed {
  Customer       : Association to one Customers;
  street         : String(128);
  endOfCustomer  : Date @PersonalData.FieldSemantics : 'EndOfBusinessDate'; //To test that attributes on comp level are included
  town           : String(128);
  country        : Country;
  someOtherField : String(128);
};
