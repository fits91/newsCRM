/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.fits.proweb.service;

import org.apache.commons.codec.digest.DigestUtils;

/**
 *
 * @author fits-dev
 */
public class Service {

    public static String md5Apache(String str) {
        String md5Hex = DigestUtils.md5Hex(str);
        return md5Hex;
    }
}
