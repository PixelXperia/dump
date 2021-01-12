.class public Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPhotoPlaybackReporter;
.super Landroid/os/AsyncTask;
.source "LockscreenStatisticsPhotoPlaybackReporter.java"

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPhotoPlaybackReporter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private reportPhotoPkaybackUsage()V
    .locals 3

    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sonymobile.lockscreen.idd.ACTION_PHOTOPLAYBACK_USAGE"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.lockscreen.uxpnxt"

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPhotoPlaybackReporter;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {v1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackSharedPreferences;->getPhotoplaybackSharedPrefOobeShown(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "oobe_shown"

    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPhotoPlaybackReporter;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {v1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackSharedPreferences;->getPhotoplaybackSharedPrefIntroShown(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "intro_shown"

    .line 54
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    iget-object v1, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPhotoPlaybackReporter;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {v1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackSharedPreferences;->getPhotoplaybackSharedPrefAlbumShown(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "album_shown"

    .line 56
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    iget-object p0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPhotoPlaybackReporter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPhotoPlaybackReporter;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPhotoPlaybackReporter;->reportPhotoPkaybackUsage()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public sendIddReport()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 36
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
