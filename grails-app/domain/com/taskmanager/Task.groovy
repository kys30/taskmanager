package com.taskmanager

class Task implements Serializable{

    Long id

    String name
    String description

    Double amount


    Date createdOn

    Date updatedOn


    def beforeInsert() {
        createdOn = new Date()

    }

    def beforeUpdate() {
        updatedOn = new Date()
    }


    static mapping = {
        description sqlType: "varchar(255)"
    }

    static constraints = {
        name nullable: false,unique: true
        createdOn nullable: true
        updatedOn nullable: true
        description nullable: true
        amount nullable: false,min: new Double(0.0)

    }
}
