.class public Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintCountReporter;
.super Landroid/os/AsyncTask;
.source "LockscreenStatisticsFingerprintCountReporter.java"

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

.field private final mLockscreenStatisticsUserClassifier:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;Landroid/os/UserManager;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintCountReporter;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintCountReporter;->mLockscreenStatisticsUserClassifier:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;

    .line 52
    iput-object p3, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintCountReporter;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method private reportFingerprintCount()V
    .locals 9

    .line 70
    iget-object v0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintCountReporter;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 71
    iget-object v2, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintCountReporter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 74
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintCount(I)I

    move-result v4

    int-to-long v4, v4

    .line 75
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, v7, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 76
    :goto_1
    iget-object v7, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintCountReporter;->mLockscreenStatisticsUserClassifier:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;

    invoke-virtual {v7, v3}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;->getUserType(Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v7, -0x1

    cmp-long v7, v4, v7

    if-eqz v7, :cond_0

    .line 78
    invoke-direct {p0, v4, v5, v3, v6}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintCountReporter;->sendIddReportAsUser(JLjava/lang/String;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private sendIddReportAsUser(JLjava/lang/String;Z)V
    .locals 2

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sonymobile.lockscreen.idd.ACTION_FINGERPRINT_USAGE"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.lockscreen.uxpnxt"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "registration_number"

    .line 94
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "user_type"

    .line 95
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "is_active"

    .line 96
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    iget-object p0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintCountReporter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintCountReporter;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsFingerprintCountReporter;->reportFingerprintCount()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public sendIddReport()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 57
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
