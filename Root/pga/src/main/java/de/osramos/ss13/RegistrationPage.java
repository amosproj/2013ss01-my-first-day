/*
 * Copyright (c) 2013 by Dirk Riehle, http://dirkriehle.com
 *
 * This file is part of the Amos SS13 Project - Productive Games Development (PGA) rating application.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public
 * License along with this program. If not, see
 * <http://www.gnu.org/licenses/>.
 * 
 * Software Developers in alphabetical order:
 * Nina Aures
 * Alexander Schmidt
 * Sascha Stroebel
 */


package de.osramos.ss13;

import org.apache.wicket.markup.html.form.Form;
import org.apache.wicket.markup.html.form.TextField;
import org.apache.wicket.model.PropertyModel;
import org.apache.wicket.request.mapper.parameter.PageParameters;
import org.apache.wicket.markup.html.basic.Label;
import org.apache.wicket.markup.html.WebPage;
import org.apache.wicket.markup.html.form.PasswordTextField;

public class RegistrationPage extends WebPage {
	private static final long serialVersionUID = 1L;

private String firstname;
private String lastname;
private String username;
private String password;
private String password2;
private String message;

    public RegistrationPage(final PageParameters parameters) {
        // TODO Add your page's components here
        
        PropertyModel<String> firstnameModel = new PropertyModel<String>(this, "firstname");
        PropertyModel<String> lastnameModel = new PropertyModel<String>(this, "lastname");
        PropertyModel<String> usernameModel = new PropertyModel<String>(this, "username");
        PropertyModel<String> passwordModel = new PropertyModel<String>(this, "password");
        PropertyModel<String> password2Model = new PropertyModel<String>(this, "password2");
        PropertyModel<String> messageModel = new PropertyModel<String>(this, "message");


		  add(new Label("message", messageModel));
		  
        Form<?> form = new Form("form");
        form.add(new TextField<String>("firstname", firstnameModel));
        form.add(new TextField<String>("lastname", lastnameModel));
        form.add(new TextField<String>("username", usernameModel));
        form.add(new PasswordTextField("password", passwordModel));
        form.add(new PasswordTextField("password2", password2Model));
        add(form);
        
        
    }
    
    
    
    public String getFirstname()
    {
        return firstname;
    }

    public void setFirstname(String firstname)
    {
        this.firstname = firstname;
    }
    
    
     public String getLastname()
    {
        return lastname;
    }

    public void setLastname(String lastname)
    {
        this.lastname = lastname;
    }
    

    public String getUsername()
    {
        return username;
    }

    public void setUsername(String username)
    {
        this.username = username;
    }
    

    public String getPassword()
    {
        return password;
    }

    public void setPassword(String password)
    {
        this.password = password;
    }
    
    public String getPassword2()
    {
        return password2;
    }

    public void setPassword2(String password2)
    {
        this.password2 = password2;
    }
    
    public String getMessage()
    {
        return message;
    }

    public void setMessage(String message)
    {
        this.message = message;
    }
    
}