using MyService as orderservice from '../../../srv/MyService';
annotate orderservice.orderSet @(
    UI:{
        SelectionFields  : [
            customer,
            orderid,
        ],

        LineItem :[
            {
                Label:'Customer',
                Value:customer,
            },
            {
                Label:'Order Number',
                Value:orderid,
            }, 
            {
                Label:'Ship to Party',
                Value:shipname,
            },
            {
                Label:'Order Quantity',
                Value:quantity,
            },        
            {
                Label:'Gross Amount',
                Value:grossamount,
            },
    
            {
                Label:'Currency ',
                Value:currency,
            }                      
        ],
        HeaderInfo  : {
            Title:{ Value: customer},
            Description:{ Value: orderid},
            TypeName : '',
            TypeNamePlural : '',
        },
    }
);