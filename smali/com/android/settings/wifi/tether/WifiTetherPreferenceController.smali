.class public Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiTetherPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field mPreference:Landroidx/preference/Preference;

.field private mSoftApState:I

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiRegexs:[Ljava/lang/String;

.field mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const/4 v0, 0x1

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Z)V
    .locals 1

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const-string v0, "connectivity"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v0, "wifi"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 68
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiRegexs:[Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->initWifiTetherSoftApManager()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mSoftApState:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mSoftApState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x1040935

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 173
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    if-nez p1, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 173
    :goto_0
    invoke-virtual {v3, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const p1, 0x7f12164b

    .line 172
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "wifi_tether"

    .line 88
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 89
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez p0, :cond_0

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "wifi_tether"

    return-object p0
.end method

.method handleWifiApStateChanged(II)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 161
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    const p1, 0x7f1215e9

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 150
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 151
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 147
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    const p1, 0x7f12164f

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    const p1, 0x7f121589

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 154
    :pswitch_3
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    const p1, 0x7f121650

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    const p1, 0x7f12156c

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method initWifiTetherSoftApManager()V
    .locals 3

    .line 122
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v2, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)V

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;-><init>(Landroid/net/wifi/WifiManager;Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiRegexs:[Ljava/lang/String;

    if-eqz p0, :cond_0

    array-length p0, p0

    if-eqz p0, :cond_0

    .line 82
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onStart()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 103
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->registerSoftApCallback()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 112
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    if-eqz p0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->unRegisterSoftApCallback()V

    :cond_0
    return-void
.end method
