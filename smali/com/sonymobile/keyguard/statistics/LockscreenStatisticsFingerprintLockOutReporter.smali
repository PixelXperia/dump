.class public final Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter;
.super Ljava/lang/Object;
.source "LockscreenStatisticsFingerprintLockOutReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;
    }
.end annotation


# direct methods
.method public static sendEvent(Landroid/content/Context;Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintLockOutReporter$LockOutTrigger;)V
    .locals 2

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sonymobile.lockscreen.idd.ACTION_FINGERPRINT_LOCKOUT"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.lockscreen.uxpnxt"

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "lockout_trigger"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
