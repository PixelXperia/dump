.class public Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;
.super Landroid/widget/FrameLayout;
.source "SonyClockDigit.java"


# instance fields
.field private mCurrentDigit:C

.field private mCurrentDisplay:Landroid/widget/TextView;

.field private mDigitAnimationDuration:I

.field private mInInterpolator:Landroid/view/animation/Interpolator;

.field private mOldDisplay:Landroid/widget/TextView;

.field private mPlaceHolderDisplay:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0x30

    .line 33
    iput-char p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mCurrentDigit:C

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mOldDisplay:Landroid/widget/TextView;

    return-object p0
.end method

.method private hasDigitViews()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mCurrentDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mOldDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mPlaceHolderDisplay:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected final onFinishInflate()V
    .locals 2

    .line 81
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 82
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    sget v1, Lcom/android/systemui/R$integer;->somc_sony_clock_digit_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mDigitAnimationDuration:I

    .line 86
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$interpolator;->somc_sony_clock_digit_animation_interpolator:I

    .line 85
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mInInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public final setDigitViews(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 100
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 101
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mCurrentDisplay:Landroid/widget/TextView;

    :cond_0
    if-eqz p2, :cond_1

    .line 103
    instance-of p1, p2, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 104
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mOldDisplay:Landroid/widget/TextView;

    :cond_1
    if-eqz p3, :cond_2

    .line 106
    instance-of p1, p3, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 107
    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mPlaceHolderDisplay:Landroid/widget/TextView;

    :cond_2
    return-void
.end method

.method public final updateDigit(CZ)V
    .locals 8

    .line 118
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->hasDigitViews()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 122
    iget-char p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mCurrentDigit:C

    if-eq p1, p2, :cond_1

    .line 123
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mCurrentDisplay:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mOldDisplay:Landroid/widget/TextView;

    iget-char v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mCurrentDigit:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mOldDisplay:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mPlaceHolderDisplay:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    .line 128
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mOldDisplay:Landroid/widget/TextView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v4, v3, v0

    neg-int v5, p2

    int-to-float v5, v5

    const/4 v6, 0x1

    aput v5, v3, v6

    const-string v5, "translationX"

    invoke-static {v1, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 130
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mCurrentDisplay:Landroid/widget/TextView;

    new-array v7, v2, [F

    int-to-float p2, p2

    aput p2, v7, v0

    aput v4, v7, v6

    invoke-static {v3, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 133
    new-instance v3, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit$1;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 140
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 141
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 143
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v0

    aput-object p2, v2, v6

    .line 144
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 145
    iget p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mDigitAnimationDuration:I

    int-to-long v0, p2

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 147
    :cond_1
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mCurrentDisplay:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mOldDisplay:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mOldDisplay:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :goto_0
    iput-char p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mCurrentDigit:C

    return-void
.end method

.method public updateThemeColor(I)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mCurrentDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mOldDisplay:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
