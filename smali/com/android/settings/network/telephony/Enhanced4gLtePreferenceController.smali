.class public Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "Enhanced4gLtePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$On4gLteUpdateListener;,
        Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;
    }
.end annotation


# instance fields
.field private final VARIANT_TITLE_4G_CALLING:I

.field private final VARIANT_TITLE_ADVANCED_CALL:I

.field private final VARIANT_TITLE_VOLTE:I

.field private final m4gLteListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$On4gLteUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCarrierConfig:Landroid/os/PersistableBundle;

.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field mImsManager:Lcom/android/ims/ImsManager;

.field private mPhoneStateListener:Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;

.field protected mPreference:Landroidx/preference/Preference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mVariantSumaries:[Ljava/lang/CharSequence;

.field private final mVariantTitles:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 59
    iput p2, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->VARIANT_TITLE_VOLTE:I

    const/4 p2, 0x1

    .line 60
    iput p2, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->VARIANT_TITLE_ADVANCED_CALL:I

    const/4 p2, 0x2

    .line 61
    iput p2, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->VARIANT_TITLE_4G_CALLING:I

    .line 65
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 66
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->m4gLteListeners:Ljava/util/List;

    .line 67
    new-instance p2, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;-><init>(Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f03007d

    .line 69
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mVariantTitles:[Ljava/lang/CharSequence;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f03007c

    .line 71
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mVariantSumaries:[Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method


# virtual methods
.method public addListener(Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$On4gLteUpdateListener;)Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->m4gLteListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    .line 77
    iget-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    .line 80
    invoke-virtual {p1}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    .line 81
    invoke-static {p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isImsServiceStateReady(Lcom/android/ims/ImsManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "hide_enhanced_4g_lte_bool"

    .line 82
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->is4gLtePrefEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :cond_2
    :goto_1
    return v1
.end method

.method public init(I)Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;
    .locals 1

    .line 139
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 140
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 141
    iget-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 142
    iget p1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    :cond_0
    return-object p0
.end method

.method protected is4gLtePrefEnabled()Z
    .locals 2

    .line 155
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 156
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "editable_enhanced_4g_lte_bool"

    .line 159
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, p0}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;->register(I)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;->unregister()V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Z)V

    .line 127
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->m4gLteListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$On4gLteUpdateListener;

    .line 128
    invoke-interface {p1}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$On4gLteUpdateListener;->on4gLteUpdated()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 107
    check-cast p1, Landroidx/preference/SwitchPreference;

    .line 108
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "show_4g_for_lte_data_icon_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "enhanced_4g_lte_title_variant_int"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 117
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mVariantTitles:[Ljava/lang/CharSequence;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mVariantSumaries:[Ljava/lang/CharSequence;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->is4gLtePrefEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    .line 121
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    move v2, v3

    .line 120
    :cond_2
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
