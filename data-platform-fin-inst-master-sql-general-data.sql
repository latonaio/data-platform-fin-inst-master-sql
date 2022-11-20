CREATE TABLE `data_platform_fin_inst_master_general_data` 
(
    `FinInstCountry`              varchar(3) NOT NULL, 
    `FinInstCode`                 varchar(10) NOT NULL,
    `FinInstName`                 varchar(100) DEFAULT NULL,
    `FinInstFullName`             varchar(200) DEFAULT NULL,
    `AddressID`                   int(12) DEFAULT NULL,
    `SWIFTCode`                   varchar(11) DEFAULT NULL,
    `IsMarkedForDeletion`         tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`FinInstCountry`, `FinInstCode`),

  CONSTRAINT `DataPlatformFinInstMasterGeneralDataFinInstCountry_fk` FOREIGN KEY (`FinInstCountry`) REFERENCES `data_platform_country_country_data` (`Country`),
  CONSTRAINT `DataPlatformFinInstMasterGeneralDataAddressID_fk` FOREIGN KEY (`AddressID`) REFERENCES `data_platform_address_address_data` (`AddressID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
