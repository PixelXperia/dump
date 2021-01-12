.class public Lcom/android/systemui/statusbar/phone/LockIcon;
.super Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.source "LockIcon.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;


# instance fields
.field private final mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mBouncerVisible:Z

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private mDensity:I

.field private final mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private mDocked:Z

.field private mDozeAmount:F

.field private mDozing:Z

.field private mIconColor:I

.field private mIconRes:I

.field private mIsFaceUnlockState:Z

.field private mIsSkinningEnabled:Z

.field private mIsUnlockAnimation:Z

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

.field private mKeyguardShowing:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastBouncerVisible:Z

.field private mLastDozing:Z

.field private mLastPulsing:Z

.field private mLastState:I

.field private final mMainHandler:Landroid/os/Handler;

.field private mPulsing:Z

.field private mShowingLaunchAffordance:Z

.field private mSimLocked:Z

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mTransientBiometricsError:Z

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWakeAndUnlockRunning:Z

.field private mWasPulsingOnThisFrame:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 153
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/LockIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/AccessibilityController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/dock/DockManager;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/AccessibilityController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/dock/DockManager;Landroid/os/Handler;)V
    .locals 1

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 81
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 103
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockIcon$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LockIcon$1;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .line 111
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockIcon$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LockIcon$2;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    .line 124
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockIcon$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LockIcon$3;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 165
    iput-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 166
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 167
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 168
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 169
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 170
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 171
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 172
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 173
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mMainHandler:Landroid/os/Handler;

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/systemui/R$bool;->somc_keyguard_theme_enabled:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsSkinningEnabled:Z

    .line 175
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsUnlockAnimation:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/LockIcon;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/LockIcon;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mSimLocked:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mSimLocked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/LockIcon;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method private getAnimationResForTransition(IIZZZZZ)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p6, :cond_0

    if-nez p4, :cond_0

    .line 367
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWasPulsingOnThisFrame:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_1

    if-ne p2, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eq p1, v3, :cond_2

    if-ne p2, v3, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-ne p1, v3, :cond_3

    if-nez p2, :cond_3

    move p1, v3

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_2
    if-nez p3, :cond_4

    if-eqz p4, :cond_4

    move p3, v3

    goto :goto_3

    :cond_4
    move p3, v2

    :goto_3
    if-eqz p5, :cond_5

    if-nez p6, :cond_5

    .line 375
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWasPulsingOnThisFrame:Z

    if-nez p0, :cond_5

    move v2, v3

    :cond_5
    if-eqz v1, :cond_6

    const p0, 0x10a00fd

    return p0

    :cond_6
    if-eqz v4, :cond_7

    const p0, 0x10a00fe

    return p0

    :cond_7
    if-eqz p1, :cond_8

    const p0, 0x10a00f5

    return p0

    :cond_8
    const/4 p0, 0x2

    if-ne p2, p0, :cond_9

    if-eqz p7, :cond_9

    const p0, 0x10a00f6

    return p0

    :cond_9
    if-nez p3, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    if-eq p2, v3, :cond_b

    const p0, 0x10a00f4

    return p0

    :cond_b
    return v0
.end method

.method private getIconForState(I)I
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const p0, 0x10803b9

    goto :goto_1

    :cond_2
    :goto_0
    const p0, 0x10803b0

    :goto_1
    return p0
.end method

