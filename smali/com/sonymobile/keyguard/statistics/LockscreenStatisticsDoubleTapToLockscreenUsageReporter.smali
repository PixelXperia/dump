.class public Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsDoubleTapToLockscreenUsageReporter;
.super Landroid/os/AsyncTask;
.source "LockscreenStatisticsDoubleTapToLockscreenUsageReporter.java"

# interfaces
.implements Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReporter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsReporter;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDoubleTapToLockscreenOnceActivated:Z

.field private mIsDoubleTapToLockscreenON:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsDoubleTapToLockscreenUsageReporter;->mIsDoubleTapToLockscreenON:Z

    .line 29
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsDoubleTapToLockscreenUsageReporter;->mDoubleTapToLockscreenOnceActivated:Z

    .line 37
    iput-object p1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsDoubleTapToLockscreenUsageReporter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isDoubleTapToLockscreenON()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsDoubleTapToLockscreenUsageReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "double_tap_to_lockscreen_setting"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    .line 68
    iput-boolean v1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsDoubleTapToLockscreenUsageReporter;->mDoubleTapToLockscreenOnceActivated:Z

    if-ne v0, v1, :cond_0

    .line 70
    iput-boolean v1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsDoubleTapToLockscreenUsageReporter;->mIsDoubleTapToLockscreenON:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsDoubleTapToLockscreenUsageReporter;->mIsDoubleTapToLockscreenON:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private reportDoubleTapToLockscreenUsage()V
    .locals 3

    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sonymobile.lockscreen.idd.ACTION_DOUBLE_TAP_TO_LOCKSCREEN_USAGE"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.lockscreen.uxpnxt"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-boolean v1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsDoubleTapToLockscreenUsageReporter;->mIsDoubleTapToLockscreenON:Z

    const-string v2, "double_tap_to_lockscreen_switch"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    iget-boolean v1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsDoubleTapToLockscreenUsageReporter;->mDoubleTapToLockscreenOnceActivated:Z

    const-string v2, "double_tap_to_lockscreen_activated"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    iget-object p0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsDoubleTapToLockscreenUsageReporter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsDoubleTapToLockscreenUsageReporter;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsDoubleTapToLockscreenUsageReporter;->isDoubleTapToLockscreenON()V

    .line 48
    invoke-direct {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsDoubleTapToLockscreenUsageReporter;->reportDoubleTapToLockscreenUsage()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public sendIddReport()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 42
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
