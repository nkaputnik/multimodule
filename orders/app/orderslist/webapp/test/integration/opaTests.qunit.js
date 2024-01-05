sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'orders/orderslist/test/integration/FirstJourney',
		'orders/orderslist/test/integration/pages/OrdersList',
		'orders/orderslist/test/integration/pages/OrdersObjectPage',
		'orders/orderslist/test/integration/pages/OrderItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, OrdersList, OrdersObjectPage, OrderItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('orders/orderslist') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheOrdersList: OrdersList,
					onTheOrdersObjectPage: OrdersObjectPage,
					onTheOrderItemsObjectPage: OrderItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);