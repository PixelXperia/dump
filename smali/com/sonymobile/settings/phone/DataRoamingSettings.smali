.class public Lcom/sonymobile/settings/phone/DataRoamingSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DataRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;,
        Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;,
        Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingWarningDialogFragment;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mDisableChargePopups:Z

.field private mEnableNationalRoamingUi:Z

.field private mEnableNationalRoamingWarning:Z

.field private final mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

.field private final mNationalDataRoamingListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mPreferenceNationalDataRoaming:Landroidx/preference/ListPreference;

.field private mSettingsHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

.field private mSubId:I

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private final mSwitchListener:Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "ro.debuggable"

    .line 48
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    sput-boolean v0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    .line 65
    iput-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingWarning:Z

    .line 67
    iput-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mDisableChargePopups:Z

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 70
    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceNationalDataRoaming:Landroidx/preference/ListPreference;

    .line 77
    new-instance v1, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V

    iput-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchListener:Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;

    .line 115
    new-instance v1, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V

    iput-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mNationalDataRoamingListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 152
    new-instance v1, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;Lcom/sonymobile/settings/phone/DataRoamingSettings$1;)V

    iput-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    const v0, 0x7fffffff

    .line 154
    iput v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSubId:I

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mDisableChargePopups:Z

    return p0
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)I
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setNationalDatatRoamingPreferenceSetting(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getNationalRoamingUiValue()I

    move-result p0

    return p0
.end method

.method static synthetic access$2000()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->DBG:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/sonymobile/settings/phone/DataRoamingSettings;Ljava/lang/String;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateUi(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingWarning:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonymobile/settings/phone/DataRoamingSettings;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setRoamingSetting(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->showDataRoamingWarning()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->showNationalDataRoamingWarning(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->showInternationalDataRoamingWarning(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setNationalDataRoamingSetting(I)V

    return-void
.end method

.method private createNationalDataRoamingUi()V
    .locals 2

    .line 361
    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    const-string v1, "somc_phone_data_roaming_mode_key"

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceNationalDataRoaming:Landroidx/preference/ListPreference;

    .line 364
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceNationalDataRoaming:Landroidx/preference/ListPreference;

    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mNationalDataRoamingListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 365
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method private createUi()V
    .locals 2

    .line 281
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f120e7e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 283
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110130

    .line 285
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    const v1, 0x7f05006c

    .line 286
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingWarning:Z

    const-string v0, "carrier_config"

    .line 288
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 290
    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 292
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    :cond_0
    const-string v1, "disable_charge_indication_bool"

    .line 294
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mDisableChargePopups:Z

    .line 303
    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->createNationalDataRoamingUi()V

    return-void
.end method

.method private doShowDataRoamingWarning(III)V
    .locals 0

    .line 433
    invoke-static {p2, p3}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingWarningDialogFragment;->newInstance(II)Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingWarningDialogFragment;

    move-result-object p2

    .line 434
    invoke-virtual {p2, p0, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 435
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private getNationalDataRoamingPreferenceSetting()I
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result p0

    const-string v1, "national_roaming_preference"

    const/4 v2, 0x2

    invoke-static {v0, v1, p0, v2}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->access$1300(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private getNationalDataRoamingSetting()I
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result p0

    const-string v1, "national_roaming"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->access$1300(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private getNationalRoamingUiValue()I
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceNationalDataRoaming:Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getRoamingSetting()Z
    .locals 1

    .line 336
    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    if-eqz v0, :cond_1

    .line 337
    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getNationalDataRoamingSetting()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 339
    :cond_1
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSettingsHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->getDataRoaming()Z

    move-result p0

    return p0
.end method

.method private final getSubId()I
    .locals 2

    .line 177
    iget v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSubId:I

    invoke-static {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->isValidSubId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSubId:I

    return p0

    .line 180
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 181
    invoke-static {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->isValidSubId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    iput v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSubId:I

    .line 183
    sget-boolean v0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSubId: using getDefaultDataSubscriptionId, mSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataRoamingSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    iget p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSubId:I

    return p0
.end method

.method private static final isValidSubId(I)Z
    .locals 1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    .line 208
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setNationalDataRoamingSetting(I)V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result p0

    const-string v1, "national_roaming"

    invoke-static {v0, v1, p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->access$1400(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;II)I

    return-void
.end method

.method private setNationalDatatRoamingPreferenceSetting(I)I
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result p0

    const-string v1, "national_roaming_preference"

    invoke-static {v0, v1, p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->access$1400(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private setRoamingSetting(Z)V
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getNationalRoamingUiValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 352
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setNationalDataRoamingSetting(I)V

    goto :goto_1

    .line 354
    :cond_1
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSettingsHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->setDataRoaming(Z)V

    :goto_1
    return-void
.end method

.method private showDataRoamingWarning()V
    .locals 3

    const v0, 0x16204a98

    const v1, 0x7f121108

    const v2, 0x7f120e87

    .line 408
    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->doShowDataRoamingWarning(III)V

    return-void
.end method

.method private showInternationalDataRoamingWarning(I)V
    .locals 2

    const v0, 0x1040014

    const v1, 0x7f121103

    .line 424
    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->doShowDataRoamingWarning(III)V

    return-void
.end method

.method private showNationalDataRoamingWarning(I)V
    .locals 2

    const v0, 0x1040014

    const v1, 0x7f121104

    .line 416
    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->doShowDataRoamingWarning(III)V

    return-void
.end method

.method private updateNationalRoamingUi(I)V
    .locals 2

    .line 372
    sget-boolean v0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNationalRoamingUi: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataRoamingSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceNationalDataRoaming:Landroidx/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private updateRoamingUi(I)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 330
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateRoamingUi(Z)V

    return-void
.end method

.method private updateRoamingUi(Z)V
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    return-void
.end method

.method private updateUi()V
    .locals 1

    .line 307
    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getRoamingSetting()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateRoamingUi(Z)V

    .line 308
    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    if-eqz v0, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getNationalDataRoamingPreferenceSetting()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateNationalRoamingUi(I)V

    :cond_0
    return-void
.end method

.method private updateUi(Ljava/lang/String;I)V
    .locals 2

    .line 314
    sget-boolean v0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUi: key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataRoamingSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    if-eqz v0, :cond_1

    const-string v0, "national_roaming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    invoke-direct {p0, p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateRoamingUi(I)V

    goto :goto_0

    .line 317
    :cond_1
    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    if-eqz v0, :cond_2

    const-string v0, "national_roaming_preference"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    invoke-direct {p0, p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateNationalRoamingUi(I)V

    goto :goto_0

    :cond_2
    const-string v0, "data_roaming"

    .line 319
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 320
    invoke-direct {p0, p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateRoamingUi(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const p0, 0x30d41

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 170
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 172
    iget-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setSubIdFromExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    const-string p0, "DataRoamingSettings"

    const-string p1, "onActivityResult: unknown requestCode"

    .line 275
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x2

    .line 271
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setNationalDataRoamingSetting(I)V

    goto :goto_0

    .line 267
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setNationalDataRoamingSetting(I)V

    goto :goto_0

    .line 263
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setRoamingSetting(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x16204a98
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 215
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1500b4

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 217
    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->createUi()V

    .line 218
    iget-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    iget-object p1, p1, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;

    invoke-virtual {p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->register()V

    .line 219
    iget-boolean p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    if-nez p1, :cond_0

    .line 220
    new-instance p1, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;Lcom/sonymobile/settings/phone/DataRoamingSettings$1;)V

    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSettingsHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    .line 221
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSettingsHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->register()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    iget-object v0, v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;

    invoke-virtual {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->unRegister()V

    .line 230
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSettingsHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;

    invoke-virtual {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->unRegister()V

    .line 233
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 253
    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 240
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 243
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchListener:Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 244
    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateUi()V

    return-void
.end method

.method setSubIdFromExtras(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "subscription"

    .line 191
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7fffffff

    .line 192
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 194
    invoke-static {p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->isValidSubId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iput p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSubId:I

    goto :goto_0

    :cond_0
    const-string p0, "DataRoamingSettings"

    const-string p1, "setSubIdFromExtras: invalid subId in extras."

    .line 197
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
