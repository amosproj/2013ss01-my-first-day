// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.osramos.ss13.proj1.model;

import de.osramos.ss13.proj1.model.Gpscoordinate;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Gpscoordinate_Roo_Jpa_Entity {
    
    declare @type: Gpscoordinate: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Gpscoordinate.id;
    
    @Version
    @Column(name = "version")
    private Integer Gpscoordinate.version;
    
    public Long Gpscoordinate.getId() {
        return this.id;
    }
    
    public void Gpscoordinate.setId(Long id) {
        this.id = id;
    }
    
    public Integer Gpscoordinate.getVersion() {
        return this.version;
    }
    
    public void Gpscoordinate.setVersion(Integer version) {
        this.version = version;
    }
    
}
