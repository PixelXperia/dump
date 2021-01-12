.class Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$MyHandler;
.super Landroid/os/Handler;
.source "KddiEnhanced4gLtePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;


# direct methods
.method private constructor <init>(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$MyHandler;->this$0:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$1;)V
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$MyHandler;-><init>(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)V

    return-void
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 1

    .line 193
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 194
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v0, "KddiEnhanced4gLtePreference"

    if-eqz p1, :cond_1

    .line 195
    invoke-static {}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->access$600()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "handleSetPreferredNetworkTypeResponse: Modem Response is Error."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$MyHandler;->this$0:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;

    invoke-static {p1}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->access$200(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->access$300(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;I)V

    .line 198
    iget-object p1, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$MyHandler;->this$0:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;

    invoke-static {p1}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->access$500(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$MyHandler;->this$0:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;

    invoke-static {p0}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->access$400(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "KddiEnhanced4gLtePreferenceController"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 202
    :cond_1
    invoke-static {}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->access$600()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "handleSetPreferredNetworkTypeResponse: fetching current state (by MESSAGE_GET_PREFERRED_NETWORK_TYPE"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 177
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$MyHandler;->this$0:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;

    invoke-static {p1}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->access$200(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->access$300(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;I)V

    .line 184
    iget-object p1, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$MyHandler;->this$0:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;

    invoke-static {p1}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->access$500(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$MyHandler;->this$0:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;

    invoke-static {p0}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->access$400(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "KddiEnhanced4gLtePreferenceController"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    :goto_0
    return-void
.end method
