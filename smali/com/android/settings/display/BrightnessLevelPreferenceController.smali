.class public Lcom/android/settings/display/BrightnessLevelPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BrightnessLevelPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

.field private static final BRIGHTNESS_FOR_VR_URI:Landroid/net/Uri;

.field private static final BRIGHTNESS_URI:Landroid/net/Uri;


# instance fields
.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private final mBrightnessUtils:Lcom/sonymobile/settingslib/display/BrightnessUtils;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mMaxBrightness:I

.field private final mMaxVrBrightness:I

.field private final mMinBrightness:I

.field private final mMinVrBrightness:I

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "screen_brightness"

    .line 70
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_URI:Landroid/net/Uri;

    const-string v0, "screen_brightness_for_vr"

    .line 71
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_FOR_VR_URI:Landroid/net/Uri;

    const-string v0, "screen_auto_brightness_adj"

    .line 72
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 3

    .line 84
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v0, Lcom/android/settings/display/BrightnessLevelPreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    .line 76
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/BrightnessLevelPreferenceController$1;-><init>(Lcom/android/settings/display/BrightnessLevelPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessObserver:Landroid/database/ContentObserver;

    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    const-string p2, "power"

    .line 88
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 89
    invoke-virtual {p1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result p2

    iput p2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinBrightness:I

    .line 90
    invoke-virtual {p1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result p2

    iput p2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMaxBrightness:I

    .line 91
    invoke-virtual {p1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessForVrSetting()I

    move-result p2

    iput p2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinVrBrightness:I

    .line 92
    invoke-virtual {p1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessForVrSetting()I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMaxVrBrightness:I

    .line 93
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    .line 94
    new-instance p1, Lcom/sonymobile/settingslib/display/BrightnessUtils;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sonymobile/settingslib/display/BrightnessUtils;-><init>(Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessUtils:Lcom/sonymobile/settingslib/display/BrightnessUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/BrightnessLevelPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/display/BrightnessLevelPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->updatedSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method private getCurrentBrightness()D
    .locals 4

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->isInVrMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessUtils:Lcom/sonymobile/settingslib/display/BrightnessUtils;

    iget-object v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMaxBrightness:I

    const-string v3, "screen_brightness_for_vr"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinVrBrightness:I

    iget v3, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMaxVrBrightness:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/settingslib/display/BrightnessUtils;->convertLinearToGamma(III)I

    move-result v0

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessUtils:Lcom/sonymobile/settingslib/display/BrightnessUtils;

    iget-object v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinBrightness:I

    const-string v3, "screen_brightness"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinBrightness:I

    iget v3, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMaxBrightness:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/settingslib/display/BrightnessUtils;->convertLinearToGamma(III)I

    move-result v0

    :goto_0
    int-to-double v0, v0

    const/4 v2, 0x0

    const/16 v3, 0x3ff

    .line 155
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->getPercentage(DII)D

    move-result-wide v0

    return-wide v0
.end method

.method private getPercentage(DII)D
    .locals 2

    int-to-double v0, p4

    cmpl-double p0, p1, v0

    if-lez p0, :cond_0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0

    :cond_0
    int-to-double v0, p3

    cmpg-double p0, p1, v0

    if-gez p0, :cond_1

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_1
    sub-double/2addr p1, v0

    sub-int/2addr p4, p3

    int-to-double p3, p4

    div-double/2addr p1, p3

    return-wide p1
.end method

.method private updatedSummary(Landroidx/preference/Preference;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050024

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    const p0, 0x7f120403

    .line 135
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 138
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->getCurrentBrightness()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    .line 137
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "brightness"

    .line 110
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "brightness"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method isInVrMode()Z
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->safeGetVrManager()Landroid/service/vr/IVrManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 179
    :try_start_0
    invoke-interface {p0}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "BrightnessPrefCtrl"

    const-string v1, "Failed to check vr mode!"

    .line 181
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStart()V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_FOR_VR_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method safeGetVrManager()Landroid/service/vr/IVrManager;
    .locals 0

    const-string p0, "vrmanager"

    .line 170
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->updatedSummary(Landroidx/preference/Preference;)V

    return-void
.end method
