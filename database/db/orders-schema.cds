using { Country, Currency, managed, cuid, sap.common.CodeList } from '@sap/cds/common';
using {sap.capire.bookshop} from './books-schema';
using {sap.capire.customer} from './customers-schema';

namespace sap.capire.orders;

entity Orders : cuid, managed {

  OrderNo  : String @title:'Order Number'; //> readable key
  Items    : Composition of many OrderItems on Items.parent = $self;
  currency : Currency;

  Customer          : Association to customer.Customers @title : '{i18n>CUSTOMER}'; 
  //Payments          : Composition of many Payments on Payments.Order = $self @title : 'Payments';
}

entity OrderItems : cuid {
  parent    : Association to one Orders;
  book      : Association to bookshop.Books;
  amount    : Integer;
  netAmount : Decimal(9,2);
  //deliveries : Composition of many Deliveries on deliveries.parent = $self;
}

