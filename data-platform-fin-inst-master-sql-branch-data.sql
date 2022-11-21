CREATE TABLE `data_platform_fin_inst_master_branch_data` 
(
    `FinInstCountry`                    varchar(3) NOT NULL, 
    `FinInstCode`                       varchar(10) NOT NULL,
    `FinInstBranchCode`                 varchar(10) NOT NULL,
    `FinInstFullCode`                   varchar(15) NOT NULL,
    `FinInstBranchName`                 varchar(100) DEFAULT NULL,
    `FinInstBranchFullName`             varchar(200) DEFAULT NULL,
    `AddressID`                         int(12) DEFAULT NULL,
    `SWIFTCode`                         varchar(11) DEFAULT NULL,
    `IsMarkedForDeletion`               tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`FinInstCountry`, `FinInstCode`),

  CONSTRAINT `DataPlatformFinInstMasterBranchData_fk` FOREIGN KEY (`FinInstCountry`, `FinInstCode`) REFERENCES `data_platform_fin_inst_master_general_data` (`FinInstCountry`, `FinInstCode`),
  CONSTRAINT `DataPlatformFinInstMasterBranchDataAddressID_fk` FOREIGN KEY (`AddressID`) REFERENCES `data_platform_address_address_data` (`AddressID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
