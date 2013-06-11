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

import de.osramos.ss13.proj1.model.Taskdb;
import de.osramos.ss13.proj1.model.TaskdbDataOnDemand;
import de.osramos.ss13.proj1.model.UserdbDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect TaskdbDataOnDemand_Roo_DataOnDemand {
    
    declare @type: TaskdbDataOnDemand: @Component;
    
    private Random TaskdbDataOnDemand.rnd = new SecureRandom();
    
    private List<Taskdb> TaskdbDataOnDemand.data;
    
    @Autowired
    private UserdbDataOnDemand TaskdbDataOnDemand.userdbDataOnDemand;
    
    public Taskdb TaskdbDataOnDemand.getNewTransientTaskdb(int index) {
        Taskdb obj = new Taskdb();
        setBuilding(obj, index);
        setDescription(obj, index);
        setGps_1(obj, index);
        setGps_2(obj, index);
        setGps_3(obj, index);
        setGps_4(obj, index);
        setGps_5(obj, index);
        setGps_6(obj, index);
        setGps_7(obj, index);
        setGps_8(obj, index);
        setGps_9(obj, index);
        setGps_10(obj, index);
        setGps_11(obj, index);
        setGps_12(obj, index);
        setGps_End(obj, index);
        setGps_Start(obj, index);
        setPerson(obj, index);
        setPersonfunction(obj, index);
        setRoomno(obj, index);
        setTaskname(obj, index);
        return obj;
    }
    
    public void TaskdbDataOnDemand.setBuilding(Taskdb obj, int index) {
        String building = "building_" + index;
        obj.setBuilding(building);
    }
    
    public void TaskdbDataOnDemand.setDescription(Taskdb obj, int index) {
        String description = "description_" + index;
        obj.setDescription(description);
    }
    
    public void TaskdbDataOnDemand.setPerson(Taskdb obj, int index) {
        String person = "person_" + index;
        obj.setPerson(person);
    }
    
    public void TaskdbDataOnDemand.setPersonfunction(Taskdb obj, int index) {
        String personfunction = "personfunction_" + index;
        obj.setPersonfunction(personfunction);
    }
    
    public void TaskdbDataOnDemand.setRoomno(Taskdb obj, int index) {
        String roomno = "roomno_" + index;
        obj.setRoomno(roomno);
    }
    
    public void TaskdbDataOnDemand.setTaskname(Taskdb obj, int index) {
        String taskname = "taskname_" + index;
        obj.setTaskname(taskname);
    }
    
    public Taskdb TaskdbDataOnDemand.getSpecificTaskdb(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Taskdb obj = data.get(index);
        Long id = obj.getId();
        return Taskdb.findTaskdb(id);
    }
    
    public Taskdb TaskdbDataOnDemand.getRandomTaskdb() {
        init();
        Taskdb obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Taskdb.findTaskdb(id);
    }
    
    public boolean TaskdbDataOnDemand.modifyTaskdb(Taskdb obj) {
        return false;
    }
    
    public void TaskdbDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Taskdb.findTaskdbEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Taskdb' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Taskdb>();
        for (int i = 0; i < 10; i++) {
            Taskdb obj = getNewTransientTaskdb(i);
            try {
                obj.persist();
            } catch (ConstraintViolationException e) {
                StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getConstraintDescriptor()).append(":").append(cv.getMessage()).append("=").append(cv.getInvalidValue()).append("]");
                }
                throw new RuntimeException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
