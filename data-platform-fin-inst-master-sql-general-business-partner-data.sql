CREATE TABLE `data_platform_fin_inst_master_general_business_partner_data`
(
    `FinInstCountry`           varchar(3) NOT NULL, 
    `FinInstCode`              varchar(10) NOT NULL,
    `FinInstBusinessPartner`   int(12) NOT NULL,
    `ValidityEndDate`          date NOT NULL,
    `ValidityStartDate`        date NOT NULL,
    `IsMarkedForDeletion`      tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`FinInstCountry`, `FinInstCode`, `FinInstBusinessPartner`, `ValidityEndDate`, `ValidityStartDate`),

    CONSTRAINT `DataPlatformFinInstMasterGeneralBusinessPartnerData_fk` FOREIGN KEY (`FinInstCountry`, `FinInstCode`) REFERENCES `data_platform_fin_inst_master_general_data` (`FinInstCountry`, `FinInstCode`),
    CONSTRAINT `DataPlatformFinInstMasterGeneralBusinessPartnerDataFinInstBusinessPartner_fk` FOREIGN KEY (`FinInstBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
