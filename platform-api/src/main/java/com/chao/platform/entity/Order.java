package com.chao.platform.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class Order{
private int orderId;
private int clientId;
private String orderNo;
private String systemNo;
private String mawbNo;
private String hawbNo;
private String flightNo;
private Date departDate;
private Date arriveDate;
private String destination;
private String cargoPiece;
private Double cargoWeight;
private Double chargeWeight;
private Double cargoVolume;
private String customsNo;
private int customsStatus;
private int statusId;
private String updateTime;
private String remarks;
private int userId;
private int termsId;
private String loadingPort;
private int orderClientContactId;

}