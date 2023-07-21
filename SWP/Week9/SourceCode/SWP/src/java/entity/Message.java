/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author FPT
 */
public class Message {
    int MessageId;
    int SenderId;
    int ReceiverId;
    String content;

    public Message(int MessageId, int SenderId, int ReceiverId, String content) {
        this.MessageId = MessageId;
        this.SenderId = SenderId;
        this.ReceiverId = ReceiverId;
        this.content = content;
    }

    public Message() {
    }

    public int getMessageId() {
        return MessageId;
    }

    public void setMessageId(int MessageId) {
        this.MessageId = MessageId;
    }

    public int getSenderId() {
        return SenderId;
    }

    public void setSenderId(int SenderId) {
        this.SenderId = SenderId;
    }

    public int getReceiverId() {
        return ReceiverId;
    }

    public void setReceiverId(int ReceiverId) {
        this.ReceiverId = ReceiverId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
    
}
