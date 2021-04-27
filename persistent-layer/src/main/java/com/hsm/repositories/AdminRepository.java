package com.hsm.repositories;

import com.hsm.data.AdminData;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminRepository extends CrudRepository<AdminData, Long> {
}
