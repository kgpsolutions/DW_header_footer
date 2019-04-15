CREATE TABLE tbl_dw_hdr_ftr_mngmt
(rid                    bigint      NOT NULL    DEFAULT AUTOINCREMENT       ,
 company                varchar(20) NOT NULL                                ,
 dw_name                varchar(50) NOT NULL                                ,
 obj_name               varchar(50) NOT NULL                                ,
 obj_type               varchar(50) NOT NULL                                ,
 obj_band               varchar(10) NOT NULL                                ,                
 obj_visible            bit         NOT NULL    DEFAULT 1                   ,
 obj_alignment          int         NOT NULL    DEFAULT 0                   ,
 obj_pos_x              int         NOT NULL                                ,
 obj_pos_y              int         NOT NULL                                ,
 obj_width              int         NOT NULL                                ,
 obj_height             int         NOT NULL                                ,
 creation_timestamp     datetime    NOT NULL    DEFAULT CURRENT_TIMESTAMP   ,
 creation_userid        varchar(10) NOT NULL    DEFAULT CURRENT_USER        ,
 modification_timestamp datetime    NOT NULL    DEFAULT CURRENT_TIMESTAMP   ,
 modification_userid    varchar(10) NOT NULL    DEFAULT CURRENT_USER        ,            
 PRIMARY KEY(company,dw_name,obj_name)
)

CREATE CLUSTERED INDEX idx_tbl_dw_hdr_ftr_mngmt ON tbl_dw_hdr_ftr_mngmt(company,dw_name,obj_name)

select * from tbl_dw_hdr_ftr_mngmt

commit