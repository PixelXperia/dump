.class public Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;
.super Ljava/lang/Object;
.source "BrightLineFalsingManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/FalsingManager;


# instance fields
.field private final mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mClassifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/classifier/brightline/FalsingClassifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

.field private mScreenOn:Z

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSessionStarted:Z

.field private mShowingAod:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;Landroid/hardware/SensorManager;)V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 54
    new-instance v0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$1;-><init>(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    .line 68
    iput-object p2, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    .line 70
    new-instance p1, Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    iget-object p2, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-direct {p1, p2}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    .line 71
    new-instance p2, Lcom/android/systemui/classifier/brightline/ProximityClassifier;

    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/classifier/brightline/ProximityClassifier;-><init>(Lcom/android/systemui/classifier/brightline/DistanceClassifier;Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/classifier/brightline/PointerCountClassifier;

    iget-object v2, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-direct {v1, v2}, Lcom/android/systemui/classifier/brightline/PointerCountClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/classifier/brightline/TypeClassifier;

    iget-object v2, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-direct {v1, v2}, Lcom/android/systemui/classifier/brightline/TypeClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;

    iget-object v2, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-direct {v1, v2}, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    new-instance p2, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-direct {p2, p0}, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->onSensorEvent(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic lambda$isFalseTouch$3(Lcom/android/systemui/classifier/brightline/FalsingClassifier;)Z
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->isFalseTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": true"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->logInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": false"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    return v0
.end method

.method static synthetic lambda$onSensorEvent$5(Landroid/hardware/SensorEvent;Lcom/android/systemui/classifier/brightline/FalsingClassifier;)V
    .locals 0

    .line 159
    invoke-virtual {p1, p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->onSensorEvent(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic lambda$onTouchEvent$4(Landroid/view/MotionEvent;Lcom/android/systemui/classifier/brightline/FalsingClassifier;)V
    .locals 0

    .line 153
    invoke-virtual {p1, p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic lambda$updateInteractionType$2(ILcom/android/systemui/classifier/brightline/FalsingClassifier;)V
    .locals 0

    .line 123
    invoke-virtual {p1, p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->setInteractionType(I)V

    return-void
.end method

.method static logInfo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "FalsingManagerPlugin"

    .line 336
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onSensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 1

    .line 159
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$AsH_lc0LzYUN0FND3sobD9zcVwo;

    invoke-direct {v0, p1}, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$AsH_lc0LzYUN0FND3sobD9zcVwo;-><init>(Landroid/hardware/SensorEvent;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private registerSensors()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$oXy7WDc2eJ5hwJ2IlTpSo0Sz-ms;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$oXy7WDc2eJ5hwJ2IlTpSo0Sz-ms;-><init>(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;Landroid/hardware/Sensor;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method private sessionEnd()V
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSessionStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSessionStarted:Z

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->unregisterSensors()V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->onSessionEnd()V

    .line 117
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$47wU6WxQ-76Gt_ecwypSCrFl04Q;->INSTANCE:Lcom/android/systemui/classifier/brightline/-$$Lambda$47wU6WxQ-76Gt_ecwypSCrFl04Q;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private sessionStart()V
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSessionStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mShowingAod:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mScreenOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSessionStarted:Z

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->registerSensors()V

    .line 107
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$HclOlu42IVtKALxwbwHP3Y1rdRk;->INSTANCE:Lcom/android/systemui/classifier/brightline/-$$Lambda$HclOlu42IVtKALxwbwHP3Y1rdRk;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private unregisterSensors()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$0k2Os8V4mSfPPowZ1inE-JqhsAE;

    invoke-direct {v1, p0}, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$0k2Os8V4mSfPPowZ1inE-JqhsAE;-><init>(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private updateInteractionType(I)V
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InteractionType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$whJKACq72TioWHJA2gFUw_2uKEw;

    invoke-direct {v0, p1}, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$whJKACq72TioWHJA2gFUw_2uKEw;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .line 322
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->unregisterSensors()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public isClassiferEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFalseTouch()Z
    .locals 2

    .line 133
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$AiaSOz8R7zJnTp0oazL7DWdY4Kg;->INSTANCE:Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$AiaSOz8R7zJnTp0oazL7DWdY4Kg;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is false touch? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return p0
.end method

.method public isReportingEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUnlockingDisabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$registerSensors$0$BrightLineFalsingManager(Landroid/hardware/Sensor;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public synthetic lambda$unregisterSensors$1$BrightLineFalsingManager()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public onAffordanceSwipingAborted()V
    .locals 0

    return-void
.end method

.method public onAffordanceSwipingStarted(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 234
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->updateInteractionType(I)V

    return-void
.end method

.method public onBouncerHidden()V
    .locals 0

    return-void
.end method

.method public onBouncerShown()V
    .locals 0

    return-void
.end method

.method public onCameraHintStarted()V
    .locals 0

    return-void
.end method

.method public onCameraOn()V
    .locals 0

    return-void
.end method

.method public onExpansionFromPulseStopped()V
    .locals 0

    return-void
.end method

.method public onLeftAffordanceHintStarted()V
    .locals 0

    return-void
.end method

.method public onLeftAffordanceOn()V
    .locals 0

    return-void
.end method

.method public onNotificationActive()V
    .locals 0

    return-void
.end method

.method public onNotificationDismissed()V
    .locals 0

    return-void
.end method

.method public onNotificationDoubleTap(ZFF)V
    .locals 0

    return-void
.end method

.method public onNotificatonStartDismissing()V
    .locals 1

    const/4 v0, 0x1

    .line 301
    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->updateInteractionType(I)V

    return-void
.end method

.method public onNotificatonStartDraggingDown()V
    .locals 1

    const/4 v0, 0x2

    .line 183
    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->updateInteractionType(I)V

    return-void
.end method

.method public onNotificatonStopDismissing()V
    .locals 0

    return-void
.end method

.method public onNotificatonStopDraggingDown()V
    .locals 0

    return-void
.end method

.method public onQsDown()V
    .locals 1

    const/4 v0, 0x0

    .line 203
    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->updateInteractionType(I)V

    return-void
.end method

.method public onScreenOff()V
    .locals 1

    const/4 v0, 0x0

    .line 286
    iput-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mScreenOn:Z

    .line 287
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->sessionEnd()V

    return-void
.end method

.method public onScreenOnFromTouch()V
    .locals 0

    .line 258
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->onScreenTurningOn()V

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 1

    const/4 v0, 0x1

    .line 280
    iput-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mScreenOn:Z

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->sessionStart()V

    return-void
.end method

.method public onStartExpandingFromPulse()V
    .locals 1

    const/16 v0, 0x9

    .line 244
    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->updateInteractionType(I)V

    return-void
.end method

.method public onSucccessfulUnlock()V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->sessionEnd()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;II)V
    .locals 0

    .line 152
    iget-object p2, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p2, p1}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 153
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    new-instance p2, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$y2EhyJ78U2M2gK2mt8maWHpnYsU;

    invoke-direct {p2, p1}, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$y2EhyJ78U2M2gK2mt8maWHpnYsU;-><init>(Landroid/view/MotionEvent;)V

    invoke-interface {p0, p2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTrackingStarted(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 217
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->updateInteractionType(I)V

    return-void
.end method

.method public onTrackingStopped()V
    .locals 0

    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 0

    return-void
.end method

.method public reportRejectedTouch()Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setNotificationExpanded()V
    .locals 0

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    return-void
.end method

.method public setShowingAod(Z)V
    .locals 0

    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mShowingAod:Z

    if-eqz p1, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->sessionEnd()V

    goto :goto_0

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->sessionStart()V

    :goto_0
    return-void
.end method

.method public shouldEnforceBouncer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
