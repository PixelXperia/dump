.class public Lcom/android/systemui/classifier/FalsingManagerProxy;
.super Ljava/lang/Object;
.source "FalsingManagerProxy.java"

# interfaces
.implements Lcom/android/systemui/plugins/FalsingManager;


# instance fields
.field private mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginManager;Landroid/os/Handler;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p3, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mMainHandler:Landroid/os/Handler;

    .line 59
    new-instance p3, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerProxy$qZ6lxH8vX6Mj0Cv4-e94eYSfUGA;

    invoke-direct {p3, p0}, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerProxy$qZ6lxH8vX6Mj0Cv4-e94eYSfUGA;-><init>(Lcom/android/systemui/classifier/FalsingManagerProxy;)V

    new-instance v0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerProxy$gca_JCTVGHkvAjBNMeOIeE6opNs;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerProxy$gca_JCTVGHkvAjBNMeOIeE6opNs;-><init>(Lcom/android/systemui/classifier/FalsingManagerProxy;Landroid/content/Context;)V

    const-string v1, "systemui"

    invoke-static {v1, p3, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/FalsingManagerProxy;->setupFalsingManager(Landroid/content/Context;)V

    .line 64
    new-instance p3, Lcom/android/systemui/classifier/FalsingManagerProxy$1;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/classifier/FalsingManagerProxy$1;-><init>(Lcom/android/systemui/classifier/FalsingManagerProxy;Landroid/content/Context;)V

    .line 78
    const-class p0, Lcom/android/systemui/plugins/FalsingPlugin;

    invoke-interface {p2, p3, p0}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/classifier/FalsingManagerProxy;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/classifier/FalsingManagerProxy;Lcom/android/systemui/plugins/FalsingManager;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p1
.end method

.method private onDeviceConfigPropertiesChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "systemui"

    .line 82
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/FalsingManagerProxy;->setupFalsingManager(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->cleanup()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method getInternalFalsingManager()Lcom/android/systemui/plugins/FalsingManager;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 115
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method public isClassiferEnabled()Z
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isClassiferEnabled()Z

    move-result p0

    return p0
.end method

.method public isFalseTouch()Z
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch()Z

    move-result p0

    return p0
.end method

.method public isReportingEnabled()Z
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isReportingEnabled()Z

    move-result p0

    return p0
.end method

.method public isUnlockingDisabled()Z
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$FalsingManagerProxy(Ljava/lang/Runnable;)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$new$1$FalsingManagerProxy(Landroid/content/Context;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 61
    invoke-virtual {p2}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/classifier/FalsingManagerProxy;->onDeviceConfigPropertiesChanged(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onAffordanceSwipingAborted()V
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onAffordanceSwipingAborted()V

    return-void
.end method

.method public onAffordanceSwipingStarted(Z)V
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->onAffordanceSwipingStarted(Z)V

    return-void
.end method

.method public onBouncerHidden()V
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onBouncerHidden()V

    return-void
.end method

.method public onBouncerShown()V
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onBouncerShown()V

    return-void
.end method

.method public onCameraHintStarted()V
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onCameraHintStarted()V

    return-void
.end method

.method public onCameraOn()V
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onCameraOn()V

    return-void
.end method

.method public onExpansionFromPulseStopped()V
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onExpansionFromPulseStopped()V

    return-void
.end method

.method public onLeftAffordanceHintStarted()V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onLeftAffordanceHintStarted()V

    return-void
.end method

.method public onLeftAffordanceOn()V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onLeftAffordanceOn()V

    return-void
.end method

.method public onNotificationActive()V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationActive()V

    return-void
.end method

.method public onNotificationDismissed()V
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationDismissed()V

    return-void
.end method

.method public onNotificationDoubleTap(ZFF)V
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationDoubleTap(ZFF)V

    return-void
.end method

.method public onNotificatonStartDismissing()V
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificatonStartDismissing()V

    return-void
.end method

.method public onNotificatonStartDraggingDown()V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificatonStartDraggingDown()V

    return-void
.end method

.method public onNotificatonStopDismissing()V
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificatonStopDismissing()V

    return-void
.end method

.method public onNotificatonStopDraggingDown()V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificatonStartDraggingDown()V

    return-void
.end method

.method public onQsDown()V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onQsDown()V

    return-void
.end method

.method public onScreenOff()V
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onScreenOff()V

    return-void
.end method

.method public onScreenOnFromTouch()V
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onScreenOnFromTouch()V

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onScreenTurningOn()V

    return-void
.end method

.method public onStartExpandingFromPulse()V
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onStartExpandingFromPulse()V

    return-void
.end method

.method public onSucccessfulUnlock()V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onSucccessfulUnlock()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;II)V
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/FalsingManager;->onTouchEvent(Landroid/view/MotionEvent;II)V

    return-void
.end method

.method public onTrackingStarted(Z)V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->onTrackingStarted(Z)V

    return-void
.end method

.method public onTrackingStopped()V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onTrackingStopped()V

    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onUnlockHintStarted()V

    return-void
.end method

.method public reportRejectedTouch()Landroid/net/Uri;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->reportRejectedTouch()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public setNotificationExpanded()V
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->setNotificationExpanded()V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->setQsExpanded(Z)V

    return-void
.end method

.method public setShowingAod(Z)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->setShowingAod(Z)V

    return-void
.end method

.method public setupFalsingManager(Landroid/content/Context;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "systemui"

    const-string v1, "brightline_falsing_manager_enabled"

    const/4 v2, 0x1

    .line 94
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    if-eqz v1, :cond_0

    .line 97
    invoke-interface {v1}, Lcom/android/systemui/plugins/FalsingManager;->cleanup()V

    :cond_0
    if-nez v0, :cond_1

    .line 100
    new-instance v0, Lcom/android/systemui/classifier/FalsingManagerImpl;

    invoke-direct {v0, p1}, Lcom/android/systemui/classifier/FalsingManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;

    new-instance v1, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;-><init>(Landroid/util/DisplayMetrics;)V

    const-class p1, Lcom/android/systemui/util/AsyncSensorManager;

    .line 104
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;Landroid/hardware/SensorManager;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    :goto_0
    return-void
.end method

.method public shouldEnforceBouncer()Z
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->shouldEnforceBouncer()Z

    move-result p0

    return p0
.end method
