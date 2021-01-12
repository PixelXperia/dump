.class public Lcom/sonymobile/keyguard/aod/NotificationAnimation;
.super Ljava/lang/Object;
.source "NotificationAnimation.java"


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mCanceled:Z

.field private mHandler:Landroid/os/Handler;

.field private mLargeRepeatCount:I

.field private mNewNotificationRunnable:Ljava/lang/Runnable;

.field private mRepeatCount:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mRepeatCount:I

    .line 28
    iput v0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mLargeRepeatCount:I

    .line 35
    new-instance v0, Lcom/sonymobile/keyguard/aod/NotificationAnimation$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/aod/NotificationAnimation$1;-><init>(Lcom/sonymobile/keyguard/aod/NotificationAnimation;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mNewNotificationRunnable:Ljava/lang/Runnable;

    .line 48
    sget v0, Lcom/android/systemui/R$anim;->somc_aod_notification_icon_new:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mAnimator:Landroid/animation/Animator;

    .line 50
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mAnimator:Landroid/animation/Animator;

    new-instance v0, Lcom/sonymobile/keyguard/aod/NotificationAnimation$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/aod/NotificationAnimation$2;-><init>(Lcom/sonymobile/keyguard/aod/NotificationAnimation;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/aod/NotificationAnimation;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mRepeatCount:I

    return p0
.end method

.method static synthetic access$002(Lcom/sonymobile/keyguard/aod/NotificationAnimation;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mRepeatCount:I

    return p1
.end method

.method static synthetic access$008(Lcom/sonymobile/keyguard/aod/NotificationAnimation;)I
    .locals 2

    .line 18
    iget v0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mRepeatCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mRepeatCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/aod/NotificationAnimation;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mCanceled:Z

    return p0
.end method

.method static synthetic access$102(Lcom/sonymobile/keyguard/aod/NotificationAnimation;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mCanceled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonymobile/keyguard/aod/NotificationAnimation;)Landroid/view/View;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mTargetView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonymobile/keyguard/aod/NotificationAnimation;)Landroid/animation/Animator;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonymobile/keyguard/aod/NotificationAnimation;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mLargeRepeatCount:I

    return p0
.end method

.method static synthetic access$408(Lcom/sonymobile/keyguard/aod/NotificationAnimation;)I
    .locals 2

    .line 18
    iget v0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mLargeRepeatCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mLargeRepeatCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/sonymobile/keyguard/aod/NotificationAnimation;)Ljava/lang/Runnable;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mNewNotificationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonymobile/keyguard/aod/NotificationAnimation;)Landroid/os/Handler;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private cancelAnimator()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mNewNotificationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mRepeatCount:I

    .line 102
    iput v0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mLargeRepeatCount:I

    .line 103
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mCanceled:Z

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mTargetView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public startNotificationAnimation(Landroid/view/View;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->cancelAnimator()V

    .line 83
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mTargetView:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 85
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->mNewNotificationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopNotificationAnimation()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->cancelAnimator()V

    return-void
.end method
