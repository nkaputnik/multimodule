using from '@capire/books';
using {sap.capire.customer} from '@capire/customers';
using {sap.capire.orders} from '../db/schema';

service OrderService {
    @cds.redirection.target
    entity Orders         as projection on orders.Orders;

    entity CustomerOrders as
        select from customer.Customers {
            *,
            orders : Association to many orders.Orders on orders.Customer.ID = ID
        };
     entity OrderBooks as projection on orders.Orders {
        OrderNo,
        Customer.email,
        Items.book.title
     }    
}