// SPDX-License-Identifier: GPL-3.0
pragma experimental ABIEncoderV2;
pragma solidity >=0.4.25 <0.9.0;

library Types {
    enum UserRole {
        Manufacturer,
        Supplier,
        Vendor,
        Customer
    }

    struct UserDetails {
        UserRole role;
        address id_;
        string name;
        string email;
    }

    enum ProductType {
        ALM,
        COS,
        MED,
        IND
    }

    struct UserHistory {
        address id_;
        uint256 date;
    }

    struct ProductHistory {
        UserHistory manufacturer;
        UserHistory supplier;
        UserHistory vendor;
        UserHistory[] customers;
    }

    struct Product {
        string name;
        string manufacturerName;
        address manufacturer;
        string barcodeId;
    }
}
