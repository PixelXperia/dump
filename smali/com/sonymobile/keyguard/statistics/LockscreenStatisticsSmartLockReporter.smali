.class public Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsSmartLockReporter;
.super Landroid/os/AsyncTask;
.source "LockscreenStatisticsSmartLockReporter.java"

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

    .line 48
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsSmartLockReporter;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsSmartLockReporter;->mLockscreenStatisticsUserClassifier:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;

    .line 51
    iput-object p3, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsSmartLockReporter;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method private reportSmartLockUsage()V
    .locals 7

    .line 69
    iget-object v0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsSmartLockReporter;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 70
    iget-object v2, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsSmartLockReporter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 73
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result v4

    .line 74
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, v6, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 75
    :goto_1
    iget-object v6, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsSmartLockReporter;->mLockscreenStatisticsUserClassifier:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;

    invoke-virtual {v6, v3}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;->getUserType(Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-direct {p0, v4, v3, v5}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsSmartLockReporter;->sendIddReportAsUser(ZLjava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendIddReportAsUser(ZLjava/lang/String;Z)V
    .locals 2

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sonymobile.lockscreen.idd.ACTION_SMARTLOCK_USAGE"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.lockscreen.uxpnxt"

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "smartlock_settings"

    .line 91
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "user_type"

    .line 92
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "is_active"

    .line 93
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    iget-object p0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsSmartLockReporter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsSmartLockReporter;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsSmartLockReporter;->reportSmartLockUsage()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public sendIddReport()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 56
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
