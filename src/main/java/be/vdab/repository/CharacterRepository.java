package be.vdab.repository;

import be.vdab.domain.*;
import be.vdab.domain.Character;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CharacterRepository extends JpaRepository<Character, Integer> {
}
