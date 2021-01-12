.class Lcom/sonymobile/settings/phone/DataRoamingSettings$1;
.super Ljava/lang/Object;
.source "DataRoamingSettings.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/phone/DataRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 2

    const/4 p1, 0x1

    if-eqz p2, :cond_4

    .line 83
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$000(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$100(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    .line 88
    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$200(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$300(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result v0

    xor-int/2addr v0, p1

    :cond_0
    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$400(Lcom/sonymobile/settings/phone/DataRoamingSettings;Z)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$100(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$500(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$200(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I

    move-result v0

    const v1, 0x16204a98

    if-ne v0, p1, :cond_3

    .line 96
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$600(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V

    goto :goto_0

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$700(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V

    goto :goto_0

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$400(Lcom/sonymobile/settings/phone/DataRoamingSettings;Z)V

    .line 106
    :goto_0
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$800(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object p0

    xor-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabelAndBackground(Z)V

    return p1
.end method
