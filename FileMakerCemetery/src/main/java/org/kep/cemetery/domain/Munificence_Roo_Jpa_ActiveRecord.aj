// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.kep.cemetery.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.kep.cemetery.domain.Munificence;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Munificence_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Munificence.entityManager;
    
    public static final List<String> Munificence.fieldNames4OrderClauseFilter = java.util.Arrays.asList("purpose", "amount", "yearOfMunificence", "description");
    
    public static final EntityManager Munificence.entityManager() {
        EntityManager em = new Munificence().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Munificence.countMunificences() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Munificence o", Long.class).getSingleResult();
    }
    
    public static List<Munificence> Munificence.findAllMunificences() {
        return entityManager().createQuery("SELECT o FROM Munificence o", Munificence.class).getResultList();
    }
    
    public static List<Munificence> Munificence.findAllMunificences(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Munificence o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Munificence.class).getResultList();
    }
    
    public static Munificence Munificence.findMunificence(Long id) {
        if (id == null) return null;
        return entityManager().find(Munificence.class, id);
    }
    
    public static List<Munificence> Munificence.findMunificenceEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Munificence o", Munificence.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Munificence> Munificence.findMunificenceEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Munificence o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Munificence.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Munificence.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Munificence.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Munificence attached = Munificence.findMunificence(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Munificence.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Munificence.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Munificence Munificence.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Munificence merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
