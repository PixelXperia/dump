.class Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$Lte4gSwitchHandler;
.super Landroid/os/Handler;
.source "KddiEnhanced4gLtePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Lte4gSwitchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;


# direct methods
.method private constructor <init>(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$Lte4gSwitchHandler;->this$0:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$1;)V
    .locals 0

    .line 207
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$Lte4gSwitchHandler;-><init>(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 210
    invoke-static {}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lte4gSwitchHandler handleMessage() msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KddiEnhanced4gLtePreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 213
    :cond_1
    iget-object p1, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$Lte4gSwitchHandler;->this$0:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;

    invoke-static {p1}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->access$700(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$MyHandler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 214
    iget-object p1, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$Lte4gSwitchHandler;->this$0:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;

    invoke-static {p1}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->access$800(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)I

    move-result p1

    .line 215
    iget-object v1, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$Lte4gSwitchHandler;->this$0:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;

    invoke-static {v1}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->access$900(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 217
    invoke-virtual {v1, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 221
    :goto_0
    iget-object p0, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$Lte4gSwitchHandler;->this$0:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;

    invoke-static {p0}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->access$1000(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 223
    :cond_3
    iget-object p0, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$Lte4gSwitchHandler;->this$0:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;

    invoke-static {p0}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->access$1100(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)V

    :goto_1
    return-void
.end method
