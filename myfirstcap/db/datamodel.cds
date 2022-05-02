namespace wangynh.db;

entity orders {
    key orderid     : Integer64;
        customer    : String;
        shipname    : String(100);
        quantity    : Integer;
        unit        : String(4);
        grossamount : Decimal;
        currency    : String(4);
};

entity customer {
    key customerid : Integer;
        customer   : String(40);
        contact    : String(40);
        city       : String(20);
        country    : String(20);
};


annotate orders @(UI : {
    SelectionFields : [
        customer,
        orderid,
    ],

    LineItem        : [
        {
            Label : 'Customer',
            Value : customer,
        },
        {
            Label : 'Order Number',
            Value : orderid,
        },
        {
            Label : 'Ship to Party',
            Value : shipname,
        },
        {
            Label : 'Order Quantity',
            Value : quantity,
        },
        {
            Label : 'Gross Amount',
            Value : grossamount,
        },
        {
            Label : 'Currency ',
            Value : currency,
        }
    ],
    HeaderInfo      : {
        Title          : {Value : customer
        },
        Description    : {Value : orderid
        },
        TypeName       : '',
        TypeNamePlural : '',
    },
});