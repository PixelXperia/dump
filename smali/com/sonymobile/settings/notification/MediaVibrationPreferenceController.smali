.class public Lcom/sonymobile/settings/notification/MediaVibrationPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "MediaVibrationPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/notification/MediaVibrationPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final KEY_MEDIA_VIBRATE_SWITCH:Ljava/lang/String; = "media_vibrate_switch"

.field private static final KEY_MEDIA_VIBRATE_TIP:Ljava/lang/String; = "media_vibrate_tip"

.field private static final MEDIA_VIBRATION:Ljava/lang/String; = "somc.media_vibration"

.field private static final TAG:Ljava/lang/String; = "MediaVibrationPreferenceController"


# instance fields
.field private mSettingObserver:Lcom/sonymobile/settings/notification/MediaVibrationPreferenceController$SettingObserver;

.field private mSwitch:Landroidx/preference/SwitchPreference;

.field private mTip:Lcom/sonymobile/settings/notification/TipPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "media_vibrate_switch"

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "media_vibrate_switch"

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/notification/MediaVibrationPreferenceController;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sonymobile/settings/notification/MediaVibrationPreferenceController;->mSwitch:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method private hasMediaVibration()Z
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p0, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasAmplitudeControl()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "media_vibrate_switch"

    .line 57
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/sonymobile/settings/notification/MediaVibrationPreferenceController;->mSwitch:Landroidx/preference/SwitchPreference;

    const-string v0, "media_vibrate_tip"

    .line 58
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/notification/TipPreference;

    iput-object v1, p0, Lcom/sonymobile/settings/notification/MediaVibrationPreferenceController;->mTip:Lcom/sonymobile/settings/notification/TipPreference;

    .line 59
    iget-object v1, p0, Lcom/sonymobile/settings/notification/MediaVibrationPreferenceController;->mTip:Lcom/sonymobile/settings/notification/TipPreference;

    new-instance v2, Lcom/sonymobile/settings/notification/-$$Lambda$MediaVibrationPreferenceController$gDuCSKtcsArGT9YGh7LJ7FVaVWg;

    invoke-direct {v2, p0}, Lcom/sonymobile/settings/notification/-$$Lambda$MediaVibrationPreferenceController$gDuCSKtcsArGT9YGh7LJ7FVaVWg;-><init>(Lcom/sonymobile/settings/notification/MediaVibrationPreferenceController;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/notification/TipPreference;->setOnTipClickListener(Lcom/sonymobile/settings/notification/TipPreference$OnTipClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    new-instance p1, Lcom/sonymobile/settings/notification/MediaVibrationPreferenceController$SettingObserver;

    invoke-direct {p1, p0}, Lcom/sonymobile/settings/notification/MediaVibrationPreferenceController$SettingObserver;-><init>(Lcom/sonymobile/settings/notification/MediaVibrationPreferenceController;)V

    iput-object p1, p0, Lcom/sonymobile/settings/notification/MediaVibrationPreferenceController;->mSettingObserver:Lcom/sonymobile/settings/notification/MediaVibrationPreferenceController$SettingObserver;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/sonymobile/settings/notification/MediaVibrationPreferenceController;->hasMediaVibration()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public isChecked()Z
    .locals 2

    .line 112
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "somc.media_vibration"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSliceable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$displayPreference$0$MediaVibrationPreferenceController(Lcom/sonymobile/settings/notification/TipPreference;)V
    .locals 2

    .line 61
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.sonymobile.assist.action.LAUNCH_ASSIST"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.sonymobile.assist.extra.CONTEXT_CATEGORY"

    .line 62
    sget-object v1, Lcom/sonymobile/assist/api/AssistActivityContract$ContextCategory;->CATEGORY_MEDIA_VIBRATION:Lcom/sonymobile/assist/api/AssistActivityContract$ContextCategory;

    iget-object v1, v1, Lcom/sonymobile/assist/api/AssistActivityContract$ContextCategory;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 66
    sget-object p1, Lcom/sonymobile/settings/notification/MediaVibrationPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "Unable to start activity"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/sonymobile/settings/notification/MediaVibrationPreferenceController;->mSettingObserver:Lcom/sonymobile/settings/notification/MediaVibrationPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 106
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sonymobile/settings/notification/MediaVibrationPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/sonymobile/settings/notification/MediaVibrationPreferenceController;->mSettingObserver:Lcom/sonymobile/settings/notification/MediaVibrationPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 99
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/sonymobile/settings/notification/MediaVibrationPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 118
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "somc.media_vibration"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isSupported()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "media_vibrate_tip"

    .line 81
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "media_vibrate_switch"

    .line 82
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
