.class public Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MyDeviceInfoFragment.java"

# interfaces
.implements Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBuildNumberPreferenceController:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 183
    new-instance v0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment$1;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    .line 61
    invoke-static {p0, p1, p2}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    new-instance v1, Lcom/sonymobile/settings/deviceinfo/BrandAlphaPreferenceController;

    invoke-direct {v1, p0}, Lcom/sonymobile/settings/deviceinfo/BrandAlphaPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Lcom/android/settings/deviceinfo/IpAddressPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/deviceinfo/IpAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v1, Lcom/android/settings/deviceinfo/BluetoothAddressPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/deviceinfo/BluetoothAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v1, Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, Lcom/android/settings/deviceinfo/SafetyInfoPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/SafetyInfoPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v1, Lcom/android/settings/deviceinfo/ManualPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/ManualPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v1, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;-><init>(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance p1, Lcom/android/settings/deviceinfo/FccEquipmentIdPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/FccEquipmentIdPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance p1, Lcom/android/settings/deviceinfo/UptimePreferenceController;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/deviceinfo/UptimePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance p1, Lcom/android/settings/deviceinfo/SoftwareVersionPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/SoftwareVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance p1, Lcom/android/settings/deviceinfo/StorageSizePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/StorageSizePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private initHeader()V
    .locals 5

    .line 139
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "my_device_info_header"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 142
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    if-nez v1, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a018d

    .line 146
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 150
    invoke-static {v1, p0, v0}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 151
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    const/4 v3, 0x0

    .line 152
    invoke-virtual {v0, v3, v3}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    const-string v4, "icon_id"

    .line 156
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 161
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 160
    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getExistingUser(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 162
    iget-object v4, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v2, v3}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 163
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    :cond_1
    const/4 p0, 0x1

    .line 167
    invoke-virtual {v0, v1, p0}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    const p0, 0x7f12087c

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "MyDeviceInfoFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x28

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f15006f

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->mBuildNumberPreferenceController:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 82
    const-class p1, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->setHost(Landroidx/fragment/app/Fragment;)V

    .line 83
    const-class p1, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->setHost(Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;)V

    .line 84
    const-class p1, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->mBuildNumberPreferenceController:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    .line 85
    iget-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->mBuildNumberPreferenceController:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->setHost(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    return-void
.end method

.method public onSetDeviceNameConfirm(Z)V
    .locals 1

    .line 176
    const-class v0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->updateDeviceName(Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 90
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 91
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->initHeader()V

    return-void
.end method

.method public showDeviceNameWarningDialog(Ljava/lang/String;)V
    .locals 0

    .line 172
    invoke-static {p0}, Lcom/android/settings/deviceinfo/aboutphone/DeviceNameWarningDialog;->show(Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;)V

    return-void
.end method
