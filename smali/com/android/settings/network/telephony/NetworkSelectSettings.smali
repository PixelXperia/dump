.class public Lcom/android/settings/network/telephony/NetworkSelectSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NetworkSelectSettings.java"

# interfaces
.implements Lcom/sonymobile/settings/phone/NetworkSearchWarningDialogFragment$NetworkSearchWarningDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/NetworkSelectSettings$PhoneCallStateListener;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

.field mCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mForbiddenPlmns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHomeAndEquivalentHomePlmns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInScanning:Z

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mMobileDataContentObserver:Landroid/database/ContentObserver;

.field private mMobileDataReceiver:Landroid/content/BroadcastReceiver;

.field private mNeedRestoreDataTraffic:Z

.field private final mNetworkScanExecutor:Ljava/util/concurrent/ExecutorService;

.field private mNetworkScanHelper:Lcom/android/settings/network/telephony/NetworkScanHelper;

.field private final mPhoneStateListener:Lcom/android/settings/network/telephony/NetworkSelectSettings$PhoneCallStateListener;

.field mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mProgressHeader:Landroid/view/View;

.field mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

.field private mShow4GForLTE:Z

.field private mShowDuplicatedNetworks:Z

.field private mShowSpnForHomeNetwork:Z

.field private mStatusMessagePreference:Landroidx/preference/Preference;

