CREATE TABLE `data_platform_fin_inst_master_branch_business_partner_data`
(
    `FinInstCountry`                 varchar(3) NOT NULL, 
    `FinInstCode`                    varchar(10) NOT NULL,
    `FinInstBranchCode`              varchar(10) NOT NULL,
    `FinInstFullCode`                varchar(15) NOT NULL,
    `FinInstBranchBusinessPartner`   int(12) NOT NULL,
    `ValidityEndDate`                date NOT NULL,
    `ValidityStartDate`              date NOT NULL,
    `IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`, `FinInstBranchBusinessPartner`, `ValidityEndDate`, `ValidityStartDate`),

    CONSTRAINT `DataPlatformFinInstMasterBranchBusinessPartnerData_fk` FOREIGN KEY (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`) REFERENCES `data_platform_fin_inst_master_branch_data` (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`),
    CONSTRAINT `DataPlatformFinInstMasterGeneralBusinessPartnerDataFinInstBusinessPartner_fk` FOREIGN KEY (`FinInstBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
