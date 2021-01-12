.class public Lcom/android/systemui/recents/views/RecentsEntrancePathInterpolator;
.super Landroid/view/animation/PathInterpolator;
.source "RecentsEntrancePathInterpolator.java"


# instance fields
.field final mStartOffsetFraction:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 40
    iput p5, p0, Lcom/android/systemui/recents/views/RecentsEntrancePathInterpolator;->mStartOffsetFraction:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .line 45
    iget v0, p0, Lcom/android/systemui/recents/views/RecentsEntrancePathInterpolator;->mStartOffsetFraction:F

    add-float/2addr p1, v0

    invoke-super {p0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method
