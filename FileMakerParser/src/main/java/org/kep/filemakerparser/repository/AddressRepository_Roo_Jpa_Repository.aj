// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.kep.filemakerparser.repository;

import org.kep.filemakerparser.domain.Address;
import org.kep.filemakerparser.repository.AddressRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect AddressRepository_Roo_Jpa_Repository {
    
    declare parents: AddressRepository extends JpaRepository<Address, Long>;
    
    declare parents: AddressRepository extends JpaSpecificationExecutor<Address>;
    
    declare @type: AddressRepository: @Repository;
    
}