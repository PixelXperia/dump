.class public Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsAmbientDisplayReporter;
.super Landroid/os/AsyncTask;
.source "LockscreenStatisticsAmbientDisplayReporter.java"

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
.field private final mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private final mKeys:[Ljava/lang/String;

.field private final mLockscreenStatisticsUserClassifier:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;Landroid/os/UserManager;)V
    .locals 4

    .line 71
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "doze_always_on"

    const-string v1, "doze_take_on"

    const-string v2, "doze_pulse_on_pick_up"

    const-string v3, "doze_off"

    .line 44
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsAmbientDisplayReporter;->mKeys:[Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsAmbientDisplayReporter;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsAmbientDisplayReporter;->mLockscreenStatisticsUserClassifier:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;

    .line 74
    iput-object p3, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsAmbientDisplayReporter;->mUserManager:Landroid/os/UserManager;

    .line 75
    new-instance p2, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {p2, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsAmbientDisplayReporter;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-void
.end method

.method private getAmbientSettings(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 111
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsAmbientDisplayReporter;->mKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsAmbientDisplayReporter;->mContext:Landroid/content/Context;

    .line 113
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsAmbientDisplayReporter;->mKeys:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 112
    invoke-static {v2, v3, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_1
    iget-object p0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsAmbientDisplayReporter;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailable()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x2

    :goto_1
    return p0
.end method

.method private reportAmbientDisplayUsage()V
    .locals 6

    .line 93
    iget-object v0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsAmbientDisplayReporter;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 96
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsAmbientDisplayReporter;->getAmbientSettings(I)I

    move-result v3

    .line 97
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v5, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 98
    :goto_1
    iget-object v5, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsAmbientDisplayReporter;->mLockscreenStatisticsUserClassifier:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;

    invoke-virtual {v5, v2}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;->getUserType(Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-direct {p0, v3, v2, v4}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsAmbientDisplayReporter;->sendIddReportAsUser(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendIddReportAsUser(ILjava/lang/String;Z)V
    .locals 2

    .line 132
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sonymobile.lockscreen.idd.ACTION_AMBIENTDISPLAY_USAGE"

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.lockscreen.uxpnxt"

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ambient_settings"

    .line 135
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "user_type"

    .line 136
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "is_active"

    .line 137
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    iget-object p0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsAmbientDisplayReporter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsAmbientDisplayReporter;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsAmbientDisplayReporter;->reportAmbientDisplayUsage()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public sendIddReport()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 80
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
