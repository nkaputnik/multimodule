using { Country, Currency, managed, cuid, sap.common.CodeList } from '@sap/cds/common';
using { CatalogService.Books } from '@capire/books';
using { CustomerService.Customers } from '@capire/customers';

namespace sap.capire.orders;

entity Orders : cuid, managed {

  OrderNo  : String @title:'Order Number'; //> readable key
  Items    : Composition of many OrderItems on Items.parent = $self;
  currency : Currency;

  Customer          : Association to Customers @title : '{i18n>CUSTOMER}'; 
  //Payments          : Composition of many Payments on Payments.Order = $self @title : 'Payments';
}

entity OrderItems : cuid {
  parent    : Association to one Orders;
  book      : Association to Books;
  amount    : Integer;
  netAmount : Decimal(9,2);
  //deliveries : Composition of many Deliveries on deliveries.parent = $self;
}

