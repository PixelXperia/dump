.class public Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ConnectedDeviceGroupController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/connecteddevice/DevicePreferenceCallback;


# static fields
.field private static final KEY:Ljava/lang/String; = "connected_device_list"


# instance fields
.field private mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

.field private mConnectedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

.field private mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

.field mPreferenceGroup:Landroidx/preference/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "connected_device_list"

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "connected_device_list"

    .line 77
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 78
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->setPrefContext(Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    .line 84
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    invoke-virtual {v0, p1}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->initUsbPreference(Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    invoke-interface {v0, p1}, Lcom/android/settings/connecteddevice/dock/DockUpdater;->setPreferenceContext(Landroid/content/Context;)V

    .line 86
    iget-object p0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    invoke-interface {p0}, Lcom/android/settings/connecteddevice/dock/DockUpdater;->forceUpdate()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.hardware.usb.accessory"

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.hardware.usb.host"

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "connected_device_list"

    return-object p0
.end method

.method public init(Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;Lcom/android/settings/connecteddevice/dock/DockUpdater;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    .line 128
    iput-object p2, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    .line 129
    iput-object p3, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    return-void
.end method

.method public init(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 4

    .line 133
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getDockUpdaterFeatureProvider()Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    move-result-object v1

    .line 137
    invoke-interface {v1, v0, p0}, Lcom/android/settings/overlay/DockUpdaterFeatureProvider;->getConnectedDockUpdater(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)Lcom/android/settings/connecteddevice/dock/DockUpdater;

    move-result-object v1

    .line 138
    new-instance v2, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;

    invoke-direct {v2, v0, p1, p0}, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V

    new-instance v3, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    invoke-direct {v3, v0, p1, p0}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->init(Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;Lcom/android/settings/connecteddevice/dock/DockUpdater;)V

    return-void
.end method

.method public onDeviceAdded(Landroidx/preference/Preference;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onDeviceRemoved(Landroidx/preference/Preference;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 117
    iget-object p1, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 118
    iget-object p0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->registerCallback()V

    .line 62
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->registerCallback()V

    .line 63
    iget-object p0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    invoke-interface {p0}, Lcom/android/settings/connecteddevice/dock/DockUpdater;->registerCallback()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->unregisterCallback()V

    .line 69
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->unregisterCallback()V

    .line 70
    iget-object p0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    invoke-interface {p0}, Lcom/android/settings/connecteddevice/dock/DockUpdater;->unregisterCallback()V

    return-void
.end method
