.class public Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "ZenAccessDetails.java"

# interfaces
.implements Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method private isManageNotificationsPermissionGranted(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    const-string p1, "android.permission.MANAGE_NOTIFICATIONS"

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 113
    invoke-static {p1, p0, v1, v2}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    move v0, v2

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method protected createDialog(II)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x69c

    return p0
.end method

.method public synthetic lambda$updatePreference$0$ZenAccessDetails(Ljava/lang/CharSequence;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 90
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string p3, "dialog"

    if-eqz p2, :cond_0

    .line 92
    new-instance p2, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;

    invoke-direct {p2}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;-><init>()V

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 93
    invoke-virtual {p2, v0, p1}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;->setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;

    move-result-object p1

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, p3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_0
    new-instance p2, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;

    invoke-direct {p2}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;-><init>()V

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 97
    invoke-virtual {p2, v0, p1}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;

    move-result-object p1

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, p3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1500e4

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;-><init>(Landroid/content/Context;Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin$Listener;)V

    .line 52
    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onZenAccessPolicyChanged()V
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->refreshUi()Z

    return-void
.end method

.method protected refreshUi()Z
    .locals 4

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-static {v1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->isSupported(Landroid/app/ActivityManager;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 64
    :cond_0
    invoke-static {}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->getPackagesRequestingNotificationPolicyAccess()Ljava/util/Set;

    move-result-object v1

    .line 65
    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    const-string v1, "zen_access_switch"

    .line 68
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->updatePreference(Landroid/content/Context;Landroidx/preference/SwitchPreference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updatePreference(Landroid/content/Context;Landroidx/preference/SwitchPreference;)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 79
    invoke-static {p1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->getAutoApprovedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->hasAccess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 81
    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->isManageNotificationsPermissionGranted(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance p1, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ZenAccessDetails$rKJyvX6IObyOz60FeyFja12ZgrM;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ZenAccessDetails$rKJyvX6IObyOz60FeyFja12ZgrM;-><init>(Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 84
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    const p1, 0x7f1216b4

    .line 85
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