.method private getState()I
    .locals 2

    .line 392
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 393
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientBiometricsError:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x3

    return p0

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardShowing:Z

    if-nez v1, :cond_2

    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mSimLocked:Z

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 397
    :cond_2
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private updateClickability()V
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    if-nez v0, :cond_0

    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 309
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 310
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    .line 311
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 312
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setLongClickable(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    return-void
.end method

.method private updateDarkTint()V
    .locals 3

    .line 435
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozeAmount:F

    const/4 v2, -0x1

    invoke-static {v0, v2, v1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 436
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$setPulsing$0$LockIcon()V
    .locals 1

    const/4 v0, 0x0

    .line 419
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWasPulsingOnThisFrame:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 180
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mSimLocked:Z

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockManager:Lcom/android/systemui/dock/DockManager;

    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/dock/DockManager;->addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->onThemeChanged()V

    return-void
.end method

.method public onBiometricAuthModeChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 479
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeAndUnlockRunning:Z

    .line 481
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 231
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 232
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 233
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    if-eq p1, v0, :cond_0

    .line 234
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    .line 235
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    .line 452
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 456
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_affordance_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 457
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_affordance_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 458
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 459
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 195
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->removeListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockManager:Lcom/android/systemui/dock/DockManager;

    if-eqz v0, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/dock/DockManager;->removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsUnlockAnimation:Z

    return-void
.end method

.method public onDozeAmountChanged(FF)V
    .locals 0

    .line 406
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozeAmount:F

    .line 407
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateDarkTint()V

    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 0

    .line 430
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozing:Z

    .line 431
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 318
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    .line 320
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 322
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    .line 325
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->accessibility_unlock_without_fingerprint:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 326
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 327
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->accessibility_waiting_for_fingerprint:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 329
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsFaceUnlockState:Z

    if-eqz v0, :cond_1

    .line 331
    const-class v0, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 332
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->accessibility_scanning_face:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLocaleListChanged()V
    .locals 2

    .line 464
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->accessibility_unlock_button:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 465
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method public onScrimVisibilityChanged(I)V
    .locals 1

    .line 496
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeAndUnlockRunning:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 498
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeAndUnlockRunning:Z

    .line 499
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    :cond_0
    return-void
.end method

.method public onShowingLaunchAffordanceChanged(Z)V
    .locals 0

    .line 488
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mShowingLaunchAffordance:Z

    .line 489
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 4

    .line 209
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x1

    .line 211
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconColor:I

    .line 212
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateDarkTint()V

    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .locals 0

    .line 470
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public setBouncerVisible(Z)V
    .locals 1

    .line 443
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBouncerVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 446
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBouncerVisible:Z

    .line 447
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public setIconAlpha(F)V
    .locals 1

    .line 504
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsUnlockAnimation:Z

    if-nez v0, :cond_0

    .line 506
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setPulsing(Z)V
    .locals 1

    .line 415
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    .line 416
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 417
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWasPulsingOnThisFrame:Z

    .line 418
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockIcon$TmjtrutkteGSA9bJnhAgff1P4s8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockIcon$TmjtrutkteGSA9bJnhAgff1P4s8;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public setTransientBiometricsError(Z)V
    .locals 0

    .line 225
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientBiometricsError:Z

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public update()V
    .locals 1

    const/4 v0, 0x0

    .line 240
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method public update(Z)V
    .locals 11

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v0, 0x2

    if-ne v8, v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v10

    .line 245
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsFaceUnlockState:Z

    .line 246
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-ne v8, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDozing:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozing:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastPulsing:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastBouncerVisible:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBouncerVisible:Z

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_5

    .line 248
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastPulsing:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDozing:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozing:Z

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBouncerVisible:Z

    move-object v0, p0

    move v2, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/LockIcon;->getAnimationResForTransition(IIZZZZZ)I

    .line 252
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/LockIcon;->getIconForState(I)I

    move-result v0

    .line 253
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconRes:I

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_4

    .line 254
    :cond_2
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconRes:I

    .line 256
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 257
    instance-of v0, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_3

    .line 258
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 260
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsSkinningEnabled:Z

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 261
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsFaceUnlockState:Z

    if-eqz p1, :cond_4

    .line 262
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$string;->accessibility_scanning_face:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 289
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateDarkTint()V

    .line 291
    iput v8, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 292
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozing:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDozing:Z

    .line 293
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastPulsing:Z

    .line 294
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBouncerVisible:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastBouncerVisible:Z

    .line 297
    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozing:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDocked:Z

    if-eqz p1, :cond_7

    :cond_6
    move p1, v9

    goto :goto_2

    :cond_7
    move p1, v10

    :goto_2
    if-nez p1, :cond_9

    .line 298
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeAndUnlockRunning:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mShowingLaunchAffordance:Z

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    move v9, v10

    :cond_9
    :goto_3
    if-eqz v9, :cond_a

    const/4 v10, 0x4

    .line 300
    :cond_a
    invoke-virtual {p0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateClickability()V

    return-void
.end method
