using from '@capire/books';
using {sap.capire.customer} from '@capire/customers';
using {sap.capire.orders} from '../db/schema';

service OrderService {
    entity Orders         as projection on orders.Orders;

    entity CustomerOrders as
        select from customer.Customers {
            *,
            orders : Association to many orders.Orders on orders.Customer.ID = ID
        }
}
