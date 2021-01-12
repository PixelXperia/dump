.class public Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;
.super Ljava/lang/Object;
.source "NavigationBarLockControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NavigationBarLockController;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;


# static fields
.field static final DEBUG:Z


# instance fields
.field private mAccessibilityEnabled:Z

.field private final mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

.field private final mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayId:I

.field private mGesturalMode:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHomeOrRecentsShowing:Z

.field private mImeShowing:Z

.field private mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field private mInputMonitor:Landroid/view/InputMonitor;

.field private final mKeyguardListener:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

.field private mKeyguardShowing:Z

.field private mLockStateMachine:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

.field private mLocked:Z

.field private final mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

.field private mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mPreRequisitesMet:Z

.field private mReLockDelay:J

.field private mTalkBackEnabled:Z

.field private final mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private mWindowState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NavBarLockController"

    const/4 v1, 0x3

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarLockControllerImpl$STykHzi1EHPb5RGq9Or8zKqQfHU;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarLockControllerImpl$STykHzi1EHPb5RGq9Or8zKqQfHU;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 108
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarLockControllerImpl$UiCMKGKHT2JGmxdA6CbTuMqnrZo;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarLockControllerImpl$UiCMKGKHT2JGmxdA6CbTuMqnrZo;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mKeyguardListener:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .line 114
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 124
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mDisplayId:I

    .line 126
    const-class v0, Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    .line 127
    const-class v0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$integer;->navbar_lock_relock_timeout:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mReLockDelay:J

    .line 131
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mHandler:Landroid/os/Handler;

    .line 132
    const-class p1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    .line 133
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result p1

    .line 132
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mGesturalMode:Z

    .line 134
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->updateAccessibilityState(Landroid/view/accessibility/AccessibilityManager;)V

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->updateKeyguardState()V

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->updateFrontTask()V

    const/4 p1, 0x0

    .line 140
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mImeShowing:Z

    .line 142
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 143
    const-class p1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->addCallback(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 144
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mKeyguardListener:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 145
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->checkPrerequisites(Z)V

    return-void
.end method

.method private checkPrerequisites(Z)V
    .locals 3

    .line 276
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mGesturalMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mImeShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mAccessibilityEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mTalkBackEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mHomeOrRecentsShowing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 283
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mLockStateMachine:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    if-eqz v1, :cond_3

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mPreRequisitesMet:Z

    if-eq v0, p1, :cond_3

    .line 284
    :cond_1
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->DEBUG:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWindowState="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mWindowState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mGesturalMode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mGesturalMode:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mImeShowing="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mImeShowing:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAccessibilityEnabled="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mAccessibilityEnabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTalkbackEnabled="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mTalkBackEnabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mKeyguardShowing="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mKeyguardShowing:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHomeOrRecentsShowing="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mHomeOrRecentsShowing:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mReLockDelay="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mReLockDelay:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NavBarLockController"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mLockStateMachine:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->preRequisitesChanged(Z)V

    .line 294
    :cond_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mPreRequisitesMet:Z

    return-void
.end method

.method public static synthetic lambda$SZx9Cepfis1Zz2qm9OM9izetXww(Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->lockSet()V

    return-void
.end method

.method public static synthetic lambda$qb2aWlkkpuV5y2YudWhNfOoFJtY(Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;Landroid/view/InputEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method private lockSet()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mLockStateMachine:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 251
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mLocked:Z

    if-eq v0, v1, :cond_2

    .line 252
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLocked(Z)V

    if-nez v0, :cond_1

    .line 254
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    .line 256
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mLocked:Z

    :cond_2
    return-void
.end method

.method private onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    .line 222
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 223
    check-cast p1, Landroid/view/MotionEvent;

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 225
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mLockStateMachine:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->touchReleased()V

    :cond_0
    return-void
.end method

.method private registerInputMonitor()V
    .locals 5

    .line 231
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->unregisterInputMonitor()V

    .line 232
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mDisplayId:I

    const-string v2, "nav_lock"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mInputMonitor:Landroid/view/InputMonitor;

    .line 233
    new-instance v0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    .line 234
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarLockControllerImpl$qb2aWlkkpuV5y2YudWhNfOoFJtY;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarLockControllerImpl$qb2aWlkkpuV5y2YudWhNfOoFJtY;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    return-void
.end method

.method private unregisterInputMonitor()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->dispose()V

    .line 241
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 245
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_1
    return-void
.end method

.method private updateAccessibilityState(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    .line 261
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mTalkBackEnabled:Z

    return-void
.end method

.method private updateKeyguardState()V
    .locals 1

    .line 265
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mKeyguardShowing:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 214
    const-class v0, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->removeCallback(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 215
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mKeyguardListener:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 216
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->setEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$new$0$NavigationBarLockControllerImpl(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->updateAccessibilityState(Landroid/view/accessibility/AccessibilityManager;)V

    const/4 p1, 0x0

    .line 104
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->checkPrerequisites(Z)V

    return-void
.end method

.method public synthetic lambda$new$1$NavigationBarLockControllerImpl()V
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->updateKeyguardState()V

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->checkPrerequisites(Z)V

    return-void
.end method

.method public onAccessibilityButtonState(Z)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mAccessibilityEnabled:Z

    const/4 p1, 0x0

    .line 161
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->checkPrerequisites(Z)V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    .line 154
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mGesturalMode:Z

    const/4 p1, 0x0

    .line 155
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->checkPrerequisites(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mLockStateMachine:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mLockStateMachine:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->touchPressed()V

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mLockStateMachine:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->isLocked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 171
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mDisplayId:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/NavigationBarController;->touchAutoDim(I)V

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mLockStateMachine:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarLockControllerImpl$SZx9Cepfis1Zz2qm9OM9izetXww;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarLockControllerImpl$SZx9Cepfis1Zz2qm9OM9izetXww;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mLockStateMachine:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mLockStateMachine:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mReLockDelay:J

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->setReLockDelay(J)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mLockStateMachine:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->start()V

    const/4 v0, 0x1

    .line 193
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->checkPrerequisites(Z)V

    .line 195
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->registerInputMonitor()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mLockStateMachine:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    if-eqz v0, :cond_1

    .line 197
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->unregisterInputMonitor()V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mLockStateMachine:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->quit()V

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mLockStateMachine:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    .line 201
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavBarLock display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mDisplayId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " enabled: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavBarLockController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 0

    and-int/lit8 p1, p3, 0x2

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    .line 97
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mImeShowing:Z

    .line 98
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->checkPrerequisites(Z)V

    return-void
.end method

.method public setNavigationBarView(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-void
.end method

.method public setReLockDelay(J)V
    .locals 2

    .line 178
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mReLockDelay:J

    .line 179
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mLockStateMachine:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    if-eqz p1, :cond_0

    .line 180
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mReLockDelay:J

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->setReLockDelay(J)V

    :cond_0
    return-void
.end method

.method public setWindowState(III)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mLockStateMachine:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mWindowState:I

    if-eq p2, p3, :cond_0

    if-ne p3, v0, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->windowHidden()V

    .line 91
    :cond_0
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mWindowState:I

    return-void
.end method

.method public unlock()V
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mLockStateMachine:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    if-eqz p0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->unlock()V

    :cond_0
    return-void
.end method

.method public updateFrontTask()V
    .locals 3

    .line 269
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 272
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->mHomeOrRecentsShowing:Z

    return-void
.end method
