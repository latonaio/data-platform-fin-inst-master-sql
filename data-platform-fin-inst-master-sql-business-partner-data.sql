CREATE TABLE `data_platform_fin_inst_master_business_partner_data`
(
    `FinInstCountry`           varchar(3) NOT NULL, 
    `FinInstNumber`            varchar(15) NOT NULL,
    `FinInstBusinessPartner`   int(12) NOT NULL,
    `ValidityEndDate`          date NOT NULL,
    `ValidityStartDate`        date NOT NULL,
    `IsMarkedForDeletion`      tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`FinInstCountry`, `FinInstNumber`, `FinInstBusinessPartner`, `ValidityEndDate`, `ValidityStartDate`),

    CONSTRAINT `DataPlatformFinInstMasterBusinessPartnerData_fk` FOREIGN KEY (`FinInstCountry`, `FinInstNumber`) REFERENCES `data_platform_fin_inst_master_general_data` (`FinInstCountry`, `FinInstNumber`),
    CONSTRAINT `DataPlatformFinInstMasterBusinessPartnerDataFinInstBusinessPartner_fk` FOREIGN KEY (`FinInstBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
