drop table if exists tb_opened_regional;

/*==============================================================*/
/* Table: tb_opened_regional                                    */
/*==============================================================*/
create table tb_opened_regional
(
   id                   int(11) not null auto_increment comment 'id',
   provice_id           int(11) comment 'ʡID',
   open_city            varchar(1000) comment '�ѿ�ͨ��',
   open_country         varchar(3000) comment '�ѿ�ͨ��',
   version              int(10) default 0 comment '�汾��',
   primary key (id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

alter table tb_opened_regional comment '�ѿ�ͨ�����';
