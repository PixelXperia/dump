.class public Lcom/android/systemui/settings/MaxBrightnessHeadsUpController;
.super Ljava/lang/Object;
.source "MaxBrightnessHeadsUpController.java"

# interfaces
.implements Lcom/android/systemui/settings/MaxBrightnessHeadsUp$Listener;
.implements Lcom/android/systemui/settings/ToggleSlider$OnSliderMaximizedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MaxBrightnessHeadsUpController"

.field private static sUserResponded:Z = false


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMaxBrightnessHeadsUp:Lcom/android/systemui/settings/MaxBrightnessHeadsUp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/MaxBrightnessHeadsUp;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/systemui/settings/MaxBrightnessHeadsUpController;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/systemui/settings/MaxBrightnessHeadsUpController;->mMaxBrightnessHeadsUp:Lcom/android/systemui/settings/MaxBrightnessHeadsUp;

    return-void
.end method

.method private getGameEnhancerContext()Landroid/content/Context;
    .locals 5

    const/4 v0, 0x0

    .line 107
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/settings/MaxBrightnessHeadsUpController;->mContext:Landroid/content/Context;

    const-string v1, "com.sonymobile.gameenhancer"

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    .line 108
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 107
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 110
    sget-object p0, Lcom/android/systemui/settings/MaxBrightnessHeadsUpController;->TAG:Ljava/lang/String;

    const-string v1, "Context creation failed."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 113
    sget-object v1, Lcom/android/systemui/settings/MaxBrightnessHeadsUpController;->TAG:Ljava/lang/String;

    const-string v2, "getGameEnhancerContext: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method private isBrightnessModeAutomatic()Z
    .locals 3

    .line 66
    iget-object p0, p0, Lcom/android/systemui/settings/MaxBrightnessHeadsUpController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "screen_brightness_mode"

    const/4 v2, -0x2

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private isGameEnhancerLaunched()Z
    .locals 4

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/settings/MaxBrightnessHeadsUpController;->getGameEnhancerContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 82
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "content://com.sonymobile.gameenhancer.provider/status"

    .line 83
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 82
    invoke-virtual {p0, v2, v1, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 84
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_1

    .line 85
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "is_enabled"

    .line 86
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const/4 v2, -0x1

    if-eq p0, v2, :cond_1

    .line 88
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    move v0, v2

    :cond_1
    if-eqz v1, :cond_2

    .line 96
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 93
    :try_start_1
    sget-object v2, Lcom/android/systemui/settings/MaxBrightnessHeadsUpController;->TAG:Ljava/lang/String;

    const-string v3, "isGameEnhancerLaunched: "

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :goto_2
    if-eqz v1, :cond_3

    .line 96
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_3
    throw p0
.end method


# virtual methods
.method public onSliderMaximized()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/android/systemui/settings/MaxBrightnessHeadsUpController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_enable_max_brightness_heads_up:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    sget-boolean v0, Lcom/android/systemui/settings/MaxBrightnessHeadsUpController;->sUserResponded:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/settings/MaxBrightnessHeadsUpController;->isBrightnessModeAutomatic()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/settings/MaxBrightnessHeadsUpController;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {v0}, Lcom/sonymobile/systemui/emergencymode/EmergencyModeStatus;->isEmergencyModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/settings/MaxBrightnessHeadsUpController;->isGameEnhancerLaunched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object p0, p0, Lcom/android/systemui/settings/MaxBrightnessHeadsUpController;->mMaxBrightnessHeadsUp:Lcom/android/systemui/settings/MaxBrightnessHeadsUp;

    invoke-interface {p0}, Lcom/android/systemui/settings/MaxBrightnessHeadsUp;->showWithGameEnhancer()V

    goto :goto_0

    .line 56
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/settings/MaxBrightnessHeadsUpController;->mMaxBrightnessHeadsUp:Lcom/android/systemui/settings/MaxBrightnessHeadsUp;

    invoke-interface {p0}, Lcom/android/systemui/settings/MaxBrightnessHeadsUp;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onUserResponded()V
    .locals 0

    const/4 p0, 0x1

    .line 62
    sput-boolean p0, Lcom/android/systemui/settings/MaxBrightnessHeadsUpController;->sUserResponded:Z

    return-void
.end method
