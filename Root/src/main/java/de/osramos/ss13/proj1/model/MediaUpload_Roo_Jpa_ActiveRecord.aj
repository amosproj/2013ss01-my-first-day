// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.osramos.ss13.proj1.model;

/*
 * #%L
 * proj1
 * %%
 * Copyright (C) 2013 Amos-Project
 * %%
 * Copyright (c) 2013 by Alexander Schmidt, Sascha Ströbel, Nina Aures, Riehle, http://dirkriehle.com
 * -
 * This file is part of the Amos Project - Productive Games application.
 * -
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 * -
 * This program is distributed in the hope that it will be useful, 
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 * -
 * You should have received a copy of the GNU Affero General Public
 * License along with this program. If not, see
 * <http://www.gnu.org/licenses/>.
 * #L%
 */

import de.osramos.ss13.proj1.model.MediaUpload;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MediaUpload_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager MediaUpload.entityManager;
    
    public static final EntityManager MediaUpload.entityManager() {
        EntityManager em = new MediaUpload().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long MediaUpload.countMediaUploads() {
        return entityManager().createQuery("SELECT COUNT(o) FROM MediaUpload o", Long.class).getSingleResult();
    }
    
    public static List<MediaUpload> MediaUpload.findAllMediaUploads() {
        return entityManager().createQuery("SELECT o FROM MediaUpload o", MediaUpload.class).getResultList();
    }
    
    public static MediaUpload MediaUpload.findMediaUpload(Long id) {
        if (id == null) return null;
        return entityManager().find(MediaUpload.class, id);
    }
    
    public static List<MediaUpload> MediaUpload.findMediaUploadEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM MediaUpload o", MediaUpload.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void MediaUpload.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void MediaUpload.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            MediaUpload attached = MediaUpload.findMediaUpload(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void MediaUpload.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void MediaUpload.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public MediaUpload MediaUpload.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        MediaUpload merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}