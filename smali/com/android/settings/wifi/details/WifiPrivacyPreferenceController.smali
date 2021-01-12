.class public Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WifiPrivacyPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;


# static fields
.field private static final KEY_WIFI_PRIVACY:Ljava/lang/String; = "privacy"

.field private static final PREF_RANDOMIZATION_NONE:I = 0x1

.field private static final PREF_RANDOMIZATION_PERSISTENT:I


# instance fields
.field private mIsEphemeral:Z

.field private mIsPasspoint:Z

.field private mPreference:Landroidx/preference/Preference;

.field private mShouldMacRandomizationSettingDisabled:Z

.field private mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "privacy"

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsEphemeral:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsPasspoint:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mShouldMacRandomizationSettingDisabled:Z

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    const-string v0, "wifi"

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public static translateMacRandomizedValueToPrefValue(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static translatePrefValueToMacRandomizedValue(I)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateSummary(Landroidx/preference/DropDownPreference;I)V
    .locals 0

    .line 180
    invoke-static {p2}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->translateMacRandomizedValueToPrefValue(I)I

    move-result p0

    .line 181
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p2

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 102
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x111010a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method getRandomizationValue()I
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_0

    .line 148
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 131
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 132
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 136
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 141
    :cond_0
    check-cast p1, Landroidx/preference/DropDownPreference;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 2

    .line 186
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    if-eq v1, v0, :cond_1

    .line 193
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 194
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public setIsEphemeral(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsEphemeral:Z

    return-void
.end method

.method public setIsPasspoint(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsPasspoint:Z

    return-void
.end method

.method public setWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 6

    const-string v0, "\""

    const-string v1, "com.sonymobile.wifi"

    .line 65
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 68
    :try_start_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "config_disable_mac_randomization_setting_for_target_ssid"

    const-string v5, "bool"

    invoke-virtual {v3, v4, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    .line 74
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v3, "config_target_ssid_disabling_mac_randomization_setting"

    const-string v4, "string"

    invoke-virtual {p1, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    .line 79
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mShouldMacRandomizationSettingDisabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 115
    move-object v0, p1

    check-cast v0, Landroidx/preference/DropDownPreference;

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->getRandomizationValue()I

    move-result v1

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 121
    iget-boolean v1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsEphemeral:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsPasspoint:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 122
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    const v1, 0x7f1215e4    # 1.9418095E38f

    .line 123
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 125
    :cond_1
    iget-boolean p0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mShouldMacRandomizationSettingDisabled:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method
