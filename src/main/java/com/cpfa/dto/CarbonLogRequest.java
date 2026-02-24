package com.cpfa.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CarbonLogRequest {
    private String transportMode;
    private double transportDistance;
    private String dietType;
    private double energyUsage;
}
