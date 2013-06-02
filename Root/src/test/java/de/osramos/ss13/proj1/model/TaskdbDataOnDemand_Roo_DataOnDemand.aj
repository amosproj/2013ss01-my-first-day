// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.osramos.ss13.proj1.model;

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
    UserdbDataOnDemand TaskdbDataOnDemand.userdbDataOnDemand;
    
    public Taskdb TaskdbDataOnDemand.getNewTransientTaskdb(int index) {
        Taskdb obj = new Taskdb();
        setBuilding(obj, index);
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
    
    public void TaskdbDataOnDemand.setGps_1(Taskdb obj, int index) {
        String gps_1 = "gps_1_" + index;
        obj.setGps_1(gps_1);
    }
    
    public void TaskdbDataOnDemand.setGps_2(Taskdb obj, int index) {
        String gps_2 = "gps_2_" + index;
        obj.setGps_2(gps_2);
    }
    
    public void TaskdbDataOnDemand.setGps_3(Taskdb obj, int index) {
        String gps_3 = "gps_3_" + index;
        obj.setGps_3(gps_3);
    }
    
    public void TaskdbDataOnDemand.setGps_4(Taskdb obj, int index) {
        String gps_4 = "gps_4_" + index;
        obj.setGps_4(gps_4);
    }
    
    public void TaskdbDataOnDemand.setGps_5(Taskdb obj, int index) {
        String gps_5 = "gps_5_" + index;
        obj.setGps_5(gps_5);
    }
    
    public void TaskdbDataOnDemand.setGps_6(Taskdb obj, int index) {
        String gps_6 = "gps_6_" + index;
        obj.setGps_6(gps_6);
    }
    
    public void TaskdbDataOnDemand.setGps_7(Taskdb obj, int index) {
        String gps_7 = "gps_7_" + index;
        obj.setGps_7(gps_7);
    }
    
    public void TaskdbDataOnDemand.setGps_8(Taskdb obj, int index) {
        String gps_8 = "gps_8_" + index;
        obj.setGps_8(gps_8);
    }
    
    public void TaskdbDataOnDemand.setGps_9(Taskdb obj, int index) {
        String gps_9 = "gps_9_" + index;
        obj.setGps_9(gps_9);
    }
    
    public void TaskdbDataOnDemand.setGps_10(Taskdb obj, int index) {
        String gps_10 = "gps_10_" + index;
        obj.setGps_10(gps_10);
    }
    
    public void TaskdbDataOnDemand.setGps_11(Taskdb obj, int index) {
        String gps_11 = "gps_11_" + index;
        obj.setGps_11(gps_11);
    }
    
    public void TaskdbDataOnDemand.setGps_12(Taskdb obj, int index) {
        String gps_12 = "gps_12_" + index;
        obj.setGps_12(gps_12);
    }
    
    public void TaskdbDataOnDemand.setGps_End(Taskdb obj, int index) {
        String gps_End = "gps_End_" + index;
        obj.setGps_End(gps_End);
    }
    
    public void TaskdbDataOnDemand.setGps_Start(Taskdb obj, int index) {
        String gps_Start = "gps_Start_" + index;
        obj.setGps_Start(gps_Start);
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
