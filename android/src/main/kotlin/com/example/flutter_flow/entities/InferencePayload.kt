package com.example.flutter_flow.entities

import com.example.flutter_flow.enums.InferenceStrategy
import com.example.flutter_flow.enums.InferenceType

class InferencePayload(val model: String,
                       val type: InferenceType,
                       val strategy: InferenceStrategy) {
    
}