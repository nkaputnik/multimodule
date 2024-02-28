using OrderService as service from '../../srv/order-service';
using {sap.capire.order.Orders} from '../../db/schema';

annotate sap.capire.order.Orders with @fiori.draft.enabled;
annotate service.Orders with @odata.draft.enabled;

annotate service.Orders with {
    ID @Core.Computed;
};

annotate service.Orders with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : OrderNo,
        },
        {
            $Type : 'UI.DataField',
            Value : currency_code,
        },
    ]
);
annotate service.Orders with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : OrderNo,
            },
            {
                $Type : 'UI.DataField',
                Value : currency_code,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Items',
            ID : 'Items',
            Target : 'Items/@UI.LineItem#Items',
        },
    ]
);
annotate service.OrderItems with @(
    UI.LineItem #Items : [
        {
            $Type : 'UI.DataField',
            Value : amount,
            Label : 'amount',
        },{
            $Type : 'UI.DataField',
            Value : book_ID,
            Label : 'book_ID',
        },{
            $Type : 'UI.DataField',
            Value : netAmount,
            Label : 'netAmount',
        },]
);
