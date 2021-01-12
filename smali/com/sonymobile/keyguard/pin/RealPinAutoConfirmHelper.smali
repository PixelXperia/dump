.class public Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;
.super Ljava/lang/Object;
.source "RealPinAutoConfirmHelper.java"

# interfaces
.implements Lcom/sonymobile/keyguard/pin/PinAutoConfirmHelper;
.implements Lcom/sonymobile/keyguard/pin/PasswordEntryListener;
.implements Lcom/sonymobile/keyguard/pin/PinUnlockListener;


# instance fields
.field private final mConfirmButtonView:Landroid/view/View;

.field private mFeatureEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

.field private final mPinAutoUnlockSettingsSecureWrapper:Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;

.field private final mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Landroid/os/Handler;Landroid/os/Vibrator;Lcom/android/keyguard/PasswordTextView;Lcom/android/keyguard/SecurityMessageDisplay;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mConfirmButtonView:Landroid/view/View;

    .line 130
    iput-object p2, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPinAutoUnlockSettingsSecureWrapper:Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;

    .line 131
    iput-object p3, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 132
    iput-object p4, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 133
    iput-object p5, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mHandler:Landroid/os/Handler;

    .line 134
    iput-object p6, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mVibrator:Landroid/os/Vibrator;

    .line 135
    iput-object p7, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 136
    iput-object p8, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mFeatureEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)Lcom/android/keyguard/PasswordTextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mConfirmButtonView:Landroid/view/View;

    return-object p0
.end method

.method private isAutoUnlockEnabled()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPinAutoUnlockSettingsSecureWrapper:Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;->isAutoUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mFeatureEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isEnabledForPinLength(I)Z
    .locals 0

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final disableAutoUnlockIfAppropriate()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 170
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 169
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 171
    :goto_0
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mFeatureEnabled:Z

    return-void
.end method

.method public final onPasswordLengthIncreased(I)V
    .locals 3

    .line 179
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->isEnabledForPinLength(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mFeatureEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPinAutoUnlockSettingsSecureWrapper:Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;

    .line 180
    invoke-interface {p1}, Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;->isAutoUnlockEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/keyguard/PasswordTextView;->setContentLocked(Z)V

    .line 184
    iget-object p1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$1;-><init>(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final onUnlockFailed()V
    .locals 4

    .line 212
    invoke-direct {p0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->isAutoUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mConfirmButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setContentLocked(Z)V

    .line 215
    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 217
    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$2;-><init>(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final onUnlockSucceded(I)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->isEnabledForPinLength(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->isAutoUnlockEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPinAutoUnlockSettingsSecureWrapper:Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;

    invoke-interface {p1}, Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;->enableAutoUnlock()V

    .line 203
    iget-object p0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PasswordTextView;->setContentLocked(Z)V

    :cond_0
    return-void
.end method

.method public final updateEnterKeyVisibility()V
    .locals 3

    .line 145
    invoke-direct {p0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->isAutoUnlockEnabled()Z

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mConfirmButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mConfirmButtonView:Landroid/view/View;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 148
    iget-object p0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mConfirmButtonView:Landroid/view/View;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
