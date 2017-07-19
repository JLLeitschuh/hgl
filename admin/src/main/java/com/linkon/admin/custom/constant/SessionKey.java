package com.linkon.admin.custom.constant;

public enum SessionKey {

    TOP_BAR("topBar"), USER("currentUser"), ISLOGIN("isLogin"), ACTION_MENUS("usrMenuItems");

    // --------------------------------------------------------------------------------------------
    // Instance Fields
    // --------------------------------------------------------------------------------------------

    private String keyName;

    // --------------------------------------------------------------------------------------------
    // Instance Constructors
    // --------------------------------------------------------------------------------------------

    private SessionKey(String keyName) {

        this.keyName = keyName;
    }

    // --------------------------------------------------------------------------------------------
    // Instance Methods
    // --------------------------------------------------------------------------------------------

    public String getAsString() {

        return this.keyName;
    }

    /* ----------------------------------------------------------------------------------------- */

    @Override
    public String toString() {

        return keyName;
    }

    /* ----------------------------------------------------------------------------------------- */

}
