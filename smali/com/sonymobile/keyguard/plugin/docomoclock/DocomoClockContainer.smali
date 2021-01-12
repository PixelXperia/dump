.class public Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;
.super Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;
.source "DocomoClockContainer.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$Patterns;
    }
.end annotation


# static fields
.field private static mLockscreenMascotReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAmPm:Landroid/widget/TextClock;

.field private mBootCompleted:Z

.field private mCharalayout:Lcom/android/keyguard/MachiCharaWidget;

.field private mClockView:Landroid/widget/TextClock;

.field private mDateView:Landroid/widget/TextClock;

.field private mHandler:Landroid/os/Handler;

.field private mIsTicking:Z

.field private mMicImageView:Landroid/widget/ImageView;

.field private mTimeEventReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

.field private final mUpdateMicIconRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

    .line 84
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mTimeEventReceiver:Landroid/content/BroadcastReceiver;

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mBootCompleted:Z

    .line 87
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mIsTicking:Z

    .line 90
    new-instance p1, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$1;

    invoke-direct {p1, p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$1;-><init>(Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;)V

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mUpdateMicIconRunnable:Ljava/lang/Runnable;

    .line 116
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->updateMicImage()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->requestMachiCharaViewToMascotApp()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;ILjava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->launchMascotApp(ILjava/lang/String;)V

    return-void
.end method

.method private isMascotApplication()Z
    .locals 2

    .line 485
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    const-string v0, "com.nttdocomo.android.mascot"

    const/16 v1, 0x80

    .line 487
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 488
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private launchMascotApp(ILjava/lang/String;)V
    .locals 2

    .line 294
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 295
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.nttdocomo.android.mascot"

    const-string v1, "com.nttdocomo.android.mascot.application.MascotApplicationProxy"

    .line 297
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10200000

    .line 298
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string p2, "eventType"

    .line 301
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p1, 0x1

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private registerLockscreenMascotReceiver()V
    .locals 2

    .line 255
    sget-object v0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mLockscreenMascotReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$3;-><init>(Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;)V

    sput-object v0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mLockscreenMascotReceiver:Landroid/content/BroadcastReceiver;

    .line 287
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.nttdocomo.android.mascot.widget.LockScreenMascotWidget.ACTION_SCREEN_UNLOCK"

    .line 288
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mLockscreenMascotReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private registerTimeEventReceiver()V
    .locals 4

    .line 363
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mTimeEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$5;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$5;-><init>(Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mTimeEventReceiver:Landroid/content/BroadcastReceiver;

    .line 371
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 372
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 373
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 374
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mTimeEventReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private registerTimeSettingsChangeObserver()V
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$4;-><init>(Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

    .line 340
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 341
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private requestMachiCharaViewToMascotApp()V
    .locals 3

    const-string v0, "DocomoLockScreen"

    const-wide/16 v1, 0xc8

    .line 219
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "DocomoClockContainer.requestMachiCharaViewToMascotApp():InterruptedException"

    .line 221
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.policy.impl.keyguard.ACTION_SCREEN_DISPLAY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v2, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p0, "DocomoClockContainer.requestMachiCharaViewToMascotApp():IllegalStateException"

    .line 230
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private unregisterLockscreenMascotReceiver()V
    .locals 3

    const-string v0, "DocomoLockScreen"

    .line 308
    :try_start_0
    sget-object v1, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mLockscreenMascotReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 309
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mLockscreenMascotReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    .line 310
    sput-object p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mLockscreenMascotReceiver:Landroid/content/BroadcastReceiver;

    .line 311
    sget-boolean p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "DocomoClockContainer.unregisterLockscreenMascotReceiver(): unregist"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DocomoClockContainer.unregisterLockscreenMascotReceiver(): exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 315
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private unregisterTimeEventReceiver()V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mTimeEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mTimeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 382
    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mTimeEventReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private unregisterTimeSettingsChangeObserver()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 350
    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mTimeSettingsChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private updateAmPmVisibility()V
    .locals 3

    .line 413
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 414
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mAmPm:Landroid/widget/TextClock;

    invoke-virtual {p0, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    goto :goto_1

    .line 416
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$integer;->somc_digital_clock_max_ampm_chars:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 418
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mAmPm:Landroid/widget/TextClock;

    invoke-virtual {v2}, Landroid/widget/TextClock;->length()I

    move-result v2

    if-le v2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 419
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mAmPm:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 420
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mAmPm:Landroid/widget/TextClock;

    const-string v0, "a"

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private updateMicImage()V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mCharalayout:Lcom/android/keyguard/MachiCharaWidget;

    if-eqz v0, :cond_1

    .line 464
    iget-boolean v1, v0, Lcom/android/keyguard/MachiCharaWidget;->mUpdateViewFlg:Z

    if-nez v1, :cond_1

    const/16 v1, 0x8

    .line 466
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mMicImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 469
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->isMascotApplication()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mMicImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mMicImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 472
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mMicImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateThemeColors()V
    .locals 4

    .line 515
    const-class v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    .line 516
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 518
    sget v1, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_solid_foreground:I

    const/4 v2, 0x0

    .line 519
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    const v1, 0xffffff

    and-int v2, v0, v1

    if-ne v2, v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mMicImageView:Landroid/widget/ImageView;

    .line 524
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->docomo_clock_ic_d_mic_lock:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 523
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mMicImageView:Landroid/widget/ImageView;

    .line 528
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->docomo_clock_ic_d_mic_lock_inverse:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 527
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 531
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 532
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mDateView:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 533
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mAmPm:Landroid/widget/TextClock;

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setTextColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    .line 511
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->refreshTime()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 153
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 154
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->unregisterLockscreenMascotReceiver()V

    .line 155
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->registerLockscreenMascotReceiver()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mMicImageView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->isMascotApplication()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    const-string v0, "LOCK_CLICK_MASCOT"

    .line 244
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->launchMascotApp(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 121
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 122
    sget v0, Lcom/android/systemui/R$id;->docomo_clock_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mClockView:Landroid/widget/TextClock;

    .line 123
    sget v0, Lcom/android/systemui/R$id;->docomo_date_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mDateView:Landroid/widget/TextClock;

    .line 124
    sget v0, Lcom/android/systemui/R$id;->docomo_digital_clock_am_pm:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mAmPm:Landroid/widget/TextClock;

    .line 125
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mClockView:Landroid/widget/TextClock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setElegantTextHeight(Z)V

    .line 127
    sget v0, Lcom/android/systemui/R$id;->mic_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mMicImageView:Landroid/widget/ImageView;

    .line 131
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mMicImageView:Landroid/widget/ImageView;

    .line 137
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->docomo_clock_ic_d_mic_lock:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mMicImageView:Landroid/widget/ImageView;

    .line 141
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->docomo_clock_ic_d_mic_lock_inverse:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mMicImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->updateThemeColors()V

    .line 147
    sget v0, Lcom/android/systemui/R$id;->chara:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/MachiCharaWidget;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mCharalayout:Lcom/android/keyguard/MachiCharaWidget;

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public refreshTime()V
    .locals 4

    .line 387
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$Patterns;->update(Landroid/content/Context;Z)V

    .line 389
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mDateView:Landroid/widget/TextClock;

    sget-object v2, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mDateView:Landroid/widget/TextClock;

    sget-object v2, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mClockView:Landroid/widget/TextClock;

    sget-object v2, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mClockView:Landroid/widget/TextClock;

    sget-object v2, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mClockView:Landroid/widget/TextClock;

    .line 397
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->docomo_widget_big_font_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 396
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextClock;->setTextSize(IF)V

    .line 399
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mDateView:Landroid/widget/TextClock;

    .line 400
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->docomo_widget_label_font_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 399
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextClock;->setTextSize(IF)V

    .line 402
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mAmPm:Landroid/widget/TextClock;

    .line 403
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->widget_label_font_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 402
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextClock;->setTextSize(IF)V

    .line 405
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->updateAmPmVisibility()V

    return-void
.end method

.method public setDoze()V
    .locals 3

    .line 498
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mClockView:Landroid/widget/TextClock;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 499
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mDateView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 500
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mAmPm:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 501
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mUpdateMicIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 502
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mCharalayout:Lcom/android/keyguard/MachiCharaWidget;

    invoke-virtual {v0}, Lcom/android/keyguard/MachiCharaWidget;->setDoze()V

    .line 503
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mMicImageView:Landroid/widget/ImageView;

    .line 504
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->docomo_clock_ic_d_mic_lock:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 503
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setNextAlarmText(Ljava/lang/String;)V
    .locals 0

    .line 237
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->refreshTime()V

    return-void
.end method

.method public startClockTicking()V
    .locals 3

    .line 161
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->isMascotApplication()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mCharalayout:Lcom/android/keyguard/MachiCharaWidget;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mMicImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    :cond_1
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mIsTicking:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 171
    iput-boolean v1, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mIsTicking:Z

    .line 172
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->registerTimeSettingsChangeObserver()V

    .line 173
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->registerTimeEventReceiver()V

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->refreshTime()V

    const/4 v0, 0x0

    const-string v2, "sys.boot_completed"

    .line 179
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mBootCompleted:Z

    .line 180
    iget-boolean v2, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mBootCompleted:Z

    if-ne v2, v1, :cond_3

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->isMascotApplication()Z

    move-result v2

    if-ne v2, v1, :cond_3

    .line 181
    new-instance v1, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$2;-><init>(Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;)V

    .line 187
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mCharalayout:Lcom/android/keyguard/MachiCharaWidget;

    if-eqz v1, :cond_4

    .line 192
    iput-boolean v0, v1, Lcom/android/keyguard/MachiCharaWidget;->mUpdateViewFlg:Z

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mUpdateMicIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mUpdateMicIconRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopClockTicking()V
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mIsTicking:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mIsTicking:Z

    .line 202
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->unregisterTimeSettingsChangeObserver()V

    .line 203
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->unregisterTimeEventReceiver()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->mUpdateMicIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
