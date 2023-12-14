//using from '@capire/books';
using {sap.capire.customer} from '@capire/customers';
using {com.sap.capire} from '../db/schema';

service OrderService {
    entity Orders as projection on capire.Orders;
    entity CustomerOrders as SELECT FROM customer.Customers
    {
        *, 
        orders : Association to many capire.Orders on orders.Customer.ID = ID
    } 
}