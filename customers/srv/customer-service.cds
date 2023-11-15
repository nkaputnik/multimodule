using {sap.capire.customer} from '../db/schema';

service CustomerService {
  entity Customers as projection on customer.Customers;
 };