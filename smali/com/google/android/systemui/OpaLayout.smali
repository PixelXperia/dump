.class public Lcom/google/android/systemui/OpaLayout;
.super Landroid/widget/FrameLayout;
.source "OpaLayout.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ButtonInterface;


# static fields
.field static final INTERPOLATOR_40_40:Landroid/view/animation/Interpolator;

.field static final INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;


# instance fields
.field private final HOME_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private final mAnimatedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationState:I

.field private mBlue:Landroid/view/View;

.field private mBottom:Landroid/view/View;

.field private final mCheckLongPress:Ljava/lang/Runnable;

.field private final mCollapseInterpolator:Landroid/view/animation/Interpolator;

.field private final mCurrentAnimators:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayTouchFeedback:Z

.field private final mDiamondAnimation:Ljava/lang/Runnable;

.field private mDiamondAnimationDelayed:Z

.field private final mDiamondInterpolator:Landroid/view/animation/Interpolator;

.field private final mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mGreen:Landroid/view/View;

.field private mHalo:Landroid/widget/ImageView;

.field private mHaloDiameter:I

.field private mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

.field private final mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mIsPressed:Z

.field private mIsVertical:Z

.field private mLeft:Landroid/view/View;

.field private mLongClicked:Z

.field private mOpaEnabled:Z

.field private mOpaEnabledNeedsUpdate:Z

.field private final mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

.field private mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private mRed:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private final mRetract:Ljava/lang/Runnable;

.field private final mRetractInterpolator:Landroid/view/animation/Interpolator;

.field private mRight:Landroid/view/View;

.field private mScrollTouchSlop:I

.field private mStartTime:J

.field private mTop:Landroid/view/View;

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mWhite:Landroid/widget/ImageView;

.field private mWhiteCutout:Landroid/widget/ImageView;

.field private mWindowVisible:Z

