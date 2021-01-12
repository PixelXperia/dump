.class public Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "KddiInternationalRoamingSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternationalRoamingFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment$NetworkBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final mNetworkReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    new-instance v0, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment$1;

    invoke-direct {v0}, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment$1;-><init>()V

    sput-object v0, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 90
    new-instance v0, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment$NetworkBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment$NetworkBroadcastReceiver;-><init>(Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment;Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$1;)V

    iput-object v0, p0, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "KddiInternationalRoamingSettingsActivity"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7d0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f150062

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 105
    const-class p1, Lcom/sonymobile/settings/network/telephony/KddiRoamingPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/sonymobile/settings/network/telephony/KddiRoamingPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {}, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity;->access$200()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->init(Landroidx/fragment/app/FragmentManager;I)V

    .line 106
    const-class p1, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {}, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity;->access$200()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->init(Landroidx/fragment/app/FragmentManager;I)Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 94
    invoke-static {}, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity;->access$100()Z

    move-result v0

    const-string v1, "KddiInternationalRoamingSettingsActivity"

    if-eqz v0, :cond_0

    const-string v0, "onCreate:+"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    invoke-static {}, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity;->access$100()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "onCreate:-"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
