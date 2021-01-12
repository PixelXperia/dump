.class public Lcom/sonymobile/keyguard/aod/AodView;
.super Landroid/widget/LinearLayout;
.source "AodView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/aod/AodView$onDoubleTapAmbientListener;,
        Lcom/sonymobile/keyguard/aod/AodView$UserChangeCallBack;
    }
.end annotation


# static fields
.field private static LAYOUT_MOVE_POSITIONS:I = 0x3

.field private static LAYOUT_MOVE_TIMEOUT:J = 0x36ee80L


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAmbientTopBottomMergin:I

.field private mClockPluginView:Landroid/view/ViewGroup;

.field private mClockView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

.field private mFingerFBView:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

.field private mIsAlwaysOnAvailable:Z

.field private mIsDozing:Z

.field private mKeyguardPluginFactoryLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

.field private mLayoutMoveCount:I

.field private mListener:Lcom/sonymobile/keyguard/aod/AodView$onDoubleTapAmbientListener;

.field private mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private mMusicInfoView:Lcom/sonymobile/keyguard/aod/MusicInfoView;

.field private mNotificationsBatteryView:Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;

.field private mPhotoPlaybackView:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStickerView:Lcom/sonymobile/keyguard/aod/StickerView;

.field private mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mViewItems:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 70
    iput p2, p0, Lcom/sonymobile/keyguard/aod/AodView;->mLayoutMoveCount:I

    const/4 p2, 0x0

    .line 84
    iput-object p2, p0, Lcom/sonymobile/keyguard/aod/AodView;->mListener:Lcom/sonymobile/keyguard/aod/AodView$onDoubleTapAmbientListener;

    .line 88
    new-instance p2, Lcom/sonymobile/keyguard/aod/AodView$1;

    invoke-direct {p2, p0}, Lcom/sonymobile/keyguard/aod/AodView$1;-><init>(Lcom/sonymobile/keyguard/aod/AodView;)V

    iput-object p2, p0, Lcom/sonymobile/keyguard/aod/AodView;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 97
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    invoke-static {p2, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->createKeyguardPluginFactoryForUser(ILandroid/content/Context;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/keyguard/aod/AodView;->mKeyguardPluginFactoryLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    .line 100
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mContext:Landroid/content/Context;

    const-string p2, "alarm"

    .line 101
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/sonymobile/keyguard/aod/AodView;->mAlarmManager:Landroid/app/AlarmManager;

    .line 103
    new-instance p2, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {p2}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailable()Z

    move-result p2

    iput-boolean p2, p0, Lcom/sonymobile/keyguard/aod/AodView;->mIsAlwaysOnAvailable:Z

    .line 105
    iget-boolean p2, p0, Lcom/sonymobile/keyguard/aod/AodView;->mIsAlwaysOnAvailable:Z

    if-eqz p2, :cond_0

    .line 106
    new-instance p2, Lcom/android/systemui/util/AlarmTimeout;

    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v1, Lcom/sonymobile/keyguard/aod/-$$Lambda$AodView$49Q9MWfXDo0DoKPEl777Y7_BRJg;

    invoke-direct {v1, p0}, Lcom/sonymobile/keyguard/aod/-$$Lambda$AodView$49Q9MWfXDo0DoKPEl777Y7_BRJg;-><init>(Lcom/sonymobile/keyguard/aod/AodView;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const-string v3, "aod_layout_move"

    invoke-direct {p2, v0, v1, v3, v2}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/sonymobile/keyguard/aod/AodView;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    .line 109
    :cond_0
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/aod/AodView;->registerCallbacks(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 110
    const-class p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p2, p0, Lcom/sonymobile/keyguard/aod/AodView;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {p1, p2}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->ambient_top_bottom_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mAmbientTopBottomMergin:I

    .line 113
    const-class p1, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 114
    new-instance p1, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    sget-object v2, Lcom/sonymobile/keyguard/aod/-$$Lambda$AodView$f9WBICLDouFUfhQMT-K67e_JxNk;->INSTANCE:Lcom/sonymobile/keyguard/aod/-$$Lambda$AodView$f9WBICLDouFUfhQMT-K67e_JxNk;

    new-instance v3, Lcom/sonymobile/keyguard/aod/-$$Lambda$AodView$vR4FR8KIvj6j8PdUQDkVyrPMktk;

    invoke-direct {v3, p0}, Lcom/sonymobile/keyguard/aod/-$$Lambda$AodView$vR4FR8KIvj6j8PdUQDkVyrPMktk;-><init>(Lcom/sonymobile/keyguard/aod/AodView;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;)V

    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/keyguard/aod/AodView;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mKeyguardPluginFactoryLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/aod/AodView;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    const-string p0, ""

    return-object p0

    .line 285
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    invoke-static {p1, p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "EHm"

    goto :goto_0

    :cond_1
    const-string p0, "Ehma"

    .line 288
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 289
    invoke-virtual {p2}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$49Q9MWfXDo0DoKPEl777Y7_BRJg(Lcom/sonymobile/keyguard/aod/AodView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/AodView;->onLayoutMoveTimeout()V

    return-void
.end method

.method static synthetic lambda$new$0(Z)V
    .locals 0

    return-void
.end method

.method private onLayoutMoveTimeout()V
    .locals 3

    .line 299
    iget v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mLayoutMoveCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mLayoutMoveCount:I

    .line 300
    iget v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mLayoutMoveCount:I

    sget v1, Lcom/sonymobile/keyguard/aod/AodView;->LAYOUT_MOVE_POSITIONS:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 301
    iput v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mLayoutMoveCount:I

    .line 303
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/AodView;->setGravity()V

    .line 304
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    sget-wide v0, Lcom/sonymobile/keyguard/aod/AodView;->LAYOUT_MOVE_TIMEOUT:J

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)Z

    return-void
.end method

.method private onParentDoubleTap()V
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mFingerFBView:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->onParentDoubleTap()V

    return-void
.end method

.method private registerCallbacks(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 316
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/aod/AodView;->getUpdateMonitorCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private setAlarm()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, -0x2

    .line 272
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/sonymobile/keyguard/aod/AodView;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v0

    .line 275
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mClockPluginView:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->setNextAlarm(Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mClockPluginView:Landroid/view/ViewGroup;

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->setNextAlarm(Landroid/view/ViewGroup;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setGravity()V
    .locals 4

    .line 220
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 222
    iget-boolean v1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mIsAlwaysOnAvailable:Z

    const/16 v2, 0x11

    if-eqz v1, :cond_2

    .line 223
    iget v1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mLayoutMoveCount:I

    sget v3, Lcom/sonymobile/keyguard/aod/AodView;->LAYOUT_MOVE_POSITIONS:I

    rem-int/2addr v1, v3

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/16 v1, 0x50

    .line 232
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 233
    iget v1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mAmbientTopBottomMergin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x30

    .line 228
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 229
    iget v1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mAmbientTopBottomMergin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 225
    :cond_1
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 237
    :cond_2
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 239
    :goto_0
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mViewItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mClockPluginView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mIsDozing:Z

    if-eqz p0, :cond_0

    .line 294
    check-cast v0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->dozeTimeTick()V

    :cond_0
    return-void
.end method

.method public getClockViewPosition()Landroid/graphics/Rect;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 248
    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mClockView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 249
    sget v3, Lcom/android/systemui/R$id;->somc_keyguard_clockplugin_scale_container:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 253
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 254
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    move v3, v1

    .line 257
    :goto_0
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mClockView:Landroid/widget/LinearLayout;

    const-string v4, "main_clock"

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 259
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 260
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 261
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v1

    move v1, v3

    goto :goto_1

    :cond_2
    move p0, v2

    move v1, p0

    .line 265
    :goto_1
    aget v3, v0, v2

    add-int/2addr v3, v1

    const/4 v1, 0x1

    .line 266
    aget v4, v0, v1

    add-int/2addr v4, p0

    .line 267
    new-instance p0, Landroid/graphics/Rect;

    aget v2, v0, v2

    aget v0, v0, v1

    invoke-direct {p0, v2, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method protected getUpdateMonitorCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Lcom/sonymobile/keyguard/aod/AodView$UserChangeCallBack;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/aod/AodView$UserChangeCallBack;-><init>(Lcom/sonymobile/keyguard/aod/AodView;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 323
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object p0
.end method

.method public synthetic lambda$new$1$AodView()Z
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mListener:Lcom/sonymobile/keyguard/aod/AodView$onDoubleTapAmbientListener;

    invoke-interface {p0}, Lcom/sonymobile/keyguard/aod/AodView$onDoubleTapAmbientListener;->onDoubleTap()V

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$setDozing$2$AodView()V
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "DOUBLE_TAP_TO_AMBIENT"

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/AodView;->onParentDoubleTap()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 131
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 133
    sget v0, Lcom/android/systemui/R$id;->aod_view_items:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mViewItems:Landroid/widget/LinearLayout;

    .line 134
    sget v0, Lcom/android/systemui/R$id;->aod_clock_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mClockView:Landroid/widget/LinearLayout;

    .line 135
    sget v0, Lcom/android/systemui/R$id;->aod_notifications_battery_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mNotificationsBatteryView:Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;

    .line 136
    sget v0, Lcom/android/systemui/R$id;->aod_music_info_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/aod/MusicInfoView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mMusicInfoView:Lcom/sonymobile/keyguard/aod/MusicInfoView;

    .line 137
    sget v0, Lcom/android/systemui/R$id;->aod_sticker_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/aod/StickerView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mStickerView:Lcom/sonymobile/keyguard/aod/StickerView;

    .line 138
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mIsAlwaysOnAvailable:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    sget-wide v1, Lcom/sonymobile/keyguard/aod/AodView;->LAYOUT_MOVE_TIMEOUT:J

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)Z

    .line 141
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->aod_fingerprint_feedback_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mFingerFBView:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    .line 142
    sget v0, Lcom/android/systemui/R$id;->aod_photo_playback_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mPhotoPlaybackView:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    .line 143
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mPhotoPlaybackView:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mFingerFBView:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->setFFView(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;)V

    .line 144
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mPhotoPlaybackView:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mMusicInfoView:Lcom/sonymobile/keyguard/aod/MusicInfoView;

    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mStickerView:Lcom/sonymobile/keyguard/aod/StickerView;

    invoke-virtual {v0, v1, p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->setMusicInfoAndStickerView(Lcom/sonymobile/keyguard/aod/MusicInfoView;Lcom/sonymobile/keyguard/aod/StickerView;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onUpdateNotifications()V
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mNotificationsBatteryView:Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->onUpdateNotifications()V

    return-void
.end method

.method public setDozing(Z)V
    .locals 3

    .line 152
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mIsDozing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 155
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mIsDozing:Z

    const/4 v0, 0x4

    if-eqz p1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mMusicInfoView:Lcom/sonymobile/keyguard/aod/MusicInfoView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mStickerView:Lcom/sonymobile/keyguard/aod/StickerView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mKeyguardPluginFactoryLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->refreshLoader()Z

    .line 161
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mKeyguardPluginFactoryLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->createKeyguardClockView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 163
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/AodView;->setGravity()V

    const/4 v1, 0x0

    .line 164
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v0, :cond_1

    .line 166
    iget-object v2, p0, Lcom/sonymobile/keyguard/aod/AodView;->mClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 167
    iput-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mClockPluginView:Landroid/view/ViewGroup;

    .line 168
    instance-of v1, v0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    if-eqz v1, :cond_1

    .line 169
    check-cast v0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->setDoze()V

    .line 170
    invoke-interface {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->startClockTicking()V

    .line 171
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/AodView;->setAlarm()V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/aod/AodView;->updateMediaMetaData(Landroid/media/MediaMetadata;)V

    .line 175
    new-instance v0, Lcom/sonymobile/keyguard/aod/-$$Lambda$AodView$f3d1WCC5Mo2R1N6BFwlFKrqfi8I;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/aod/-$$Lambda$AodView$f3d1WCC5Mo2R1N6BFwlFKrqfi8I;-><init>(Lcom/sonymobile/keyguard/aod/AodView;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/aod/AodView;->setOnDoubleTapListener(Lcom/sonymobile/keyguard/aod/AodView$onDoubleTapAmbientListener;)V

    goto :goto_0

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mClockPluginView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    instance-of v2, v1, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    if-eqz v2, :cond_3

    .line 181
    check-cast v1, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    invoke-interface {v1}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->stopClockTicking()V

    .line 182
    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mClockView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sonymobile/keyguard/aod/AodView;->mClockPluginView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 183
    iput-object v1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mClockPluginView:Landroid/view/ViewGroup;

    .line 185
    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mNotificationsBatteryView:Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->setDozing(Z)V

    .line 188
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mStickerView:Lcom/sonymobile/keyguard/aod/StickerView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/aod/StickerView;->setDozing(Z)V

    .line 189
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mPhotoPlaybackView:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->setDozing(Z)V

    return-void
.end method

.method public setNotificationData(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)V
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mNotificationsBatteryView:Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;

    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->setNotificationData(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)V

    return-void
.end method

.method public setOnDoubleTapListener(Lcom/sonymobile/keyguard/aod/AodView$onDoubleTapAmbientListener;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mListener:Lcom/sonymobile/keyguard/aod/AodView$onDoubleTapAmbientListener;

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public updateMediaMetaData(Landroid/media/MediaMetadata;)V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mMusicInfoView:Lcom/sonymobile/keyguard/aod/MusicInfoView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/aod/MusicInfoView;->updateMediaMetaData(Landroid/media/MediaMetadata;)Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 199
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mStickerView:Lcom/sonymobile/keyguard/aod/StickerView;

    if-eqz p1, :cond_3

    .line 200
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackProviderUtils;->isPhotoPlaybackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mPhotoPlaybackView:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    invoke-virtual {p0, v2, v1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->setShouldShowMusicInfoOrSticker(ZZ)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mStickerView:Lcom/sonymobile/keyguard/aod/StickerView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 204
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mMusicInfoView:Lcom/sonymobile/keyguard/aod/MusicInfoView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mStickerView:Lcom/sonymobile/keyguard/aod/StickerView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackProviderUtils;->isPhotoPlaybackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 210
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mPhotoPlaybackView:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->setShouldShowMusicInfoOrSticker(ZZ)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mMusicInfoView:Lcom/sonymobile/keyguard/aod/MusicInfoView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 213
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/AodView;->mStickerView:Lcom/sonymobile/keyguard/aod/StickerView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/AodView;->mMusicInfoView:Lcom/sonymobile/keyguard/aod/MusicInfoView;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method
