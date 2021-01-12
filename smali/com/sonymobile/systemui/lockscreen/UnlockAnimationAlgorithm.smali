.class public Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;
.super Ljava/lang/Object;
.source "UnlockAnimationAlgorithm.java"


# instance fields
.field private mDefaultClockPivotY:F

.field private mFlinging:Z

.field private mKeyguardShowing:Z

.field private mNeedsAnimationWhenLastEvent:Z

.field private mQsExpanded:Z

.field private mResultAlpha:F

.field private mResultScale:F

.field private mTracking:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mKeyguardShowing:Z

    .line 10
    iput-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mQsExpanded:Z

    .line 12
    iput-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mTracking:Z

    .line 13
    iput-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mFlinging:Z

    .line 14
    iput-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mNeedsAnimationWhenLastEvent:Z

    return-void
.end method

.method private static computeAlpha(F)F
    .locals 1

    const v0, 0x3f8ccccd    # 1.1f

    mul-float/2addr p0, v0

    const v0, 0x3dcccccd    # 0.1f

    sub-float/2addr p0, v0

    const/4 v0, 0x0

    .line 66
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float/2addr p0, p0

    return p0
.end method

.method private static computeScale(F)F
    .locals 1

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f400000    # 0.75f

    add-float/2addr p0, v0

    return p0
.end method

.method private needsAnimation()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mFlinging:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mNeedsAnimationWhenLastEvent:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateNeedsAnimationState()V
    .locals 2

    .line 87
    iget-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mTracking:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mFlinging:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iput-boolean v1, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mNeedsAnimationWhenLastEvent:Z

    goto :goto_1

    .line 88
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mKeyguardShowing:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mQsExpanded:Z

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mNeedsAnimationWhenLastEvent:Z

    :goto_1
    return-void
.end method


# virtual methods
.method public computeParamsIfNeeded(FF)Z
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->needsAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    div-float/2addr p1, p2

    .line 50
    invoke-static {p1}, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->computeAlpha(F)F

    move-result p2

    iput p2, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mResultAlpha:F

    .line 51
    invoke-static {p1}, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->computeScale(F)F

    move-result p1

    iput p1, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mResultScale:F

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAdjustedExpandedFraction(FF)F
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->needsAnimation()Z

    move-result p0

    if-eqz p0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method public getAdjustedExpandedHeight(FF)F
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->needsAnimation()Z

    move-result p0

    if-eqz p0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method public getDefaultClockPivotY()F
    .locals 0

    .line 44
    iget p0, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mDefaultClockPivotY:F

    return p0
.end method

.method public getResultAlpha()F
    .locals 0

    .line 58
    iget p0, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mResultAlpha:F

    return p0
.end method

.method public getResultScale()F
    .locals 0

    .line 62
    iget p0, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mResultScale:F

    return p0
.end method

.method public setDefaultClockPivotY(F)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mDefaultClockPivotY:F

    return-void
.end method

.method public setFlinging(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mFlinging:Z

    .line 36
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->updateNeedsAnimationState()V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mKeyguardShowing:Z

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mQsExpanded:Z

    return-void
.end method

.method public setTracking(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->mTracking:Z

    .line 31
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/UnlockAnimationAlgorithm;->updateNeedsAnimationState()V

    return-void
.end method
