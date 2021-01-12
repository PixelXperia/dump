.class public Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;
.super Landroid/view/View;
.source "SecondHand.java"


# instance fields
.field private mCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;

.field private mClearRunnable:Ljava/lang/Runnable;

.field private mDozing:Z

.field private mHandler:Landroid/os/Handler;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mHideRunnable:Ljava/lang/Runnable;

.field private mHideWoAnimRunnable:Ljava/lang/Runnable;

.field private mIsPicker:Z

.field private mIsTicking:Z

.field private mLockscreenLoopsController:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

.field private mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mPaintDot:Landroid/graphics/Paint;

.field private mPaintLoop:Landroid/graphics/Paint;

.field private final mSecondRunnable:Ljava/lang/Runnable;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowRunnable:Ljava/lang/Runnable;

.field private mSonyClockLoops:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;

.field private final mTime:Ljava/util/Calendar;

.field private final mTimeEventReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 161
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mTime:Ljava/util/Calendar;

    .line 49
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mPaintLoop:Landroid/graphics/Paint;

    .line 53
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mPaintDot:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 61
    iput-boolean p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mIsTicking:Z

    .line 63
    iput-boolean p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mDozing:Z

    .line 65
    new-instance p3, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$1;

    invoke-direct {p3, p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$1;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)V

    iput-object p3, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mShowRunnable:Ljava/lang/Runnable;

    .line 74
    new-instance p3, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$2;

    invoke-direct {p3, p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$2;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)V

    iput-object p3, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mHideRunnable:Ljava/lang/Runnable;

    .line 83
    new-instance p3, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$3;

    invoke-direct {p3, p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$3;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)V

    iput-object p3, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mHideWoAnimRunnable:Ljava/lang/Runnable;

    .line 90
    new-instance p3, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$4;

    invoke-direct {p3, p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$4;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)V

    iput-object p3, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mClearRunnable:Ljava/lang/Runnable;

    .line 97
    new-instance p3, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$5;

    invoke-direct {p3, p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$5;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)V

    iput-object p3, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mTimeEventReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    iput-boolean p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mIsPicker:Z

    .line 114
    new-instance p2, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$6;

    invoke-direct {p2, p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$6;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)V

    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;

    .line 138
    new-instance p2, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$7;

    invoke-direct {p2, p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$7;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)V

    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mSecondRunnable:Ljava/lang/Runnable;

    .line 162
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->setupPaint()V

    .line 163
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->updateThemeColors()V

    .line 164
    sget p2, Lcom/android/systemui/R$anim;->somc_sony_clock_loops_show:I

    .line 165
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mShowAnimation:Landroid/view/animation/Animation;

    .line 166
    sget p2, Lcom/android/systemui/R$anim;->somc_sony_clock_loops_hide:I

    .line 167
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mHideAnimation:Landroid/view/animation/Animation;

    .line 169
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mShowAnimation:Landroid/view/animation/Animation;

    new-instance p3, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$8;

    invoke-direct {p3, p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$8;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)V

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 180
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mHideAnimation:Landroid/view/animation/Animation;

    new-instance p3, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$9;

    invoke-direct {p3, p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$9;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)V

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 p2, 0x4

    .line 191
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    const-class p2, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mLockscreenLoopsController:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    .line 194
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)Landroid/view/animation/Animation;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mShowAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)Landroid/view/animation/Animation;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mHideAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->setTimeZone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->updateTime()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->doShow()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->doHide(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->startClockTicking()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)Ljava/lang/Runnable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mSecondRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method private doHide(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 326
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mClearRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 329
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mClearRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mHideWoAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private doShow()V
    .locals 2

    .line 318
    invoke-static {}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->isReadyForShowAssistIcon()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mClearRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 320
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private dpToPx(I)I
    .locals 0

    int-to-float p0, p1

    .line 244
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private registerTimeEventReceiver()V
    .locals 4

    .line 335
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    .line 336
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 337
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mTimeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private setTimeZone(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 287
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 289
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mTime:Ljava/util/Calendar;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :goto_0
    return-void
.end method

.method private setupPaint()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mPaintLoop:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 249
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mPaintLoop:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 250
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mPaintLoop:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->dpToPx(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 251
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mPaintDot:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 252
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mPaintDot:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private startClockTicking()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mSonyClockLoops:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->startClockTicking(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;)V

    :cond_0
    return-void
.end method

.method private unregisterTimeEventReceiver()V
    .locals 1

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mTimeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateSecondsHand(Landroid/graphics/Canvas;III)V
    .locals 9

    .line 269
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mTime:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-double v1, p2

    int-to-double v3, p4

    mul-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, -0x5a

    int-to-double v5, v0

    .line 272
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    add-double/2addr v1, v7

    double-to-float p2, v1

    int-to-double p3, p3

    .line 275
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v3, v0

    add-double/2addr p3, v3

    double-to-float p3, p3

    const/4 p4, 0x5

    .line 276
    invoke-direct {p0, p4}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->dpToPx(I)I

    move-result p4

    int-to-float p4, p4

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mPaintDot:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private updateThemeColors()V
    .locals 3

    .line 304
    const-class v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    .line 305
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    sget v1, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_solid_foreground:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 313
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mPaintLoop:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 314
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mPaintDot:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private updateTime()V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 281
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mSonyClockLoops:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mTime:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->refresh(Ljava/util/Calendar;)V

    .line 282
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 257
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 260
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    .line 261
    invoke-direct {p0, v3}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->dpToPx(I)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->dpToPx(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v3, v0

    int-to-float v4, v1

    int-to-float v5, v2

    .line 262
    iget-object v6, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mPaintLoop:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 263
    iget-boolean v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mDozing:Z

    if-nez v3, :cond_0

    .line 264
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->updateSecondsHand(Landroid/graphics/Canvas;III)V

    :cond_0
    return-void
.end method

.method public setDoze()V
    .locals 2

    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mDozing:Z

    .line 297
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mPaintLoop:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 298
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mPaintDot:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 300
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPicker(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mIsPicker:Z

    return-void
.end method

.method public startClockTicking(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;)V
    .locals 3

    .line 208
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mSonyClockLoops:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;

    .line 209
    iget-boolean p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mIsTicking:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 210
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mIsTicking:Z

    .line 211
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->registerTimeEventReceiver()V

    .line 212
    iget-boolean p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mIsPicker:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mLockscreenLoopsController:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-virtual {p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mLockscreenLoopsController:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;

    iget-boolean v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mDozing:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->registerCallback(ILcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;Z)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 p1, 0x0

    .line 220
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->setTimeZone(Ljava/lang/String;)V

    .line 221
    iget-boolean p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mDozing:Z

    if-nez p1, :cond_1

    .line 222
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mSecondRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->updateTime()V

    return-void
.end method

.method public stopClockTicking()V
    .locals 3

    .line 229
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mIsTicking:Z

    if-eqz v0, :cond_2

    .line 230
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mIsPicker:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mLockscreenLoopsController:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    iget-boolean v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mDozing:Z

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->unregisterCallback(IZ)V

    .line 234
    :cond_0
    iput-boolean v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mIsTicking:Z

    .line 235
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->unregisterTimeEventReceiver()V

    .line 236
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mDozing:Z

    if-nez v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->mSecondRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    :cond_1
    invoke-direct {p0, v1}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->doHide(Z)V

    :cond_2
    return-void
.end method
