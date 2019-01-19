package com.chao.platform.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Order_cost{
private int id;
private int orderId;
private int clientId;
private Double cost;
private String invoiceNo;
private int costStatus;

}