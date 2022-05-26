package com.example.flutter_flow.entities

import android.graphics.RectF

data class Inference(val model: String,
                     val score: Float,
                     val label: String,
                     val position: RectF?,
                     val inferenceTime: Float) {

    fun toMap(): Map<String, Any> {
        val map = mapOf(
                "model" to model,
                "score" to score,
                "label" to label,
                "inferenceTime" to inferenceTime,
        )

        if (position != null) {
            map.plus(mapOf(
                    "left" to position.left,
                    "top" to position.top,
                    "right" to position.right,
                    "bottom" to position.bottom
            ))
        }

        return map
    }
}