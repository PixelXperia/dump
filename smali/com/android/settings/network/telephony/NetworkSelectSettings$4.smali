.class Lcom/android/settings/network/telephony/NetworkSelectSettings$4;
.super Landroid/content/BroadcastReceiver;
.source "NetworkSelectSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/NetworkSelectSettings;->registerDataState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$4;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 739
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "apnType"

    .line 740
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 741
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$4;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iget-object v0, v0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    .line 742
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 743
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$4;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$1200(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "default"

    .line 744
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    const-string p1, "NetworkSelectSettings"

    const-string p2, "onReceive : Data disconnected"

    .line 746
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$4;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$1500(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
