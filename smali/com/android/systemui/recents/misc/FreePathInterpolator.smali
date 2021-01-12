.class public Lcom/android/systemui/recents/misc/FreePathInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "FreePathInterpolator.java"


# instance fields
.field private mArcLength:F

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .locals 13

    const v0, 0x3b03126f    # 0.002f

    .line 57
    invoke-virtual {p1, v0}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object p1

    .line 59
    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    .line 61
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    .line 62
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    const/4 v1, 0x0

    .line 63
    iput v1, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    move v5, v4

    move v1, v2

    :goto_0
    if-ge v2, v0, :cond_3

    add-int/lit8 v6, v1, 0x1

    .line 69
    aget v1, p1, v1

    add-int/lit8 v7, v6, 0x1

    .line 70
    aget v6, p1, v6

    add-int/lit8 v8, v7, 0x1

    .line 71
    aget v7, p1, v7

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    cmpl-float v3, v6, v4

    if-nez v3, :cond_0

    goto :goto_1

    .line 73
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Path cannot have discontinuity in the X axis."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    cmpg-float v3, v6, v4

    if-ltz v3, :cond_2

    .line 79
    iget-object v3, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aput v6, v3, v2

    .line 80
    iget-object v3, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aput v7, v3, v2

    .line 81
    iget v3, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    float-to-double v9, v3

    sub-float v3, v6, v4

    float-to-double v3, v3

    sub-float v5, v7, v5

    float-to-double v11, v5

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    add-double/2addr v9, v3

    double-to-float v3, v9

    iput v3, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    add-int/lit8 v2, v2, 0x1

    move v3, v1

    move v4, v6

    move v5, v7

    move v1, v8

    goto :goto_0

    .line 77
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Path cannot loop back on itself."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method


# virtual methods
.method public getArcLength()F
    .locals 0

    .line 175
    iget p0, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    return p0
.end method

.method public getInterpolation(F)F
    .locals 6

    .line 100
    iget-object v0, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    cmpg-float v3, p1, v2

    const/4 v4, 0x0

    if-gtz v3, :cond_0

    .line 104
    iget-object p0, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget p0, p0, v4

    return p0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    .line 106
    iget-object p0, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget p0, p0, v0

    return p0

    :cond_1
    :goto_0
    sub-int v3, v0, v4

    if-le v3, v1, :cond_3

    add-int v3, v4, v0

    .line 111
    div-int/lit8 v3, v3, 0x2

    .line 112
    iget-object v5, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v5, v5, v3

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_0

    .line 119
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v3, v1, v0

    aget v5, v1, v4

    sub-float/2addr v3, v5

    cmpl-float v2, v3, v2

    if-nez v2, :cond_4

    .line 121
    iget-object p0, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget p0, p0, v4

    return p0

    .line 124
    :cond_4
    aget v1, v1, v4

    sub-float/2addr p1, v1

    div-float/2addr p1, v3

    .line 127
    iget-object p0, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v1, p0, v4

    .line 128
    aget p0, p0, v0

    sub-float/2addr p0, v1

    mul-float/2addr p1, p0

    add-float/2addr v1, p1

    return v1
.end method

.method public getX(F)F
    .locals 6

    .line 139
    iget-object v0, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_0

    .line 143
    iget-object p0, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget p0, p0, v0

    return p0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    const/4 v4, 0x0

    if-ltz v3, :cond_1

    .line 145
    iget-object p0, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget p0, p0, v4

    return p0

    :cond_1
    :goto_0
    sub-int v3, v0, v4

    if-le v3, v1, :cond_3

    add-int v3, v4, v0

    .line 150
    div-int/lit8 v3, v3, 0x2

    .line 151
    iget-object v5, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v5, v5, v3

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    .line 158
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v3, v1, v0

    aget v5, v1, v4

    sub-float/2addr v3, v5

    cmpl-float v2, v3, v2

    if-nez v2, :cond_4

    .line 160
    iget-object p0, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget p0, p0, v4

    return p0

    .line 163
    :cond_4
    aget v1, v1, v4

    sub-float/2addr p1, v1

    div-float/2addr p1, v3

    .line 166
    iget-object p0, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v1, p0, v4

    .line 167
    aget p0, p0, v0

    sub-float/2addr p0, v1

    mul-float/2addr p1, p0

    add-float/2addr v1, p1

    return v1
.end method
