package com.example.rest.dto;

import com.example.rest.entity.Topic;
import com.example.rest.repository.TopicRepository;
import lombok.Data;


public class PostResponseTo {
    private Long id;
    private Long topicId;
    private String content;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    public Long getTopicId() {
        return topicId;
    }

    public void setTopicId(Long topicId) {
        this.topicId = topicId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
