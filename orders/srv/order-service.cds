//using from '@capire/books';
using {sap.capire.customer} from '../../customers/db/schema';
using {sap.capire.order} from '../db/schema';

service OrderService {
    entity Orders as projection on order.Orders;
    entity CustomerOrders as SELECT FROM customer.Customers
    {
        *, 
        orders : Association to many order.Orders on orders.Customer.ID = ID
    } 
}