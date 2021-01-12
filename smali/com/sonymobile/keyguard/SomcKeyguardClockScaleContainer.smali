.class public Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;
.super Landroid/widget/FrameLayout;
.source "SomcKeyguardClockScaleContainer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field private mAnimateScaling:Z

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mHeightChange:I

.field private mMinScale:F

.field private mMinScaleForComputeNotifications:F

.field private mPivotXViewStart:Z

.field private mPreviousScale:F

.field private mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 41
    iput p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mMinScale:F

    const p1, 0x3f19999a    # 0.6f

    .line 47
    iput p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mMinScaleForComputeNotifications:F

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPivotXViewStart:Z

    .line 65
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimateScaling:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 67
    iput p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    return-void
.end method

.method private performAnimatedScaling(FI)V
    .locals 5

    .line 259
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 260
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v1, [F

    aput p1, v4, v3

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 261
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 262
    iget-object v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v3

    aput-object p1, v4, v1

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 263
    iget-object p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 264
    iget-object p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 265
    iget-object p0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private performNonAnimatedScaling(F)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    if-eqz v0, :cond_0

    .line 249
    invoke-interface {v0, p1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;->onScalingStarted(F)V

    .line 251
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 252
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 253
    iget-object p0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    if-eqz p0, :cond_1

    .line 254
    invoke-interface {p0, p1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;->onScalingFinished(F)V

    :cond_1
    return-void
.end method

.method private resizeClockAnimation(IIII)V
    .locals 2

    add-int/2addr p4, p2

    int-to-float p4, p4

    int-to-float p2, p2

    div-float/2addr p4, p2

    .line 218
    iget v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    sub-float/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x33d6bf95    # 1.0E-7f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return-void

    .line 221
    :cond_0
    iput p4, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    .line 224
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 228
    :cond_1
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPivotXViewStart:Z

    if-eqz v0, :cond_3

    .line 229
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    int-to-float p1, p1

    .line 231
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 233
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    goto :goto_0

    :cond_3
    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 236
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 238
    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 240
    iget-boolean p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimateScaling:Z

    if-eqz p1, :cond_4

    .line 241
    invoke-direct {p0, p4, p3}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->performAnimatedScaling(FI)V

    goto :goto_1

    .line 243
    :cond_4
    invoke-direct {p0, p4}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->performNonAnimatedScaling(F)V

    :goto_1
    return-void
.end method

.method private updateHeightChange(I)V
    .locals 1

    .line 269
    iget v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    .line 271
    iget p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 272
    iput p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final getHeightChange()I
    .locals 0

    .line 119
    iget p0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    return p0
.end method

.method public final getMaxHeightChange(Z)I
    .locals 2

    .line 129
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    .line 130
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 131
    iget p0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mMinScaleForComputeNotifications:F

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mMinScale:F

    :goto_0
    sub-float/2addr v0, p0

    mul-float/2addr v1, v0

    float-to-int p0, v1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getRequestedScale()F
    .locals 0

    .line 186
    iget p0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    return p0
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 281
    iget-object p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    if-eqz p1, :cond_0

    .line 282
    iget p0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    invoke-interface {p1, p0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;->onScalingCancelled(F)V

    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 291
    iget-object p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    if-eqz p1, :cond_0

    .line 292
    iget p0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    invoke-interface {p1, p0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;->onScalingFinished(F)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 308
    iget-object p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    if-eqz p1, :cond_0

    .line 309
    iget p0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    invoke-interface {p1, p0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;->onScalingStarted(F)V

    :cond_0
    return-void
.end method

.method public final requestHeightChange(II)I
    .locals 2

    if-ltz p1, :cond_0

    .line 165
    iget v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 169
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    .line 170
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 173
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->updateHeightChange(I)V

    .line 174
    iget p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->resizeClockAnimation(IIII)V

    .line 177
    :cond_1
    iget p0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    return p0
.end method

.method public final setAnimateScaling(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimateScaling:Z

    return-void
.end method

.method public final setMinScale(F)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mMinScale:F

    return-void
.end method

.method public final setMinScaleForComputeNotifications(F)V
    .locals 0

    .line 151
    iput p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mMinScaleForComputeNotifications:F

    return-void
.end method

.method public final setPivotXViewStart(Z)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPivotXViewStart:Z

    return-void
.end method

.method public final setSomcKeyguardClockScaleContainerCallback(Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    return-void
.end method
