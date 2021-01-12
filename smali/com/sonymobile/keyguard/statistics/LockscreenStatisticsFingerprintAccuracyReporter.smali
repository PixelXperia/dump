.class public Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintAccuracyReporter;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "LockscreenStatisticsFingerprintAccuracyReporter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFailedAttempts:J

.field private mFailedAttemptsWhenScreenOff:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintAccuracyReporter;->mFailedAttempts:J

    .line 25
    iput-wide v0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintAccuracyReporter;->mFailedAttemptsWhenScreenOff:J

    .line 28
    iput-object p1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintAccuracyReporter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 4

    .line 33
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_0

    .line 34
    iget-wide v0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintAccuracyReporter;->mFailedAttempts:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintAccuracyReporter;->mFailedAttempts:J

    .line 35
    iget-object p1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintAccuracyReporter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result p1

    if-nez p1, :cond_0

    .line 36
    iget-wide v0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintAccuracyReporter;->mFailedAttemptsWhenScreenOff:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintAccuracyReporter;->mFailedAttemptsWhenScreenOff:J

    :cond_0
    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 44
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_2

    .line 45
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 p2, 0xa

    .line 46
    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    .line 48
    sget-object p2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "user"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintAccuracyReporter;->sendIddReport()V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintAccuracyReporter;->sendIddReport()V

    :cond_1
    :goto_0
    const-wide/16 p1, 0x0

    .line 56
    iput-wide p1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintAccuracyReporter;->mFailedAttempts:J

    .line 57
    iput-wide p1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintAccuracyReporter;->mFailedAttemptsWhenScreenOff:J

    :cond_2
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 64
    iput-wide v0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintAccuracyReporter;->mFailedAttempts:J

    :cond_0
    return-void
.end method

.method public sendIddReport()V
    .locals 4

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sonymobile.lockscreen.idd.ACTION_FINGERPRINT_ACCURACY"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.lockscreen.uxpnxt"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    iget-object v1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintAccuracyReporter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v1

    const-string v2, "is_screen_on"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    iget-wide v1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintAccuracyReporter;->mFailedAttempts:J

    const-string v3, "failure_count"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 74
    iget-wide v1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintAccuracyReporter;->mFailedAttemptsWhenScreenOff:J

    const-string v3, "failure_count_screen_off"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 75
    iget-object p0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintAccuracyReporter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
