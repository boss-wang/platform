package com.chao.platform.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Order_pay{
private int id;
private int orderId;
private int supplierId;
private Double unitPrice;
private Double otherPrice;
private Double totalPrice;
private String invoiceNo;
private int payStatus;

}