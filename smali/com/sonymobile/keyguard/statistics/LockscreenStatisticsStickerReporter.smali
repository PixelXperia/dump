.class public Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsStickerReporter;
.super Landroid/os/AsyncTask;
.source "LockscreenStatisticsStickerReporter.java"

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

    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsStickerReporter;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsStickerReporter;->mLockscreenStatisticsUserClassifier:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;

    .line 59
    iput-object p3, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsStickerReporter;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method private getStickerSettings(I)Ljava/lang/String;
    .locals 2

    .line 95
    iget-object p0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsStickerReporter;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "somc.doze_sticker"

    .line 95
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "None"

    if-eqz p0, :cond_2

    const-string v0, ""

    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    .line 103
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 104
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "file"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Album"

    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method private reportStickerUsage()V
    .locals 6

    .line 77
    iget-object v0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsStickerReporter;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 80
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsStickerReporter;->getStickerSettings(I)Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v5, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 82
    :goto_1
    iget-object v5, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsStickerReporter;->mLockscreenStatisticsUserClassifier:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;

    invoke-virtual {v5, v2}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;->getUserType(Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-direct {p0, v3, v2, v4}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsStickerReporter;->sendIddReportAsUser(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendIddReportAsUser(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sonymobile.lockscreen.idd.ACTION_STICKER_USAGE"

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.lockscreen.uxpnxt"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sticker_settings"

    .line 123
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "user_type"

    .line 124
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "is_active"

    .line 125
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    iget-object p0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsStickerReporter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsStickerReporter;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsStickerReporter;->reportStickerUsage()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public sendIddReport()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 64
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
