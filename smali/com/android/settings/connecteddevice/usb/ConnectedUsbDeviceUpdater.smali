.class public Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;
.super Ljava/lang/Object;
.source "ConnectedUsbDeviceUpdater.java"


# instance fields
.field private mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

.field private mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field private mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

.field mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

.field mUsbPreference:Landroidx/preference/Preference;

.field mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V
    .locals 1

    .line 59
    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-direct {v0, p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$ConnectedUsbDeviceUpdater$8_8ZhYJMgn-zGVqi-7esENaXwOM;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/-$$Lambda$ConnectedUsbDeviceUpdater$8_8ZhYJMgn-zGVqi-7esENaXwOM;-><init>(Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

    .line 65
    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 66
    iput-object p3, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    .line 67
    iput-object p4, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    .line 68
    new-instance p2, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    iget-object p3, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

    iget-object p4, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-direct {p2, p1, p3, p4}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    return-void
.end method

.method private forceUpdate()V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->register()V

    return-void
.end method

.method public static getSummary(JI)I
    .locals 10

    const/4 v0, 0x1

    const-wide/16 v1, 0x8

    const-wide/16 v3, 0x10

    const-wide/16 v5, 0x20

    const-wide/16 v7, 0x4

    if-eq p2, v0, :cond_5

    const/4 v0, 0x2

    const v9, 0x7f1213a0

    if-eq p2, v0, :cond_0

    return v9

    :cond_0
    cmp-long p2, p0, v7

    if-nez p2, :cond_1

    const p0, 0x7f1213a1

    return p0

    :cond_1
    cmp-long p2, p0, v5

    if-nez p2, :cond_2

    const p0, 0x7f1213a6

    return p0

    :cond_2
    cmp-long p2, p0, v3

    if-nez p2, :cond_3

    const p0, 0x7f1213a3

    return p0

    :cond_3
    cmp-long p0, p0, v1

    if-nez p0, :cond_4

    const p0, 0x7f12139e

    return p0

    :cond_4
    return v9

    :cond_5
    cmp-long p2, p0, v7

    if-nez p2, :cond_6

    const p0, 0x7f1213a2

    return p0

    :cond_6
    cmp-long p2, p0, v5

    if-nez p2, :cond_7

    const p0, 0x7f1213a7

    return p0

    :cond_7
    cmp-long p2, p0, v3

    if-nez p2, :cond_8

    const p0, 0x7f1213a4

    return p0

    :cond_8
    cmp-long p0, p0, v1

    if-nez p0, :cond_9

    const p0, 0x7f12139f

    return p0

    :cond_9
    const p0, 0x7f1213a5

    return p0
.end method


# virtual methods
.method public initUsbPreference(Landroid/content/Context;)V
    .locals 2

    .line 82
    new-instance v0, Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Landroidx/preference/Preference;

    .line 83
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Landroidx/preference/Preference;

    const v0, 0x7f121388

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 84
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Landroidx/preference/Preference;

    const v0, 0x7f08027a

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIcon(I)V

    .line 85
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Landroidx/preference/Preference;

    new-instance v0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$ConnectedUsbDeviceUpdater$-GzbX4qf24akYMeF2cR6p1BWlpo;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/-$$Lambda$ConnectedUsbDeviceUpdater$-GzbX4qf24akYMeF2cR6p1BWlpo;-><init>(Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->forceUpdate()V

    return-void
.end method

.method public synthetic lambda$initUsbPreference$1$ConnectedUsbDeviceUpdater(Landroidx/preference/Preference;)Z
    .locals 1

    .line 87
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    .line 88
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const v0, 0x7f121389

    .line 89
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 90
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$new$0$ConnectedUsbDeviceUpdater(ZJII)V
    .locals 1

    if-eqz p1, :cond_1

    .line 49
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Landroidx/preference/Preference;

    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    :goto_0
    invoke-static {p2, p3, p4}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->getSummary(JI)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 51
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Landroidx/preference/Preference;

    invoke-interface {p1, p0}, Lcom/android/settings/connecteddevice/DevicePreferenceCallback;->onDeviceAdded(Landroidx/preference/Preference;)V

    goto :goto_1

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Landroidx/preference/Preference;

    invoke-interface {p1, p0}, Lcom/android/settings/connecteddevice/DevicePreferenceCallback;->onDeviceRemoved(Landroidx/preference/Preference;)V

    :goto_1
    return-void
.end method

.method public registerCallback()V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->register()V

    return-void
.end method

.method public unregisterCallback()V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->unregister()V

    return-void
.end method
