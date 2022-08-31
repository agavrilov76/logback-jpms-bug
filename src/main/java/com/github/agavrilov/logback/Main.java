package com.github.agavrilov.logback;

import org.slf4j.LoggerFactory;

public class Main {
  public static void main(String[] args) {
    final var logger = LoggerFactory.getLogger(Main.class);

    logger.debug("Debug message");
    logger.info("Info message");
  }
}
