package com.github.agavrilov.logback;

import ch.qos.logback.classic.Level;
import ch.qos.logback.classic.jul.JULHelper;

public class Main {

  public static void main(String[] args) {
    System.out.println("OK: " + JULHelper.asJULLevel(Level.INFO));
  }
}
