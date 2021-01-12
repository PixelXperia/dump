.class Lcom/sonymobile/settings/preference/util/TwoStateUtil$1;
.super Landroid/content/BroadcastReceiver;
.source "TwoStateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/preference/util/TwoStateUtil;->createOrderedBroadcastReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/preference/util/TwoStateUtil;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil$1;->this$0:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 p1, 0x1

    .line 137
    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object p2

    .line 138
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil$1;->this$0:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    .line 139
    invoke-static {v0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->access$000(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil$1;->this$0:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-static {v1}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->access$100(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)Landroidx/preference/TwoStatePreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    xor-int/2addr p1, v1

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 140
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil$1;->this$0:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-static {v0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->access$100(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)Landroidx/preference/TwoStatePreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string p1, "com.sonymobile.settings.preference.SUMMARY"

    .line 141
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object p0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil$1;->this$0:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-static {p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->access$100(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)Landroidx/preference/TwoStatePreference;

    move-result-object p0

    .line 143
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
