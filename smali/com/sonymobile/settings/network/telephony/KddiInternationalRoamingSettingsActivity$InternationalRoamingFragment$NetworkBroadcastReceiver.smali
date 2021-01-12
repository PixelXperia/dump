.class Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment$NetworkBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KddiInternationalRoamingSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment;


# direct methods
.method private constructor <init>(Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment$NetworkBroadcastReceiver;->this$0:Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment;Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$1;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment$NetworkBroadcastReceiver;-><init>(Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.AIRPLANE_MODE"

    .line 145
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment$NetworkBroadcastReceiver;->this$0:Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment;

    .line 147
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 146
    invoke-static {p1}, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity;->access$300(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 148
    iget-object p0, p0, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment$NetworkBroadcastReceiver;->this$0:Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingSettingsActivity$InternationalRoamingFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