.field private mYellow:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 138
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_40:Landroid/view/animation/Interpolator;

    .line 140
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v1, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/OpaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 227
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/OpaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 238
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/systemui/OpaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 232
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 124
    sget-object p2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 126
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const p3, 0x3f266666    # 0.65f

    const/high16 p4, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, p4, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 128
    sget-object p2, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 130
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {p2, v1, v0, v0, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 132
    new-instance p2, Landroid/view/animation/PathInterpolator;

    invoke-direct {p2, v1, v0, v0, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 134
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {p2, v1, v0, v1, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    .line 136
    new-instance p2, Landroid/view/animation/PathInterpolator;

    invoke-direct {p2, p3, v0, p4, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/google/android/systemui/OpaLayout;->HOME_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 148
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    .line 149
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 176
    iput p2, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 186
    new-instance p2, Lcom/google/android/systemui/OpaLayout$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/OpaLayout$1;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object p2, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    .line 203
    new-instance p2, Lcom/google/android/systemui/OpaLayout$2;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/OpaLayout$2;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object p2, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    .line 212
    new-instance p2, Lcom/google/android/systemui/OpaLayout$3;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/OpaLayout$3;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object p2, p0, Lcom/google/android/systemui/OpaLayout;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 312
    new-instance p2, Lcom/google/android/systemui/-$$Lambda$OpaLayout$4_BG8NBMX8f4CM36AHgbLewodcE;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/-$$Lambda$OpaLayout$4_BG8NBMX8f4CM36AHgbLewodcE;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object p2, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondAnimation:Ljava/lang/Runnable;

    .line 233
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/OpaLayout;->mScrollTouchSlop:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->cancelCurrentAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->startRetractAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/systemui/OpaLayout;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    return p0
.end method

.method static synthetic access$302(Lcom/google/android/systemui/OpaLayout;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mLongClicked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/systemui/OpaLayout;)Landroid/util/ArraySet;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->startLineAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->skipToStartingValue()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->startCollapseAnimation()V

    return-void
.end method

.method private allowAnimations()Z
    .locals 1

    .line 592
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/systemui/OpaLayout;->mWindowVisible:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private cancelCurrentAnimation()V
    .locals 2

    .line 960
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 963
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 964
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 965
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 966
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const/4 v0, 0x0

    .line 969
    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    :cond_1
    return-void
.end method

.method private endCurrentAnimation()V
    .locals 2

    .line 977
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 978
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 979
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 980
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 981
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 985
    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    return-void
.end method

.method private getAlphaAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 1

    .line 577
    new-instance p0, Landroid/view/RenderNodeAnimator;

    const/16 v0, 0xb

    invoke-direct {p0, v0, p2}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 578
    invoke-virtual {p0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 579
    invoke-virtual {p0, p5}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p3

    .line 580
    invoke-virtual {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    int-to-long p1, p4

    .line 581
    invoke-virtual {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    return-object p0
.end method

.method private getAlphaAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 569
    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private getCollapseAnimatorSet()Landroid/util/ArraySet;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 760
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 763
    iget-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    const/16 v2, 0x85

    if-eqz v1, :cond_0

    .line 764
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    sget-object v3, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_0

    .line 766
    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    sget-object v3, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    .line 763
    :goto_0
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    sget-object v3, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    const/16 v4, 0xc8

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v5, v4, v3}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 770
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    sget-object v3, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v4, v3}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 772
    iget-object v7, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    const/4 v8, 0x0

    const/16 v9, 0x32

    const/16 v10, 0x21

    sget-object v11, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 776
    iget-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    const/16 v3, 0x96

    if-eqz v1, :cond_1

    .line 777
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    sget-object v6, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v6, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_1

    .line 779
    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    sget-object v6, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v6, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    .line 776
    :goto_1
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 781
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    sget-object v6, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v4, v6}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 783
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    sget-object v6, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v4, v6}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 785
    iget-object v7, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    const/4 v8, 0x0

    const/16 v9, 0x32

    const/16 v10, 0x21

    sget-object v11, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 789
    iget-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    if-eqz v1, :cond_2

    .line 790
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v6, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v6, v2}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_2

    .line 792
    :cond_2
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v6, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v6, v2}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    .line 789
    :goto_2
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 794
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v2, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 796
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v2, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 798
    iget-object v7, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    const/4 v8, 0x0

    const/16 v9, 0x32

    const/16 v10, 0x21

    sget-object v11, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 802
    iget-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    if-eqz v1, :cond_3

    .line 803
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    sget-object v2, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_3

    .line 805
    :cond_3
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    sget-object v2, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    .line 802
    :goto_3
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 807
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    sget-object v2, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 809
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    sget-object v2, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 811
    iget-object v7, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    const/4 v8, 0x0

    const/16 v9, 0x32

    const/16 v10, 0x21

    sget-object v11, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 815
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    .line 817
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v2, v5, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    .line 819
    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v4

    .line 821
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v6, v5, v3, v7}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v6

    .line 823
    iget-object v7, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v7, v5, v3, v8}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v7

    .line 825
    iget-object v8, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v8, v5, v3, v9}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v8

    .line 827
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v9, v5, v3, v10}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v9, 0x21

    .line 829
    invoke-virtual {v1, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 830
    invoke-virtual {v2, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 831
    invoke-virtual {v4, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 832
    invoke-virtual {v6, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 833
    invoke-virtual {v7, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 834
    invoke-virtual {v8, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 835
    invoke-virtual {v3, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 836
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 837
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 838
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 839
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 840
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 841
    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 842
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 844
    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/OpaLayout$6;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/OpaLayout$6;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;
    .locals 1

    .line 526
    new-instance p0, Landroid/view/RenderNodeAnimator;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr v0, p3

    const/16 p3, 0x8

    invoke-direct {p0, p3, v0}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 527
    invoke-virtual {p0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 528
    invoke-virtual {p0, p2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p4

    .line 529
    invoke-virtual {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    return-object p0
.end method

.method private getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;
    .locals 1

    .line 538
    new-instance p0, Landroid/view/RenderNodeAnimator;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v0, p3

    const/16 p3, 0x9

    invoke-direct {p0, p3, v0}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 539
    invoke-virtual {p0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 540
    invoke-virtual {p0, p2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p4

    .line 541
    invoke-virtual {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    return-object p0
.end method

.method private getDiamondAnimatorSet()Landroid/util/ArraySet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 603
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 606
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    sget v3, Lcom/android/systemui/R$dimen;->opa_diamond_translation:I

    .line 607
    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    neg-float v3, v3

    const/16 v4, 0xc8

    .line 606
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 608
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 612
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/16 v5, 0x32

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v6, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    sget v7, Lcom/android/systemui/R$dimen;->opa_diamond_translation:I

    .line 617
    invoke-direct {p0, v7}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v7

    .line 616
    invoke-direct {p0, v1, v2, v7, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 618
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 622
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v6, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    sget v7, Lcom/android/systemui/R$dimen;->opa_diamond_translation:I

    .line 627
    invoke-direct {p0, v7}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v7

    neg-float v7, v7

    .line 626
    invoke-direct {p0, v1, v2, v7, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 630
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 632
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v6, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 636
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    sget v7, Lcom/android/systemui/R$dimen;->opa_diamond_translation:I

    .line 637
    invoke-direct {p0, v7}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v7

    .line 636
    invoke-direct {p0, v1, v2, v7, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 638
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 640
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 642
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v6, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f200000    # 0.625f

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 650
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 652
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 656
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v3, 0x3ef3cf3d

    const/16 v4, 0x64

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 658
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/OpaLayout$4;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/OpaLayout$4;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getLineAnimatorSet()Landroid/util/ArraySet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 855
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 856
    iget-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    const/16 v2, 0x85

    const/16 v3, 0xe1

    if-eqz v1, :cond_0

    .line 858
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_x_trans_ry:I

    .line 859
    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    .line 858
    invoke-direct {p0, v1, v4, v5, v3}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 860
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_y_translation:I

    .line 861
    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    .line 860
    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 864
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_x_trans_bg:I

    .line 865
    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    .line 864
    invoke-direct {p0, v1, v4, v5, v3}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 868
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_x_trans_ry:I

    .line 869
    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    neg-float v5, v5

    .line 868
    invoke-direct {p0, v1, v4, v5, v3}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 870
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_y_translation:I

    .line 871
    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    neg-float v5, v5

    .line 870
    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 874
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v4, Lcom/android/systemui/R$dimen;->opa_line_x_trans_bg:I

    .line 875
    invoke-direct {p0, v4}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v4

    neg-float v4, v4

    .line 874
    invoke-direct {p0, v1, v2, v4, v3}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 878
    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_x_trans_ry:I

    .line 879
    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    neg-float v5, v5

    .line 878
    invoke-direct {p0, v1, v4, v5, v3}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 880
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_y_translation:I

    .line 881
    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    .line 880
    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 884
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_x_trans_bg:I

    .line 885
    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    neg-float v5, v5

    .line 884
    invoke-direct {p0, v1, v4, v5, v3}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 888
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_x_trans_ry:I

    .line 889
    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    .line 888
    invoke-direct {p0, v1, v4, v5, v3}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 890
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_y_translation:I

    .line 891
    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    neg-float v5, v5

    .line 890
    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 894
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v4, Lcom/android/systemui/R$dimen;->opa_line_x_trans_bg:I

    .line 895
    invoke-direct {p0, v4}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v4

    .line 894
    invoke-direct {p0, v1, v2, v4, v3}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 899
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 901
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 903
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->HOME_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 905
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->HOME_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 907
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 909
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 912
    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/OpaLayout$7;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/OpaLayout$7;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 995
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    :goto_0
    if-ltz p0, :cond_1

    .line 996
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 997
    invoke-virtual {v3}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_0

    .line 999
    invoke-virtual {v3}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v0

    move-object v2, v3

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getPxVal(I)F
    .locals 0

    .line 599
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method private getRetractAnimatorSet()Landroid/util/ArraySet;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 678
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 685
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    const/16 v3, 0x12c

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 686
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 687
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 689
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 691
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    sget-object v10, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v7, 0x0

    const/16 v8, 0x32

    const/16 v9, 0x32

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 695
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 696
    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    .line 695
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 697
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 698
    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    .line 697
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 699
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 701
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 703
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    sget-object v10, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-direct/range {v5 .. v10}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 708
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 710
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 712
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 714
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 716
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    sget-object v10, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-direct/range {v5 .. v10}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 720
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 722
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 724
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 726
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 728
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v10, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-direct/range {v5 .. v10}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 732
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 734
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 736
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    sget-object v2, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 738
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    sget-object v2, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 742
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 744
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 746
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 749
    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/OpaLayout$5;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/OpaLayout$5;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 1

    .line 502
    new-instance p0, Landroid/view/RenderNodeAnimator;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 503
    invoke-virtual {p0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 504
    invoke-virtual {p0, p4}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p3

    .line 505
    invoke-virtual {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    return-object p0
.end method

.method private getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 1

    .line 514
    new-instance p0, Landroid/view/RenderNodeAnimator;

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 515
    invoke-virtual {p0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 516
    invoke-virtual {p0, p4}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p3

    .line 517
    invoke-virtual {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    return-object p0
.end method

.method private getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;
    .locals 2

    .line 549
    new-instance p0, Landroid/view/RenderNodeAnimator;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 550
    invoke-virtual {p0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 551
    invoke-virtual {p0, p2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p3

    .line 552
    invoke-virtual {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    return-object p0
.end method

.method private getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;
    .locals 2

    .line 560
    new-instance p0, Landroid/view/RenderNodeAnimator;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 561
    invoke-virtual {p0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 562
    invoke-virtual {p0, p2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p3

    .line 563
    invoke-virtual {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    return-object p0
.end method

.method private setDotsVisible()V
    .locals 4

    .line 1006
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1009
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1010
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private skipToStartingValue()V
    .locals 5

    .line 1018
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    if-ge v2, v0, :cond_0

    .line 1021
    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1022
    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1023
    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleX(F)V

    const/4 v3, 0x0

    .line 1024
    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1025
    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1026
    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1030
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1031
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1033
    iput v1, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    return-void
.end method

.method private startAll(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 586
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_0

    .line 587
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startCollapseAnimation()V
    .locals 2

    .line 487
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->allowAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 489
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->getCollapseAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    const/4 v0, 0x3

    .line 490
    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 491
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    goto :goto_0

    .line 493
    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->skipToStartingValue()V

    :goto_0
    return-void
.end method

.method private startDiamondAnimation()V
    .locals 2

    .line 453
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->allowAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 455
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->setDotsVisible()V

    .line 456
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->getDiamondAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    const/4 v0, 0x1

    .line 457
    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 458
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    goto :goto_0

    .line 460
    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->skipToStartingValue()V

    :goto_0
    return-void
.end method

.method private startLineAnimation()V
    .locals 2

    .line 476
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->allowAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 478
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->getLineAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    const/4 v0, 0x3

    .line 479
    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 480
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    goto :goto_0

    .line 482
    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->skipToStartingValue()V

    :goto_0
    return-void
.end method

.method private startRetractAnimation()V
    .locals 2

    .line 465
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->allowAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 467
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->getRetractAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    const/4 v0, 0x2

    .line 468
    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 469
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    goto :goto_0

    .line 471
    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->skipToStartingValue()V

    :goto_0
    return-void
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 2

    const-string v0, "OpaLayout"

    const-string v1, "***Called abortCurrentGesture"

    .line 420
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->abortCurrentGesture()V

    const/4 v0, 0x0

    .line 422
    iput-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    .line 423
    iput-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mLongClicked:Z

    .line 424
    iput-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondAnimationDelayed:Z

    .line 425
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 426
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 427
    iget v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 429
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$1$OpaLayout()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->startDiamondAnimation()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setOnLongClickListener$0$OpaLayout(Landroid/view/View$OnLongClickListener;Landroid/view/View;)Z
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-interface {p1, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 441
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 442
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 443
    invoke-virtual {p0}, Lcom/google/android/systemui/OpaLayout;->updateOpaLayout()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 435
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 436
    invoke-virtual {p0}, Lcom/google/android/systemui/OpaLayout;->updateOpaLayout()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 448
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 449
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 243
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 245
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mResources:Landroid/content/res/Resources;

    .line 247
    sget v0, Lcom/android/systemui/R$id;->blue:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    .line 248
    sget v0, Lcom/android/systemui/R$id;->red:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    .line 249
    sget v0, Lcom/android/systemui/R$id;->yellow:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    .line 250
    sget v0, Lcom/android/systemui/R$id;->green:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    .line 251
    sget v0, Lcom/android/systemui/R$id;->white:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    .line 252
    sget v0, Lcom/android/systemui/R$id;->white_cutout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    .line 253
    sget v0, Lcom/android/systemui/R$id;->halo:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    .line 254
    sget v0, Lcom/android/systemui/R$id;->home_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 256
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$style;->DualToneLightTheme:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 257
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$style;->DualToneDarkTheme:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 258
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    sget v3, Lcom/android/systemui/R$drawable;->halo:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v1, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/content/Context;IZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->halo_diameter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mHaloDiameter:I

    .line 267
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 268
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 269
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mOpaEnabledNeedsUpdate:Z

    .line 281
    const-class v0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 283
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/systemui/UserSettingsUtils;->load(Landroid/content/ContentResolver;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->setOpaEnabled(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 321
    iget-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mOpaEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 324
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_c

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_7

    goto/16 :goto_8

    .line 364
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcom/google/android/systemui/OpaLayout;->mTouchDownX:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 365
    iget-boolean v2, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    if-eqz v2, :cond_2

    .line 366
    invoke-static {}, Lcom/android/systemui/shared/system/QuickStepContract;->getQuickStepTouchSlopPx()I

    move-result v2

    goto :goto_0

    .line 367
    :cond_2
    invoke-static {}, Lcom/android/systemui/shared/system/QuickStepContract;->getQuickScrubTouchSlopPx()I

    move-result v2

    :goto_0
    if-le v0, v2, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v1

    .line 368
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iget v2, p0, Lcom/google/android/systemui/OpaLayout;->mTouchDownY:I

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 369
    iget-boolean v2, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    if-eqz v2, :cond_4

    .line 370
    invoke-static {}, Lcom/android/systemui/shared/system/QuickStepContract;->getQuickScrubTouchSlopPx()I

    move-result v2

    goto :goto_2

    .line 371
    :cond_4
    invoke-static {}, Lcom/android/systemui/shared/system/QuickStepContract;->getQuickStepTouchSlopPx()I

    move-result v2

    :goto_2
    if-le p1, v2, :cond_5

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    if-nez v0, :cond_6

    if-eqz v3, :cond_11

    .line 373
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/systemui/OpaLayout;->abortCurrentGesture()V

    goto/16 :goto_8

    .line 380
    :cond_7
    iget-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondAnimationDelayed:Z

    if-eqz p1, :cond_8

    .line 381
    iget-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mLongClicked:Z

    if-nez p1, :cond_b

    .line 382
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, p1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 385
    :cond_8
    iget p1, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    if-ne p1, v3, :cond_9

    const-wide/16 v2, 0x64

    .line 388
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/systemui/OpaLayout;->mStartTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    .line 389
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 390
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 391
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 392
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return v1

    .line 395
    :cond_9
    iget-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mLongClicked:Z

    if-nez p1, :cond_a

    goto :goto_4

    :cond_a
    move v3, v1

    :goto_4
    if-eqz v3, :cond_b

    .line 397
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 400
    :cond_b
    :goto_5
    iput-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    goto :goto_8

    .line 328
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mTouchDownX:I

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/systemui/OpaLayout;->mTouchDownY:I

    .line 336
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    .line 337
    iget p1, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    if-ne p1, v2, :cond_d

    .line 338
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->endCurrentAnimation()V

    move p1, v3

    goto :goto_6

    :cond_d
    return v1

    :cond_e
    move p1, v1

    .line 344
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/systemui/OpaLayout;->mStartTime:J

    .line 345
    iput-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mLongClicked:Z

    .line 346
    iput-boolean v3, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    .line 348
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 349
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 350
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 351
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {p0, v0, v4, v5}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 355
    iget-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mDelayTouchFeedback:Z

    if-eqz v0, :cond_10

    if-eqz p1, :cond_f

    goto :goto_7

    .line 359
    :cond_f
    iput-boolean v3, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondAnimationDelayed:Z

    .line 360
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondAnimation:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p0, p1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    .line 356
    :cond_10
    :goto_7
    iput-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondAnimationDelayed:Z

    .line 357
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->startDiamondAnimation()V

    :cond_11
    :goto_8
    return v1
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    .line 288
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 289
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mWindowVisible:Z

    if-nez p1, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/google/android/systemui/OpaLayout;->updateOpaLayout()V

    goto :goto_1

    .line 294
    :cond_1
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->cancelCurrentAnimation()V

    .line 295
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->skipToStartingValue()V

    :goto_1
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 0

    .line 408
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 409
    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 1

    .line 1056
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 1063
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 1064
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 1066
    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setDarkIntensity(F)V

    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .locals 1

    .line 1071
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setDelayTouchFeedback(Z)V

    .line 1072
    iput-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mDelayTouchFeedback:Z

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 415
    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    new-instance v1, Lcom/google/android/systemui/-$$Lambda$OpaLayout$o_3Yb82bT_aVEO6XXM_b1dhZ-9o;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/-$$Lambda$OpaLayout$o_3Yb82bT_aVEO6XXM_b1dhZ-9o;-><init>(Lcom/google/android/systemui/OpaLayout;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setOpaEnabled(Z)V
    .locals 2

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting opa enabled to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpaLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iput-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mOpaEnabled:Z

    const/4 p1, 0x0

    .line 940
    iput-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mOpaEnabledNeedsUpdate:Z

    .line 941
    invoke-virtual {p0}, Lcom/google/android/systemui/OpaLayout;->updateOpaLayout()V

    return-void
.end method

.method public setVertical(Z)V
    .locals 1

    .line 1038
    iput-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    .line 1039
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVertical(Z)V

    .line 1041
    iget-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    if-eqz p1, :cond_0

    .line 1042
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    .line 1043
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    .line 1044
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    .line 1045
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    goto :goto_0

    .line 1047
    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    .line 1048
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    .line 1049
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    .line 1050
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    :goto_0
    return-void
.end method

.method public updateOpaLayout()V
    .locals 4

    .line 946
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    .line 947
    iget-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mOpaEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 948
    :goto_0
    iget-object v3, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 949
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    move v3, v2

    goto :goto_2

    .line 950
    :cond_2
    iget v3, p0, Lcom/google/android/systemui/OpaLayout;->mHaloDiameter:I

    :goto_2
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eqz v0, :cond_3

    goto :goto_3

    .line 951
    :cond_3
    iget v2, p0, Lcom/google/android/systemui/OpaLayout;->mHaloDiameter:I

    :goto_3
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 952
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 953
    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
