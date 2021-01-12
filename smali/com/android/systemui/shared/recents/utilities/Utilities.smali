.class public Lcom/android/systemui/shared/recents/utilities/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# direct methods
.method public static computeContrastBetweenColors(II)F
    .locals 14

    .line 36
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 37
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 38
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    const v3, 0x3d20e411    # 0.03928f

    cmpg-float v4, v0, v3

    const v5, 0x414eb852    # 12.92f

    const-wide v6, 0x4003333340000000L    # 2.4000000953674316

    const v8, 0x3f870a3d    # 1.055f

    const v9, 0x3d6147ae    # 0.055f

    if-gez v4, :cond_0

    div-float/2addr v0, v5

    goto :goto_0

    :cond_0
    add-float/2addr v0, v9

    div-float/2addr v0, v8

    float-to-double v10, v0

    .line 39
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v0, v10

    :goto_0
    cmpg-float v4, v2, v3

    if-gez v4, :cond_1

    div-float/2addr v2, v5

    goto :goto_1

    :cond_1
    add-float/2addr v2, v9

    div-float/2addr v2, v8

    float-to-double v10, v2

    .line 40
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v2, v10

    :goto_1
    cmpg-float v4, p0, v3

    if-gez v4, :cond_2

    div-float/2addr p0, v5

    goto :goto_2

    :cond_2
    add-float/2addr p0, v9

    div-float/2addr p0, v8

    float-to-double v10, p0

    .line 41
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float p0, v10

    :goto_2
    const v4, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v0, v4

    const v10, 0x3f371759    # 0.7152f

    mul-float/2addr v2, v10

    add-float/2addr v0, v2

    const v2, 0x3d93dd98    # 0.0722f

    mul-float/2addr p0, v2

    add-float/2addr v0, p0

    .line 44
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    .line 45
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v1

    .line 46
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    cmpg-float v1, p0, v3

    if-gez v1, :cond_3

    div-float/2addr p0, v5

    goto :goto_3

    :cond_3
    add-float/2addr p0, v9

    div-float/2addr p0, v8

    float-to-double v12, p0

    .line 47
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float p0, v12

    :goto_3
    cmpg-float v1, v11, v3

    if-gez v1, :cond_4

    div-float/2addr v11, v5

    goto :goto_4

    :cond_4
    add-float/2addr v11, v9

    div-float/2addr v11, v8

    float-to-double v11, v11

    .line 48
    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v11, v11

    :goto_4
    cmpg-float v1, p1, v3

    if-gez v1, :cond_5

    div-float/2addr p1, v5

    goto :goto_5

    :cond_5
    add-float/2addr p1, v9

    div-float/2addr p1, v8

    float-to-double v8, p1

    .line 49
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float p1, v5

    :goto_5
    mul-float/2addr p0, v4

    mul-float/2addr v11, v10

    add-float/2addr p0, v11

    mul-float/2addr p1, v2

    add-float/2addr p0, p1

    const p1, 0x3d4ccccd    # 0.05f

    add-float/2addr p0, p1

    add-float/2addr v0, p1

    div-float/2addr p0, v0

    .line 52
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method
