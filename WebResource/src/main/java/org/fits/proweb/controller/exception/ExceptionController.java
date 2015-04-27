/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.fits.proweb.controller.exception;

import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author fits-dev
 */
@ControllerAdvice
public class ExceptionController {

    @ExceptionHandler(CannotGetJdbcConnectionException.class)
    public ModelAndView CannotGetConnectionException(Exception ex) {
        ModelAndView model = new ModelAndView("errors/db_error");
        model.addObject("ex", ex);
        return model;
    }
}
