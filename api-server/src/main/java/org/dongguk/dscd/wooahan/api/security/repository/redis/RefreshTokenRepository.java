package org.dongguk.dscd.wooahan.api.security.repository.redis;

import org.dongguk.dscd.wooahan.api.security.domain.redis.RefreshToken;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface RefreshTokenRepository extends CrudRepository<RefreshToken, UUID> {
}
