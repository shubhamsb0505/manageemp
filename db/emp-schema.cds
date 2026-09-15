namespace emp.db;

using {
    cuid,
    managed
} from '@sap/cds/common';


// entity Employees {

//     key ID           : Integer;
//         firstName    : String(15);
//         lastName     : String(15);
//         fullName     : String(30);
//         email        : String(30);
//         phone        : String(10);
//         designation  : String(20);
//         salary       : Decimal(10, 2);
//         managerName  : String(30);
//         baseLocation : String(30);
//         proejctName  : String(30);
//         joiningDate  : Date;

// }


// aspect AddressType {
//     street      : String(100);
//     city       : String(100);
//     postalCode : String(100);
//     country    : String(100);
// }

type AddressType {
    street     : String(100);
    city       : String(100);
    postalCode : String(100);
    country    : String(100);
}

entity Employees : cuid, managed {

    key employId     : Integer;
        firstName    : String(15);
        lastName     : String(15);
        fullName     : String(30);
        email        : String(30);
        phone        : String(10);
        designation  : String(20);
        salary       : Decimal(10, 2);
        managerName  : String(30);
        baseLocation : String(30);
        proejctName  : String(30);
        joiningDate  : Date;
        // empAddress : Composition of one AddressType
        empAddress   : AddressType

}

entity EmployeeOrders : cuid, managed {
    orderId           : Integer;
    name              : String(100);
    description       : String(30);
    quantity          : Integer;
    pricerPerQuantity : Decimal(10, 2);
    totalPrice        : Decimal(10, 2); 
    currency          : String(3);
    orderDate         : Date;
    shippingAddress   : AddressType
}
