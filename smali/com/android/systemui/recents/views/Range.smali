.class Lcom/android/systemui/recents/views/Range;
.super Ljava/lang/Object;
.source "TaskStackLayoutAlgorithm.java"


# instance fields
.field max:F

.field min:F

.field origin:F

.field final relativeMax:F

.field final relativeMin:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    iput p1, p0, Lcom/android/systemui/recents/views/Range;->min:F

    .line 66
    iput p2, p0, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    iput p2, p0, Lcom/android/systemui/recents/views/Range;->max:F

    return-void
.end method


# virtual methods
.method public getAbsoluteX(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    sub-float/2addr p1, v0

    div-float/2addr p1, v0

    .line 97
    iget p0, p0, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    neg-float p0, p0

    :goto_0
    mul-float/2addr p1, p0

    return p1

    :cond_0
    sub-float/2addr p1, v0

    div-float/2addr p1, v0

    .line 99
    iget p0, p0, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    goto :goto_0
.end method

.method public getNormalizedX(F)F
    .locals 3

    .line 84
    iget v0, p0, Lcom/android/systemui/recents/views/Range;->origin:F

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    if-gez v1, :cond_0

    sub-float/2addr p1, v0

    mul-float/2addr p1, v2

    .line 85
    iget p0, p0, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    neg-float p0, p0

    :goto_0
    div-float/2addr p1, p0

    add-float/2addr p1, v2

    return p1

    :cond_0
    sub-float/2addr p1, v0

    mul-float/2addr p1, v2

    .line 87
    iget p0, p0, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    goto :goto_0
.end method

.method public isInRange(F)Z
    .locals 4

    float-to-double v0, p1

    .line 107
    iget p1, p0, Lcom/android/systemui/recents/views/Range;->min:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_0

    iget p0, p0, Lcom/android/systemui/recents/views/Range;->max:F

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public offset(F)V
    .locals 1

    .line 73
    iput p1, p0, Lcom/android/systemui/recents/views/Range;->origin:F

    .line 74
    iget v0, p0, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/recents/views/Range;->min:F

    .line 75
    iget v0, p0, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/recents/views/Range;->max:F

    return-void
.end method
