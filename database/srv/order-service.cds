//using {sap.capire.bookshop} from '@capire/books';
//using {sap.capire.customer} from '@capire/customers';
using {sap.capire.orders, sap.capire.customer, sap.capire.bookshop} from '../db/schema';

service OrderService {
    entity Orders         as projection on orders.Orders;

    entity CustomerOrders as
        select from customer.Customers {
            *,
            orders : Association to many orders.Orders on orders.Customer.ID = ID
        }
}