.field private mSubId:I

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUseNewApi:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, -0x1

    .line 117
    iput v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShow4GForLTE:Z

    const/4 v1, 0x1

    .line 123
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanExecutor:Ljava/util/concurrent/ExecutorService;

    .line 127
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShowDuplicatedNetworks:Z

    .line 129
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShowSpnForHomeNetwork:Z

    .line 133
    new-instance v0, Lcom/android/settings/network/telephony/NetworkSelectSettings$PhoneCallStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/NetworkSelectSettings$PhoneCallStateListener;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;Lcom/android/settings/network/telephony/NetworkSelectSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPhoneStateListener:Lcom/android/settings/network/telephony/NetworkSelectSettings$PhoneCallStateListener;

    .line 332
    new-instance v0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHandler:Landroid/os/Handler;

    .line 422
    new-instance v0, Lcom/android/settings/network/telephony/NetworkSelectSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings$2;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Z
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->isPhoneStateRingingOrOffhook()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/settings/network/telephony/NetworkSelectSettings;)I
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getNetworkSearchWarningDialogType()I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/android/settings/network/telephony/NetworkSelectSettings;)I
    .locals 0

    .line 82
    iget p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNeedRestoreDataTraffic:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/android/settings/network/telephony/NetworkSelectSettings;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNeedRestoreDataTraffic:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->startNetworkQuery()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Z
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->showNetworkSearchWarningDialogIfNeeded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Landroid/os/Handler;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Ljava/lang/String;
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getMobileDataContentUri()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mInScanning:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->finishActivity()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Landroid/content/Context;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Landroid/content/Context;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/network/telephony/NetworkSelectSettings;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->aggregateCellInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/network/telephony/NetworkSelectSettings;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->addMessagePreference(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->stopNetworkQuery()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->restoreDataTrafficIfNeeded()V

    return-void
.end method

.method private addConnectedNetworkOperatorPreference(Landroid/telephony/CellInfo;)V
    .locals 9

    .line 535
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 536
    new-instance v0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 537
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mForbiddenPlmns:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShow4GForLTE:Z

    iget-boolean v6, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShowDuplicatedNetworks:Z

    iget-object v7, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHomeAndEquivalentHomePlmns:Ljava/util/List;

    .line 538
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getNetworkDisplayedTitle(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;-><init>(Landroid/telephony/CellInfo;Landroid/content/Context;Ljava/util/List;ZZLjava/util/List;Ljava/lang/String;)V

    const p1, 0x7f120baa

    .line 539
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 540
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 541
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private addMessagePreference(I)V
    .locals 2

    const/4 v0, 0x0

    .line 551
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 552
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mStatusMessagePreference:Landroidx/preference/Preference;

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 553
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 554
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 555
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mStatusMessagePreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private aggregateCellInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 565
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShowDuplicatedNetworks:Z

    if-eqz p0, :cond_0

    return-object p1

    .line 569
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 570
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 571
    invoke-static {v0}, Lcom/android/settings/network/telephony/CellInfoUtil;->getOperatorInfoFromCellInfo(Landroid/telephony/CellInfo;)Lcom/android/internal/telephony/OperatorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 572
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 575
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    invoke-virtual {v2}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_1

    .line 576
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    invoke-virtual {v2}, Landroid/telephony/CellInfo;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result v2

    .line 577
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result v3

    if-le v2, v3, :cond_3

    goto :goto_0

    .line 582
    :cond_3
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 573
    :cond_4
    :goto_1
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 585
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method private finishActivity()V
    .locals 1

    .line 605
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private forceUpdateConnectedPreferenceCategory()V
    .locals 11

    .line 481
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 483
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, 0x1

    .line 485
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoListForTransportType(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 487
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NetworkRegistrationInfo;

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    .line 493
    invoke-static {v0}, Lcom/android/settings/network/telephony/CellInfoUtil;->wrapCellInfoWithCellIdentity(Landroid/telephony/CellIdentity;)Landroid/telephony/CellInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 495
    new-instance v0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mForbiddenPlmns:Ljava/util/List;

    iget-boolean v7, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShow4GForLTE:Z

    iget-boolean v8, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShowDuplicatedNetworks:Z

    iget-object v9, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHomeAndEquivalentHomePlmns:Ljava/util/List;

    .line 498
    invoke-direct {p0, v4}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getNetworkDisplayedTitle(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;-><init>(Landroid/telephony/CellInfo;Landroid/content/Context;Ljava/util/List;ZZLjava/util/List;Ljava/lang/String;)V

    .line 499
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f120baa

    .line 500
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 v1, 0x4

    .line 503
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->setIcon(I)V

    .line 504
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 507
    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 489
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 511
    :cond_3
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    return-void
.end method

.method private getMobileDataContentUri()Ljava/lang/String;
    .locals 3

    .line 704
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const-string v1, "mobile_data"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 708
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNetworkDisplayedTitle(Landroid/telephony/CellInfo;)Ljava/lang/String;
    .locals 2

    .line 794
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShowSpnForHomeNetwork:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHomeAndEquivalentHomePlmns:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/settings/network/telephony/CellInfoUtil;->isHome(Landroid/telephony/CellInfo;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object p0

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Should show SPN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") for home network"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkSelectSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 803
    :cond_0
    invoke-static {p1}, Lcom/android/settings/network/telephony/CellInfoUtil;->getNetworkTitle(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNetworkSearchWarningDialogType()I
    .locals 3

    .line 682
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->isDisableDataRequired()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 686
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->isPhoneStateRingingOrOffhook()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 691
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    if-eq v2, v0, :cond_2

    if-ne p0, v0, :cond_3

    :cond_2
    return p0

    :cond_3
    return v1
.end method

.method private isDisableDataRequired()Z
    .locals 2

    .line 666
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iget p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    .line 667
    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_0

    .line 669
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    :cond_0
    const-string v0, "s_disable_data_during_network_scan"

    .line 671
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isPhoneStateRingingOrOffhook()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 632
    :goto_0
    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 633
    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getCallStateForSlot(I)I

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "NetworkSelectSettings"

    const-string v0, "isPhoneStateRingingOrOffhook true: Voice call active on phone"

    .line 634
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private registerDataState()V
    .locals 4

    .line 715
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->unregisterDataState()V

    const-string v0, "NetworkSelectSettings"

    const-string v1, "registerDataState: register"

    .line 717
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    new-instance v0, Lcom/android/settings/network/telephony/NetworkSelectSettings$3;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/NetworkSelectSettings$3;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mMobileDataContentObserver:Landroid/database/ContentObserver;

    .line 736
    new-instance v0, Lcom/android/settings/network/telephony/NetworkSelectSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings$4;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mMobileDataReceiver:Landroid/content/BroadcastReceiver;

    .line 753
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 754
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getMobileDataContentUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mMobileDataContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 753
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 756
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mMobileDataReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private restoreDataTrafficIfNeeded()V
    .locals 4

    .line 777
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNeedRestoreDataTraffic:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 779
    iput-boolean v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNeedRestoreDataTraffic:Z

    const-string v0, "NetworkSelectSettings"

    const-string v2, "restoreDataTrafficIfNeeded: set user data enabled."

    .line 780
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mInScanning:Z

    return-void
.end method

.method private showNetworkSearchWarningDialogIfNeeded()Z
    .locals 4

    .line 645
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getNetworkSearchWarningDialogType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "NetworkSearchWarningDialogFragment"

    .line 650
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    .line 654
    :cond_0
    invoke-static {v0}, Lcom/sonymobile/settings/phone/NetworkSearchWarningDialogFragment;->newInstance(I)Lcom/sonymobile/settings/phone/NetworkSearchWarningDialogFragment;

    move-result-object v0

    .line 655
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v3

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private startNetworkQuery()V
    .locals 3

    .line 612
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mInScanning:Z

    const-string v1, "NetworkSelectSettings"

    if-eqz v0, :cond_0

    const-string p0, "cancel scan request, already in network scanning."

    .line 613
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 616
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mInScanning:Z

    const-string v2, "startNetworkQuery"

    .line 618
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 621
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanHelper:Lcom/android/settings/network/telephony/NetworkScanHelper;

    .line 622
    iget-boolean v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mUseNewApi:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    .line 624
    :cond_1
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFragment;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    .line 621
    invoke-virtual {v1, v0, v2, p0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->startNetworkScan(ILandroid/content/Context;I)V

    return-void
.end method

.method private stopNetworkQuery()V
    .locals 2

    const-string v0, "NetworkSelectSettings"

    const-string v1, "stopNetworkQuery"

    .line 589
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 590
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mInScanning:Z

    .line 591
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->restoreDataTrafficIfNeeded()V

    .line 592
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 593
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanHelper:Lcom/android/settings/network/telephony/NetworkScanHelper;

    if-eqz p0, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->stopNetworkQuery()V

    :cond_0
    return-void
.end method

.method private unregisterDataState()V
    .locals 2

    .line 764
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mMobileDataReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mMobileDataContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    const-string v0, "NetworkSelectSettings"

    const-string v1, "unregisterDataState: unregister"

    .line 765
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mMobileDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 767
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mMobileDataContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 768
    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mMobileDataReceiver:Landroid/content/BroadcastReceiver;

    .line 769
    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mMobileDataContentObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private updateConnectedPreferenceCategory()V
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    .line 523
    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 530
    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->addConnectedNetworkOperatorPreference(Landroid/telephony/CellInfo;)V

    :cond_2
    return-void
.end method

.method private updateHomeAndEquivalentHomePlmns()V
    .locals 4

    .line 250
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 251
    iget v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHomeAndEquivalentHomePlmns:Ljava/util/List;

    .line 253
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHomeAndEquivalentHomePlmns:Ljava/util/List;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getHplmns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 254
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHomeAndEquivalentHomePlmns:Ljava/util/List;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getEhplmns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 256
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHomeAndEquivalentHomePlmns:Ljava/util/List;

    const-string v2, ""

    const/4 v3, 0x0

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 259
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHomeAndEquivalentHomePlmns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 260
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHomeAndEquivalentHomePlmns:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NetworkSelectSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x62d

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f150030

    return p0
.end method

.method public synthetic lambda$onPreferenceTreeClick$0$NetworkSelectSettings(Lcom/android/internal/telephony/OperatorInfo;)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 308
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1, v1}, Landroid/telephony/TelephonyManager;->setNetworkSelectionModeManual(Lcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 310
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 149
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x111007b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mUseNewApi:Z

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "android.provider.extra.SUB_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    const-string p1, "connected_network_operator_preference"

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "network_operators_preference"

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 157
    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mStatusMessagePreference:Landroidx/preference/Preference;

    .line 158
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mStatusMessagePreference:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    const/4 p1, 0x0

    .line 159
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 161
    new-instance p1, Lcom/android/settings/network/telephony/NetworkScanHelper;

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/settings/network/telephony/NetworkScanHelper;-><init>(Landroid/telephony/TelephonyManager;Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanHelper:Lcom/android/settings/network/telephony/NetworkScanHelper;

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iget v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    .line 164
    invoke-virtual {p1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "show_4g_for_lte_data_icon_bool"

    .line 166
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShow4GForLTE:Z

    const-string v0, "s_show_single_operator_row_in_available_network_list_bool"

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShowDuplicatedNetworks:Z

    const-string v0, "s_show_plmn_under_home_in_available_network_list_bool"

    .line 170
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShowSpnForHomeNetwork:Z

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 601
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDialogButtonClicked(II)V
    .locals 1

    .line 217
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->finishActivity()V

    return-void

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 225
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 226
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    const-string p1, "NetworkSelectSettings"

    const-string p2, "Call dialog Ok button clicked, finish activity"

    .line 229
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->finishActivity()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 276
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    .line 277
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->stopNetworkQuery()V

    .line 279
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 280
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 283
    :cond_0
    check-cast p1, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 284
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getCellInfo()Landroid/telephony/CellInfo;

    move-result-object p1

    .line 285
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    const v2, 0x7f120bab

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x4ba

    const/4 v4, 0x0

    new-array v5, v4, [Landroid/util/Pair;

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 293
    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 294
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getNetworkDisplayedTitle(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-virtual {v0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getCellInfo()Landroid/telephony/CellInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getNetworkDisplayedTitle(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f120bb7

    .line 296
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 300
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 302
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 304
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShowDuplicatedNetworks:Z

    xor-int/2addr v0, v1

    .line 305
    invoke-static {p1, v0}, Lcom/android/settings/network/telephony/CellInfoUtil;->getOperatorInfoFromCellInfo(Landroid/telephony/CellInfo;Z)Lcom/android/internal/telephony/OperatorInfo;

    move-result-object p1

    .line 306
    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$cqv1PWTVpc8AGLmf9S5E01O_vwA;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$cqv1PWTVpc8AGLmf9S5E01O_vwA;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;Lcom/android/internal/telephony/OperatorInfo;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    return v1
.end method

.method public onStart()V
    .locals 3

    .line 193
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->updateForbiddenPlmns()V

    .line 196
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->updateHomeAndEquivalentHomePlmns()V

    .line 198
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->isDisableDataRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPhoneStateListener:Lcom/android/settings/network/telephony/NetworkSelectSettings$PhoneCallStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 201
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->registerDataState()V

    .line 203
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->showNetworkSearchWarningDialogIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 206
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 208
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanHelper:Lcom/android/settings/network/telephony/NetworkScanHelper;

    .line 209
    iget-boolean v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mUseNewApi:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    .line 211
    :cond_1
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFragment;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    .line 208
    invoke-virtual {v1, v0, v2, p0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->startNetworkScan(ILandroid/content/Context;I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 266
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 267
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->stopNetworkQuery()V

    .line 268
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->isDisableDataRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->unregisterDataState()V

    .line 270
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPhoneStateListener:Lcom/android/settings/network/telephony/NetworkSelectSettings$PhoneCallStateListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 180
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    const p1, 0x7f0d0148

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a033c

    .line 185
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mProgressHeader:Landroid/view/View;

    const/4 p1, 0x0

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->forceUpdateConnectedPreferenceCategory()V

    return-void
.end method

.method protected setProgressBarVisible(Z)V
    .locals 0

    .line 545
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mProgressHeader:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 546
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method updateAllPreferenceCategory()V
    .locals 11

    .line 451
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->updateConnectedPreferenceCategory()V

    .line 453
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const/4 v0, 0x0

    .line 454
    :goto_0
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 455
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getNetworkDisplayedTitle(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v1

    .line 457
    new-instance v10, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    .line 458
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/telephony/CellInfo;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mForbiddenPlmns:Ljava/util/List;

    iget-boolean v6, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShow4GForLTE:Z

    iget-boolean v7, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShowDuplicatedNetworks:Z

    iget-object v8, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHomeAndEquivalentHomePlmns:Ljava/util/List;

    move-object v2, v10

    move-object v9, v1

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;-><init>(Landroid/telephony/CellInfo;Landroid/content/Context;Ljava/util/List;ZZLjava/util/List;Ljava/lang/String;)V

    .line 460
    invoke-virtual {v10, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v10, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 462
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method updateForbiddenPlmns()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getForbiddenPlmns()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mForbiddenPlmns:Ljava/util/List;

    return-void
.end method
