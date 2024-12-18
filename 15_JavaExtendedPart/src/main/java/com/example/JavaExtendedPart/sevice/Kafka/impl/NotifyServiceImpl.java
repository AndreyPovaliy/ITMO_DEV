package com.example.JavaExtendedPart.sevice.Kafka.impl;


import com.example.JavaExtendedPart.sevice.Kafka.NotifyService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Slf4j
@Service
@RequiredArgsConstructor
public class NotifyServiceImpl implements NotifyService {

    private final KafkaTemplate<String,Object> template;

    @Value("${kafka.topics.notification}")
    private String notificationTopic;

    @Override
    public void sendNotification(){
        try {
            template.send(notificationTopic, String.valueOf(UUID.randomUUID()), new Object())
                    .addCallback(result -> {
                        if (result != null) {
                            log.info("notification send successful");
                        }
                    }, ex -> log.error("notification send error"));
        } catch (Exception e) {
            log.error((e.getMessage()));
        }
    }


}
